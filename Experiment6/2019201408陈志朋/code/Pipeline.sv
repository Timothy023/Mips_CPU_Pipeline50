`timescale 1ns / 1ps

module Pipeline(
    input clock,
    input reset
    );
    
    // initial command
    reg[31:0] InstructionMemory[1023:0];
    initial begin
//        $readmemh("E:\\CPUexperiment\\Experiment6\\test.txt", InstructionMemory);
        $readmemh("E:\\CPUexperiment\\Experiment6\\code\\Jh0.asm.txt", InstructionMemory);
    end
    
    reg[31:0] Instruction, address, mem_writeInput, reg_writeInput, jumpInput, alu_A, alu_B;
    reg[5:0] alu_Op;
    reg[4:0] rg1ID, rg2ID, wrgID;
    reg weDM, weRG, jumpEnabled;
    reg ft_alu_a, ft_alu_b, ft_id_a, ft_id_b;
    reg[31:0] tmp_mem_input, tmp_reg_pc, tmp_mem_pc;
    reg[31:0] tmp_id_a, tmp_id_b;
    wire      ft;
    wire[5:0] cu_op, cu_ALUop;
    wire[4:0] cu_rs, cu_rt, cu_rd;
    wire[15:0] cu_imm;
    wire[25:0] cu_instr;
    wire[31:0] readResult, pc, rg1Output, rg2Output, alu_C;
    wire[ 2:0] FreezeTime;
    
    typedef struct {
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
        .instr(cu_instr)
    );
    always @(*) begin
        Instruction <= InstructionMemory[pc[11:2]];
//        if (cu_op == 6'b000100) begin
//            $stop;
//        end
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
            
            if ((cu_op == 6'b000000 && cu_ALUop !=  6'b001000) ||
                (cu_op == 6'b001101) ||
                (cu_op == 6'b001111) ||
                (cu_op == 6'b100011) ||
                (cu_op == 6'b001000)) begin // ADDU, SUBU, ORI, LUI, LW, ADDI
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
            IF_ID.op == 6'b000011) begin // J, JAL
            jumpInput <= {{4'b0}, (IF_ID.instr << 2)};
            jumpEnabled <= 1;
        end
        else if (IF_ID.op == 6'b000000 && IF_ID.ALUop == 6'b001000) begin
            if (ID_EX.rd == IF_ID.rs && ID_EX.ready != 2 && IF_ID.rs != 0) begin // JR_RS
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
                jumpEnabled <= 1;
                jumpInput <= tmp_id_a;
            end
            else begin
                jumpEnabled <= 0;
            end
        end
        else if (IF_ID.op == 6'b000100) begin // BEQ
            if (ID_EX.rd == IF_ID.rs && ID_EX.ready != 2 && IF_ID.rs != 0) begin // BEQ_RS
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
            
            if (ID_EX.rd == IF_ID.rt && ID_EX.ready != 2 && IF_ID.rt != 0) begin // BEQ_RT
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
                if (tmp_id_a == tmp_id_b) begin
                    jumpEnabled <= 1;
                    jumpInput <= pc + {{(14){IF_ID.imm[15]}}, IF_ID.imm[15:0], {2'b0}};
                end
                else begin
                    jumpEnabled <= 0;
                end
            end
            else begin
                jumpEnabled <= 0;
            end
        end
        else begin
            jumpEnabled <= 0;
            ft_id_a <= 0;
            ft_id_b <= 0;
        end
    end
    always @(posedge clock) begin
        ID_EX.rs_output <= rg1Output;
        ID_EX.rt_output <= rg2Output;
        if ((ft_alu_a | ft_alu_b) != 1 && (ft_id_a | ft_id_b) != 1) begin
            if (IF_ID.op == 6'b000010 ||
                IF_ID.op == 6'b000100 ||
                (IF_ID.op == 6'b000000 && IF_ID.ALUop == 6'b001000)) begin // J, BEQ, JR
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
            else if (IF_ID.op == 6'b000011) begin // JAL
                ID_EX.rs <= 0;
                ID_EX.rt <= 0;
                ID_EX.rd <= 31;
                ID_EX.result <= IF_ID.pc + 8;
                ID_EX.op <= IF_ID.op;
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
    always @(*) begin
        // alu_A
        if (ID_EX.op == 6'b001111) begin // LUI: 16
            alu_A <= 16;
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
            ID_EX.op == 6'b001101) begin // LUI, ORI: imm
            alu_B <= ID_EX.imm;
        end
        else if (ID_EX.op == 6'b101011) begin // SW: (sign) imm
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
                 ID_EX.op == 6'b001000) begin // LW, ADDI: (sign) imm
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
        if (ID_EX.op == 6'b001111) begin // LUI: 0 SLT
            alu_Op <= 0;
        end
        else if (ID_EX.op == 6'b101011 || 
                 ID_EX.op == 6'b100011 ||
                 ID_EX.op == 6'b001000) begin // SW, LW, ADDI: 32 ADDI
            alu_Op <= 32;
        end
        else if (ID_EX.op == 6'b001101) begin // ORI: 37 OR
            alu_Op <= 37;
        end
        else begin
            alu_Op <= ID_EX.ALUop;
        end
    end
    always @(posedge clock) begin
        if ((ft_alu_a | ft_alu_b) != 1) begin
            if (ID_EX.op != 6'b000011) begin
                EX_MEM.result <= alu_C;
            end
            else begin
                EX_MEM.result <= ID_EX.result; 
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
            if (ID_EX.ready != 2 &&
                    ((ID_EX.op == 6'b000000 && ID_EX.ALUop !=  6'b001000) ||
                     (ID_EX.op == 6'b001101) ||
                     (ID_EX.op == 6'b001111) ||
                     (ID_EX.op == 6'b001000))) begin // ADDU, SUBU, ORI, LUI, ADDI
                EX_MEM.ready <= 1;
            end
            else begin
                EX_MEM.ready <= ID_EX.ready;
            end
        end
        else begin
            EX_MEM.ready <= 2;
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
        .writeEnabled(weDM),
        .writeInput(mem_writeInput),
        .readResult(readResult)
    );
    always @(*) begin
        if (EX_MEM.op == 6'b101011) begin
            weDM <= 1;
            mem_writeInput <= EX_MEM.mem_input;
            address <= EX_MEM.result;
            tmp_mem_pc <= EX_MEM.pc;
        end
        else begin
            weDM <= 0;
            if (EX_MEM.op == 6'b100011) begin
                address <= EX_MEM.result;
            end
        end
    end
    always @(posedge clock) begin
        if (EX_MEM.op == 6'b100011) begin
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
        
    end

//********************  WB  ********************//
    always @(*) begin
        if (MEM_WB.FullInstr == 32'h0000000c) begin
            $finish;
        end
        wrgID <= MEM_WB.rd;
        reg_writeInput <= MEM_WB.result;
        if (MEM_WB.ready == 1 &&
                ((MEM_WB.op == 6'b000000 && MEM_WB.ALUop !=  6'b001000) || // ADDU, SUBU
                 (MEM_WB.op == 6'b001101) || // ORI
                 (MEM_WB.op == 6'b001111) || // LUI
                 (MEM_WB.op == 6'b100011) || // LW
                 (MEM_WB.op == 6'b000011) || //JAL
                 (MEM_WB.op == 6'b001000))) // ADDI
        begin
            weRG <= 1;
            tmp_reg_pc <= MEM_WB.pc;
        end
        else begin
            weRG <= 0;
        end
    end
    
endmodule
