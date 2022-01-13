`timescale 1ns / 1ps

module TopLevel(
    input clock,
    input reset
    );
    
    // initial command
    reg[31:0] InstructionMemory[1023:0];
    initial begin
        // $readmemh("E:\\CPUexperiment\\Experiment7\\test.txt", InstructionMemory);
        // $readmemh("E:\\CPUexperiment\\Experiment6\\code\\Jh0.asm.txt", InstructionMemory);
        // $readmemh("E:\\CPUexperiment\\Experiment7\\code\\08H.asm.txt", InstructionMemory);
        $readmemh("/home/co-eda/Desktop/EXP7/code/88H.asm.txt", InstructionMemory);
    end
    
    reg[31:0] Instruction, address, mem_writeInput, reg_writeInput, jumpInput, alu_A, alu_B;
    reg[5:0] alu_Op;
    reg[4:0] rg1ID, rg2ID, wrgID;
    reg weDM, weRG, jumpEnabled;
    reg[1:0] writeByte, readByte;
    reg isUnsign;
    reg ft_alu_a, ft_alu_b, ft_id_a, ft_id_b;
    reg mdu_start;
    mdu_operation_t mdu_op;
    reg[31:0] mdu_a, mdu_b;
    reg[31:0] tmp_mem_input, tmp_reg_pc, tmp_mem_pc;
    reg[31:0] tmp_id_a, tmp_id_b;
    wire mdu_busy;
    wire[31:0] mdu_c;
    wire ft, cu_isWriteREGfromALU, cu_isWriteREGfromMEM, cu_isWriteREGfromMDU, cu_isMDUop;
    wire[5:0] cu_op, cu_ALUop;
    wire[4:0] cu_rs, cu_rt, cu_rd;
    wire[15:0] cu_imm;
    wire[25:0] cu_instr;
    wire[31:0] readResult, pc, rg1Output, rg2Output, alu_C;
    wire FreezeTime;
    
    typedef struct {
        logic        isWriteREGfromALU;
        logic        isWriteREGfromMEM;
        logic        isWriteREGfromMDU;
        logic        isMDUop;
        logic [ 1:0] ready;
        logic [ 5:0] rd;
        logic [ 5:0] rs;
        logic [ 5:0] rt;
        logic [ 5:0] op;
        logic [ 5:0] ALUop;
        logic [31:0] imm;
        logic [31:0] result;
        logic [31:0] rs_output;
        logic [31:0] rt_output; 
        logic [31:0] pc;
        logic [31:0] instr;
        logic [31:0] mem_input;
        logic [31:0] FullInstr;
    } PReg;
    PReg IF_ID, ID_EX, EX_MEM, MEM_WB;
    
    assign ft = ft_alu_a | ft_alu_b | ft_id_a | ft_id_b;
    
    always @(*) begin
        if (reset == 1) begin
            ft_alu_a <= 0;
            ft_alu_b <= 0;
            ft_id_a <= 0;
            ft_id_b <= 0;
            weDM <= 0;
            weRG <= 0;
            jumpEnabled <= 0;
            mdu_start <= 0;
        end
    end
    
//********************  IF  ********************//
    ProgramCounter PC(
        .reset(reset),
        .clock(clock),
        .jumpEnabled(jumpEnabled),
        .jumpInput(jumpInput),
        .pcValue(pc),
        .setFreezeTime(ft),
        .FreezeTime(FreezeTime)
    );
    ControllerUnit CU(
        .Instruction(Instruction),
        .op(cu_op),
        .rs(cu_rs),
        .rt(cu_rt),
        .rd(cu_rd),
        .ALUop(cu_ALUop),
        .imm(cu_imm),
        .instr(cu_instr),
        .isWriteREGfromALU(cu_isWriteREGfromALU),
        .isWriteREGfromMEM(cu_isWriteREGfromMEM),
        .isWriteREGfromMDU(cu_isWriteREGfromMDU),
        .isMDUop(cu_isMDUop)
    );
    always @(*) begin
        Instruction <= InstructionMemory[pc[11:2]];
    end
    always @(posedge clock) begin
        if ((ft_alu_a | ft_alu_b) != 1 && (ft_id_a | ft_id_b) != 1) begin
            IF_ID.rs <= cu_rs;
            IF_ID.rt <= cu_rt;
            IF_ID.rd <= cu_rd;
            IF_ID.op <= cu_op;
            IF_ID.imm <= cu_imm;
            IF_ID.ALUop <= cu_ALUop;
            IF_ID.instr <= cu_instr;
            IF_ID.pc <= pc;
            IF_ID.FullInstr <= Instruction;
            IF_ID.isWriteREGfromALU <= cu_isWriteREGfromALU;
            IF_ID.isWriteREGfromMEM <= cu_isWriteREGfromMEM;
            IF_ID.isWriteREGfromMDU <= cu_isWriteREGfromMDU;
            IF_ID.isMDUop <= cu_isMDUop;
            
            if (cu_isWriteREGfromALU || cu_isWriteREGfromMEM || cu_isWriteREGfromMDU) begin
                IF_ID.ready <= 0;
            end
            else begin
                IF_ID.ready <= 2;
            end
        end
    end
    
//********************  ID  ********************//
    GeneralPurposeRegisters GPR(
        .reset(reset),
        .clock(clock),
        .pc(tmp_reg_pc),
        .rg1ID(rg1ID),
        .rg2ID(rg2ID),
        .wrgID(wrgID),
        .writeEnabled(weRG),
        .writeInput(reg_writeInput),
        .rg1Output(rg1Output),
        .rg2Output(rg2Output)
    );
    always @(*) begin
        if (ft_alu_a | ft_alu_b) begin // NOP by LW
            rg1ID <= ID_EX.rs;
            rg2ID <= ID_EX.rt;
        end
        else begin
            rg1ID <= IF_ID.rs;
            rg2ID <= IF_ID.rt;
        end
        
        if (IF_ID.op == 6'b000010 || 
            IF_ID.op == 6'b000011) begin // J, JAL (0 REG)
            jumpInput <= {{4'b0}, (IF_ID.instr << 2)};
            jumpEnabled <= 1;
            ft_id_a <= 0;
            ft_id_b <= 0;
        end
        else if ((IF_ID.op == 6'b000000 && IF_ID.ALUop == 6'b001000) || // JR
                 (IF_ID.op == 6'b000000 && IF_ID.ALUop == 6'b001001) || // JALR
                  IF_ID.op == 6'b000001 || // BLTZ, BGEZ
                  IF_ID.op == 6'b000111 || // BGTZ
                  IF_ID.op == 6'b000110) begin // BLEZ (1 REG)
            if (ID_EX.rd == IF_ID.rs && ID_EX.ready != 2 && IF_ID.rs != 0) begin // RS
                ft_id_a <= 1;
            end
            else if (EX_MEM.rd == IF_ID.rs && EX_MEM.ready != 2 && IF_ID.rs != 0) begin
                if (EX_MEM.ready == 1) begin
                    tmp_id_a <= EX_MEM.result;
                    ft_id_a <= 0;
                end
                else begin
                    ft_id_a <= 1;
                end
            end
            else if (MEM_WB.rd == IF_ID.rs && MEM_WB.ready != 2 && IF_ID.rs != 0) begin
                if (MEM_WB.ready == 1) begin
                    tmp_id_a <= MEM_WB.result;
                    ft_id_a <= 0;
                end
                else begin
                    ft_id_a <= 1;
                end
            end
            else begin 
                tmp_id_a <= rg1Output;
                ft_id_a <= 0;
            end
            
            if (ft == 0) begin
                if (IF_ID.op == 6'b000000 && IF_ID.ALUop == 6'b001000) begin // JR
                    jumpEnabled <= 1;
                    jumpInput <= tmp_id_a;
                end
                if (IF_ID.op == 6'b000000 && IF_ID.ALUop == 6'b001001) begin // JALR
                    jumpEnabled <= 1;
                    jumpInput <= tmp_id_a;
                end
                else if (IF_ID.op == 6'b000110) begin // BLEZ
                    if (tmp_id_a == 0 || tmp_id_a[31] == 1) begin
                        jumpEnabled <= 1;
                        jumpInput <= pc + {{(14){IF_ID.imm[15]}}, IF_ID.imm[15:0], {2'b0}};
                    end
                    else begin
                        jumpEnabled <= 0;
                    end
                end
                else if (IF_ID.op == 6'b000001 && IF_ID.rt == 5'b00000) begin // BLTZ
                    if (tmp_id_a[31] == 1) begin
                        jumpEnabled <= 1;
                        jumpInput <= pc + {{(14){IF_ID.imm[15]}}, IF_ID.imm[15:0], {2'b0}};
                    end
                    else begin
                        jumpEnabled <= 0;
                    end
                end
                else if (IF_ID.op == 6'b000001 && IF_ID.rt == 5'b00001) begin // BGEZ
                    if (tmp_id_a[31] == 0) begin
                        jumpEnabled <= 1;
                        jumpInput <= pc + {{(14){IF_ID.imm[15]}}, IF_ID.imm[15:0], {2'b0}};
                    end
                    else begin
                        jumpEnabled <= 0;
                    end
                end
                else if (IF_ID.op == 6'b000111) begin // BGTZ
                    if (tmp_id_a[31] == 0 && tmp_id_a != 0) begin
                        jumpEnabled <= 1;
                        jumpInput <= pc + {{(14){IF_ID.imm[15]}}, IF_ID.imm[15:0], {2'b0}};
                    end
                    else begin
                        jumpEnabled <= 0;
                    end
                end
            end
            else begin
                jumpEnabled <= 0;
            end
        end
        else if (IF_ID.op == 6'b000100 || // BEQ
                 IF_ID.op == 6'b00101) begin // BNE (2 REG)
            if (ID_EX.rd == IF_ID.rs && ID_EX.ready != 2 && IF_ID.rs != 0) begin // RS
                ft_id_a <= 1;
            end
            else if (EX_MEM.rd == IF_ID.rs && EX_MEM.ready != 2 && IF_ID.rs != 0) begin
                if (EX_MEM.ready == 1) begin
                    tmp_id_a <= EX_MEM.result;
                    ft_id_a <= 0;
                end
                else begin
                    ft_id_a <= 1;
                end
            end
            else if (MEM_WB.rd == IF_ID.rs && MEM_WB.ready != 2 && IF_ID.rs != 0) begin
                if (MEM_WB.ready == 1) begin
                    tmp_id_a <= MEM_WB.result;
                    ft_id_a <= 0;
                end
                else begin
                    ft_id_a <= 1;
                end
            end
            else begin 
                tmp_id_a <= rg1Output;
                ft_id_a <= 0;
            end
            
            if (ID_EX.rd == IF_ID.rt && ID_EX.ready != 2 && IF_ID.rt != 0) begin // RT
                ft_id_b <= 1;
            end
            else if (EX_MEM.rd == IF_ID.rt && EX_MEM.ready != 2 && IF_ID.rt != 0) begin
                if (EX_MEM.ready == 1) begin
                    tmp_id_b <= EX_MEM.result;
                    ft_id_b <= 0;
                end
                else begin
                    ft_id_b <= 1;
                end
            end
            else if (MEM_WB.rd == IF_ID.rt && MEM_WB.ready != 2 && IF_ID.rt != 0) begin
                if (MEM_WB.ready == 1) begin
                    tmp_id_b <= MEM_WB.result;
                    ft_id_b <= 0;
                end
                else begin
                    ft_id_b <= 1;
                end
            end
            else begin 
                tmp_id_b <= rg2Output;
                ft_id_b <= 0;
            end
            
            if (ft == 0) begin
                if (IF_ID.op == 6'b000100) begin // BEQ_JUMP
                    if (tmp_id_a == tmp_id_b) begin
                        jumpEnabled <= 1;
                        jumpInput <= pc + {{(14){IF_ID.imm[15]}}, IF_ID.imm[15:0], {2'b0}};
                    end
                    else begin
                        jumpEnabled <= 0;
                    end
                end
                else if (IF_ID.op == 6'b000101) begin // BNE_JUMP
                    if (tmp_id_a != tmp_id_b) begin
                        jumpEnabled <= 1;
                        jumpInput <= pc + {{(14){IF_ID.imm[15]}}, IF_ID.imm[15:0], {2'b0}};
                    end
                    else begin
                        jumpEnabled <= 0;
                    end
                end
            end
            else begin
                jumpEnabled <= 0;
            end
        end
        else begin // not jump
            jumpEnabled <= 0;
            ft_id_a <= 0;
            ft_id_b <= 0;
        end
    end
    always @(posedge clock) begin
        ID_EX.rs_output <= rg1Output;
        ID_EX.rt_output <= rg2Output;
        if ((ft_alu_a | ft_alu_b) != 1 && (ft_id_a | ft_id_b) != 1) begin
            ID_EX.isWriteREGfromALU <= IF_ID.isWriteREGfromALU;
            ID_EX.isWriteREGfromMEM <= IF_ID.isWriteREGfromMEM;
            ID_EX.isWriteREGfromMDU <= IF_ID.isWriteREGfromMDU;
            ID_EX.isMDUop <= IF_ID.isMDUop;
            if (IF_ID.op == 6'b000010 ||
                IF_ID.op == 6'b000100 ||
                (IF_ID.op == 6'b000000 && IF_ID.ALUop == 6'b001000) ||
                IF_ID.op == 6'b000101 ||
                IF_ID.op == 6'b000001 ||
                IF_ID.op == 6'b000111 ||
                IF_ID.op == 6'b000110) begin // J, BEQ, JR, BNE, BLEZ, BLTZ, BGEZ, BGTZ
                ID_EX.rs <= 0;
                ID_EX.rt <= 0;
                ID_EX.rd <= 0;
                ID_EX.op <= 0;
                ID_EX.imm <= 0;
                ID_EX.ALUop <= 0;
                ID_EX.instr <= 0;
                ID_EX.pc <= IF_ID.pc;
                ID_EX.ready <= 2;
                ID_EX.FullInstr <= IF_ID.FullInstr;
            end
            else if ((IF_ID.op == 6'b000000 && IF_ID.ALUop == 6'b001001) || // JALR
                     (IF_ID.op == 6'b000011)) begin // JAL
                ID_EX.rs <= 0;
                ID_EX.rt <= 0;
                ID_EX.rd <= IF_ID.rd;
                ID_EX.result <= IF_ID.pc + 8;
                ID_EX.op <= 3;
                ID_EX.imm <= 0;
                ID_EX.ALUop <= 0;
                ID_EX.instr <= 0;
                ID_EX.pc <= IF_ID.pc;
                ID_EX.ready <= 1;
                ID_EX.FullInstr <= IF_ID.FullInstr;
            end
            else begin
                ID_EX.rs <= IF_ID.rs;
                ID_EX.rt <= IF_ID.rt;
                ID_EX.rd <= IF_ID.rd;
                ID_EX.op <= IF_ID.op;
                ID_EX.imm <= IF_ID.imm;
                ID_EX.ALUop <= IF_ID.ALUop;
                ID_EX.instr <= IF_ID.instr;
                ID_EX.pc <= IF_ID.pc;
                ID_EX.ready <= IF_ID.ready;
                ID_EX.FullInstr <= IF_ID.FullInstr;
            end
        end
        else if ((ft_id_a | ft_id_b) == 1 && (ft_alu_a | ft_alu_b) != 1) begin
            ID_EX.ready <= 2;
            ID_EX.isWriteREGfromALU <= 0;
            ID_EX.isWriteREGfromMEM <= 0;
            ID_EX.isWriteREGfromMDU <= 0;
            ID_EX.isMDUop <= 0;
            ID_EX.op <= 0;
            ID_EX.rs <= 0;
            ID_EX.rt <= 0;
            ID_EX.rd <= 0;
            ID_EX.ALUop <= 0;
        end
    end

//********************  EX  ********************//
    alu ALU(
        .A(alu_A),
        .B(alu_B),
        .Op(alu_Op),
        .C(alu_C)
    );
    MultiplicationDivisionUnit MDU(
        .reset(reset),
        .clock(clock),
        .operand1(mdu_a),
        .operand2(mdu_b),
        .operation(mdu_op),
        .start(mdu_start),
        .busy(mdu_busy),
        .dataRead(mdu_c)
    );
    always @(*) begin
        if (ID_EX.isMDUop == 1) begin // MDU operation
            if (mdu_busy == 1) begin
                ft_alu_a <= 1;
                ft_alu_b <= 1;
                mdu_start <= 0;
            end
            else begin
                if (ID_EX.isWriteREGfromMDU == 1) begin
                    ft_alu_a <= 0;
                    ft_alu_b <= 0;
                    mdu_a <= 0;
                    mdu_b <= 0;
                    if (ID_EX.ALUop == 6'b010000) begin
                        mdu_op <= MDU_READ_HI;
                    end
                    else begin
                        mdu_op <= MDU_READ_LO;
                    end
                    mdu_start <= 1;
                end
                else begin
                    // mdu_a
                    if (EX_MEM.rd == ID_EX.rs && EX_MEM.ready != 2 && ID_EX.rs != 0) begin
                        if (EX_MEM.ready == 1) begin
                            mdu_a <= EX_MEM.result;
                            ft_alu_a <= 0;
                        end
                        else begin
                            ft_alu_a <= 1;
                        end
                    end
                    else if (MEM_WB.rd == ID_EX.rs && MEM_WB.ready != 2 && ID_EX.rs != 0) begin
                        if (MEM_WB.ready == 1) begin
                            mdu_a <= MEM_WB.result;
                            ft_alu_a <= 0;
                        end
                        else begin
                            ft_alu_a <= 1;
                        end
                    end
                    else begin 
                        mdu_a <= ID_EX.rs_output;
                        ft_alu_a <= 0;
                    end

                    // mdu_b
                    if (ID_EX.ALUop == 6'b010001 || // MTHI
                        ID_EX.ALUop == 6'b010011) begin // MTLO
                        mdu_b <= 0;
                        ft_alu_b <= 0;
                    end
                    else begin
                        if (EX_MEM.rd == ID_EX.rt && EX_MEM.ready != 2 && ID_EX.rt != 0) begin
                            if (EX_MEM.ready == 1) begin
                                mdu_b <= EX_MEM.result;
                                ft_alu_b <= 0;
                            end
                            else begin
                                ft_alu_b <= 1;
                            end
                        end
                        else if (MEM_WB.rd == ID_EX.rt && MEM_WB.ready != 2 && ID_EX.rt != 0) begin
                            if (MEM_WB.ready == 1) begin
                                mdu_b <= MEM_WB.result;
                                ft_alu_b <= 0;
                            end
                            else begin
                                ft_alu_b <= 1;
                            end
                        end
                        else begin 
                            mdu_b <= ID_EX.rt_output;
                            ft_alu_b <= 0;
                        end
                    end

                    // mdu_start
                    mdu_start <= ~(ft_alu_a | ft_alu_b);

                    // mdu_op
                    if (ID_EX.ALUop == 6'b010001) begin // MTHI
                        mdu_op <= MDU_WRITE_HI;
                    end
                    else if (ID_EX.ALUop == 6'b010011) begin // MTLO
                        mdu_op <= MDU_WRITE_LO;
                    end
                    else if (ID_EX.ALUop == 6'b011000) begin // NULT
                        mdu_op <= MDU_START_SIGNED_MUL;
                    end
                    else if (ID_EX.ALUop == 6'b011001) begin // NULTU
                        mdu_op <= MDU_START_UNSIGNED_MUL;
                    end
                    else if (ID_EX.ALUop == 6'b011010) begin // DIV
                        mdu_op <= MDU_START_SIGNED_DIV;
                    end
                    else if (ID_EX.ALUop == 6'b011011) begin // DIVU
                        mdu_op <= MDU_START_UNSIGNED_DIV;
                    end
                end
            end
        end
        else begin // ALU operation
            mdu_start <= 0;
            // alu_A
            if (ID_EX.op == 6'b001111) begin // LUI: 16
                alu_A <= 16;
            end
            else if (ID_EX.op == 6'b000000 && 
                    (ID_EX.ALUop == 6'b000000 || // SLL
                    ID_EX.ALUop == 6'b000010 || // SRL  
                    ID_EX.ALUop == 6'b000011)) begin // SRA
                alu_A <= ID_EX.imm;
            end
            else begin // register
                if (EX_MEM.rd == ID_EX.rs && EX_MEM.ready != 2 && ID_EX.rs != 0) begin
                    if (EX_MEM.ready == 1) begin
                        alu_A <= EX_MEM.result;
                        ft_alu_a <= 0;
                    end
                    else begin
                        ft_alu_a <= 1;
                    end
                end
                else if (MEM_WB.rd == ID_EX.rs && MEM_WB.ready != 2 && ID_EX.rs != 0) begin
                    if (MEM_WB.ready == 1) begin
                        alu_A <= MEM_WB.result;
                        ft_alu_a <= 0;
                    end
                    else begin
                        ft_alu_a <= 1;
                    end
                end
                else begin 
                    alu_A <= ID_EX.rs_output;
                    ft_alu_a <= 0;
                end
            end
            
            // alu_B
            if (ID_EX.op == 6'b001111 || 
                ID_EX.op == 6'b001100 ||
                ID_EX.op == 6'b001110 ||
                ID_EX.op == 6'b001101) begin // LUI, ORI, ANDI, XORI: imm
                alu_B <= ID_EX.imm;
            end
            else if (ID_EX.op == 6'b101011 ||
                    ID_EX.op == 6'b101000 ||
                    ID_EX.op == 6'b101001) begin // SW, SB, SH: (sign) imm
                alu_B <= {{(16){ID_EX.imm[15]}}, ID_EX.imm[15:0]};
                if (EX_MEM.rd == ID_EX.rt && EX_MEM.ready != 2 && ID_EX.rt != 0) begin
                    if (EX_MEM.ready == 1) begin
                        tmp_mem_input <= EX_MEM.result;
                        ft_alu_b <= 0;
                    end
                    else begin
                        ft_alu_b <= 1;
                    end
                end
                else if (MEM_WB.rd == ID_EX.rt && MEM_WB.ready != 2 && ID_EX.rt != 0) begin
                    if (MEM_WB.ready == 1) begin
                        tmp_mem_input <= MEM_WB.result;
                        ft_alu_b <= 0;
                    end
                    else begin
                        ft_alu_b <= 1;
                    end
                end
                else begin 
                    tmp_mem_input <= ID_EX.rt_output;
                    ft_alu_b <= 0;
                end
            end
            else if (ID_EX.op == 6'b100011 ||
                    ID_EX.op == 6'b100000 ||
                    ID_EX.op == 6'b100100 ||
                    ID_EX.op == 6'b100001 ||
                    ID_EX.op == 6'b100101 ||
                    ID_EX.op == 6'b001000 ||
                    ID_EX.op == 6'b001010 ||
                    ID_EX.op == 6'b001011 ||
                    ID_EX.op == 6'b001001) begin // LW, LB, LBU, LH, LHU, ADDI, ADDIU, SLTI, SLTIU: (sign) imm
                alu_B <= {{(16){ID_EX.imm[15]}}, ID_EX.imm[15:0]};
            end
            else begin // register
                if (EX_MEM.rd == ID_EX.rt && EX_MEM.ready != 2 && ID_EX.rt != 0) begin
                    if (EX_MEM.ready == 1) begin
                        alu_B <= EX_MEM.result;
                        ft_alu_b <= 0;
                    end
                    else begin
                        ft_alu_b <= 1;
                    end
                end
                else if (MEM_WB.rd == ID_EX.rt && MEM_WB.ready != 2 && ID_EX.rt != 0) begin
                    if (MEM_WB.ready == 1) begin
                        alu_B <= MEM_WB.result;
                        ft_alu_b <= 0;
                    end
                    else begin
                        ft_alu_b <= 1;
                    end
                end
                else begin 
                    alu_B <= ID_EX.rt_output;
                    ft_alu_b <= 0;
                end
            end
        
            //alu_Op
            if (ID_EX.op == 6'b001111) begin // LUI: 4 SLL
                alu_Op <= 4;
            end
            else if (ID_EX.op == 6'b001100) begin // ANDI
                alu_Op <= 36;
            end
            else if (ID_EX.op == 6'b001110) begin // XORI
                alu_Op <= 38;
            end
            else if (ID_EX.op == 6'b001010) begin // SLTI
                alu_Op <= 42;
            end
            else if (ID_EX.op == 6'b001011) begin // SLTIU
                alu_Op <= 43;
            end
            else if ((ID_EX.op == 6'b000000 && ID_EX.ALUop == 6'b000000) || // SLL
                     (ID_EX.op == 6'b000000 && ID_EX.ALUop == 6'b000010) || // SRL  
                     (ID_EX.op == 6'b000000 && ID_EX.ALUop == 6'b000011)) begin // SRA
                alu_Op <= ID_EX.ALUop | 4;
            end
            else if (ID_EX.op == 6'b101011 ||
                    ID_EX.op == 6'b101000 ||
                    ID_EX.op == 6'b101001 || 
                    ID_EX.op == 6'b100011 ||
                    ID_EX.op == 6'b100000 ||
                    ID_EX.op == 6'b100100 ||
                    ID_EX.op == 6'b100001 ||
                    ID_EX.op == 6'b100101 ||
                    ID_EX.op == 6'b001000) begin // SW, SB, SH, LW, LB, LBU, LH, LHU, ADDI: 32 ADDI
                alu_Op <= 32;
            end
            else if (ID_EX.op == 6'b001001) begin // ADDIU
                alu_Op <= 33;
            end
            else if (ID_EX.op == 6'b001101) begin // ORI: 37 OR
                alu_Op <= 37;
            end
            else begin
                alu_Op <= ID_EX.ALUop;
            end
        end
    end
    always @(posedge clock) begin
        mdu_start <= 0;
        if ((ft_alu_a | ft_alu_b) != 1) begin
            if (ID_EX.isMDUop == 1) begin
                if (ID_EX.isWriteREGfromMDU) begin
                    EX_MEM.result <= mdu_c;
                    EX_MEM.mem_input <= tmp_mem_input;
                    EX_MEM.rs <= ID_EX.rs;
                    EX_MEM.rt <= ID_EX.rt;
                    EX_MEM.rd <= ID_EX.rd;
                    EX_MEM.op <= ID_EX.op;
                    EX_MEM.imm <= ID_EX.imm;
                    EX_MEM.ALUop <= ID_EX.ALUop;
                    EX_MEM.instr <= ID_EX.instr;
                    EX_MEM.pc <= ID_EX.pc;
                    EX_MEM.FullInstr <= ID_EX.FullInstr;
                    EX_MEM.isWriteREGfromALU <= ID_EX.isWriteREGfromALU;
                    EX_MEM.isWriteREGfromMEM <= ID_EX.isWriteREGfromMEM;
                    EX_MEM.isWriteREGfromMDU <= ID_EX.isWriteREGfromMDU;
                    EX_MEM.isMDUop <= ID_EX.isMDUop;
                    if (ID_EX.ready != 2 && ID_EX.isWriteREGfromMDU) begin
                        EX_MEM.ready <= 1;
                    end
                    else begin
                        EX_MEM.ready <= ID_EX.ready;
                    end
                end
                else begin
                    EX_MEM.ready <= 2;
                    EX_MEM.pc <= ID_EX.pc;
                    EX_MEM.FullInstr <= ID_EX.FullInstr;
                    EX_MEM.isWriteREGfromALU <= 0;
                    EX_MEM.isWriteREGfromMEM <= 0;
                    EX_MEM.isWriteREGfromMDU <= 0;
                    EX_MEM.isMDUop <= 0;
                    EX_MEM.op <= 0;
                    EX_MEM.rs <= 0;
                    EX_MEM.rt <= 0;
                    EX_MEM.rd <= 0;
                    EX_MEM.ALUop <= 0;
                end
            end
            else begin
                if (ID_EX.op != 6'b000011) begin
                    EX_MEM.result <= alu_C;
                end
                else begin
                    EX_MEM.result <= ID_EX.result;  // JAL
                end
                EX_MEM.mem_input <= tmp_mem_input;
                EX_MEM.rs <= ID_EX.rs;
                EX_MEM.rt <= ID_EX.rt;
                EX_MEM.rd <= ID_EX.rd;
                EX_MEM.op <= ID_EX.op;
                EX_MEM.imm <= ID_EX.imm;
                EX_MEM.ALUop <= ID_EX.ALUop;
                EX_MEM.instr <= ID_EX.instr;
                EX_MEM.pc <= ID_EX.pc;
                EX_MEM.FullInstr <= ID_EX.FullInstr;
                EX_MEM.isWriteREGfromALU <= ID_EX.isWriteREGfromALU;
                EX_MEM.isWriteREGfromMEM <= ID_EX.isWriteREGfromMEM;
                EX_MEM.isWriteREGfromMDU <= ID_EX.isWriteREGfromMDU;
                EX_MEM.isMDUop <= ID_EX.isMDUop;
                if (ID_EX.ready != 2 && ID_EX.isWriteREGfromALU) begin
                    EX_MEM.ready <= 1;
                end
                else begin
                    EX_MEM.ready <= ID_EX.ready;
                end
            end
        end
        else begin
            EX_MEM.ready <= 2;
            EX_MEM.isWriteREGfromALU <= 0;
            EX_MEM.isWriteREGfromMEM <= 0;
            EX_MEM.isWriteREGfromMDU <= 0;
            EX_MEM.isMDUop <= 0;
            EX_MEM.op <= 0;
            EX_MEM.rs <= 0;
            EX_MEM.rt <= 0;
            EX_MEM.rd <= 0;
            EX_MEM.ALUop <= 0;
        end
    end
    
//********************  MEM ********************//
    DataMemory DM(
        .reset(reset),
        .clock(clock),
        .pc(tmp_mem_pc),
        .address(address),
        .writeByte(writeByte),
        .readByte(readByte),
        .isUnsign(isUnsign),
        .writeEnabled(weDM),
        .writeInput(mem_writeInput),
        .readResult(readResult)
    );
    always @(*) begin
        if (EX_MEM.op == 6'b101011 ||
            EX_MEM.op == 6'b101000 ||
            EX_MEM.op == 6'b101001) begin
            weDM <= 1;
            mem_writeInput <= EX_MEM.mem_input;
            address <= EX_MEM.result;
            tmp_mem_pc <= EX_MEM.pc;
            if (EX_MEM.op == 6'b101011) begin
                writeByte <= 0;
            end
            else if (EX_MEM.op == 6'b101000) begin
                writeByte <= 1;
            end
            else begin
                writeByte <= 2;
            end
        end
        else begin
            weDM <= 0;
            if (EX_MEM.isWriteREGfromMEM) begin
                address <= EX_MEM.result;
                if (EX_MEM.op == 6'b100011) begin
                    readByte <= 0;
                end
                else if (EX_MEM.op == 6'b100000 || EX_MEM.op == 6'b100100) begin
                    readByte <= 1;
                    if (EX_MEM.op == 6'b100000) begin
                        isUnsign <= 0;
                    end
                    else begin
                        isUnsign <= 1;
                    end
                end
                else begin
                    if (EX_MEM.op == 6'b100001) begin
                        readByte <= 2;
                        isUnsign <= 0;
                    end
                    else begin
                        readByte <= 2;
                        isUnsign <= 1;
                    end
                end
            end
            else begin
                address <= 0;
            end
        end
    end
    always @(posedge clock) begin
        if (EX_MEM.isWriteREGfromMEM) begin
            MEM_WB.result <= readResult;
            MEM_WB.ready <= 1;
        end
        else begin
            MEM_WB.result <= EX_MEM.result;
            MEM_WB.ready <= EX_MEM.ready;
        end
        MEM_WB.rs <= EX_MEM.rs;
        MEM_WB.rt <= EX_MEM.rt;
        MEM_WB.rd <= EX_MEM.rd;
        MEM_WB.op <= EX_MEM.op;
        MEM_WB.imm <= EX_MEM.imm;
        MEM_WB.ALUop <= EX_MEM.ALUop;
        MEM_WB.instr <= EX_MEM.instr;
        MEM_WB.pc <= EX_MEM.pc;
        MEM_WB.FullInstr <= EX_MEM.FullInstr;
        MEM_WB.isWriteREGfromALU <= EX_MEM.isWriteREGfromALU;
        MEM_WB.isWriteREGfromMEM <= EX_MEM.isWriteREGfromMEM;
        MEM_WB.isWriteREGfromMDU <= EX_MEM.isWriteREGfromMDU;
        MEM_WB.isMDUop <= EX_MEM.isMDUop;
    end

//********************  WB  ********************//
    always @(*) begin
        if (MEM_WB.FullInstr == 32'h0000000c) begin
            $finish;
        end
        wrgID <= MEM_WB.rd;
        reg_writeInput <= MEM_WB.result;
        if (MEM_WB.ready == 1 &&
                (MEM_WB.isWriteREGfromALU ||
                 MEM_WB.isWriteREGfromMEM ||
                 MEM_WB.isWriteREGfromMDU ||
                 MEM_WB.op == 6'b000011)) // JAL, JALR
        begin
            weRG <= 1;
            tmp_reg_pc <= MEM_WB.pc;
        end
        else begin
            weRG <= 0;
        end
    end
    
endmodule
