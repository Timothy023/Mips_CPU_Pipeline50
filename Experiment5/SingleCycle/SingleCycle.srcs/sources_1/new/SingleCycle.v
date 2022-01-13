`timescale 1ns / 1ps

module SingleCycle(
    input reset,
    input clock
    );
    reg[29:0] tmp;
    reg[31:0] InstructionMemory[1023:0];
    reg[31:0] Instruction, address, writeInput, jumpInput, alu_A, alu_B;
    reg[5:0] alu_Op;
    reg[4:0] rg1ID, rg2ID, wrgID;
    reg weDM, weRG, jumpEnabled;
    wire[5:0] cu_op, cu_ALUop;
    wire[4:0] cu_rs, cu_rt, cu_rd;
    wire[15:0] cu_imm;
    wire[25:0] cu_instr;
    wire[31:0] readResult, pc, rg1Output, rg2Output, alu_C;
    
    initial begin
        $readmemh("E:\\CPUexperiment\\Experiment5\\code.txt", InstructionMemory);
    end
    
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
    DataMemory DM(
        .reset(reset),
        .clock(clock),
        .address(address),
        .writeEnabled(weDM),
        .writeInput(writeInput),
        .readResult(readResult)
    );
    ProgramCounter PC(
        .reset(reset),
        .clock(clock),
        .jumpEnabled(jumpEnabled),
        .jumpInput(jumpInput),
        .pcValue(pc)
    );
    GeneralPurposeRegisters GPR(
        .reset(reset),
        .clock(clock),
        .rg1ID(rg1ID),
        .rg2ID(rg2ID),
        .wrgID(wrgID),
        .writeEnabled(weRG),
        .writeInput(writeInput),
        .rg1Output(rg1Output),
        .rg2Output(rg2Output)
    );
    alu ALU(
        .A(alu_A),
        .B(alu_B),
        .Op(alu_Op),
        .C(alu_C)
    );
    
    always @(*) begin
        if (reset == 0) begin
            Instruction <= InstructionMemory[pc[9:2]];
            if (Instruction == 32'h0000000c) begin
                $finish;
            end
            case (cu_op)
                6'b000000 : begin // ADDU & SUBU & JR
                    if (cu_ALUop == 6'b001000) begin
                        weDM <= 0;
                        weRG <= 0;
                        
                        rg1ID <= cu_rs;
                        jumpInput <= rg1Output;
                        jumpEnabled <= 1;
                    end
                    else begin
                        weDM <= 0;
                        jumpEnabled <= 0;
                        
                        rg1ID <= cu_rs;
                        rg2ID <= cu_rt;
                        alu_A <= rg1Output;
                        alu_B <= rg2Output;
                        alu_Op <= cu_ALUop;
                        wrgID <= cu_rd;
                        writeInput <= alu_C;
                        weRG <= 1;
                    end
                end
                6'b000100 : begin // BEQ
                    weDM <= 0;
                    weRG <= 0;
                    
                    rg1ID = cu_rs;
                    rg2ID = cu_rt;
                    if (rg1Output == rg2Output) begin
                        alu_A <= pc + 4;
                        alu_B <= {{(14){cu_imm[15]}}, cu_imm[15:0], {2'b0}};
                        alu_Op <= 32;
                        jumpInput <= alu_C;
                        jumpEnabled <= 1;
                    end
                    else begin
                        jumpEnabled <= 0;
                    end
                end
                6'b001101 : begin // ORI
                    weDM <= 0;
                    jumpEnabled <= 0;
                    
                    rg1ID <= cu_rs;
                    alu_A <= rg1Output;
                    alu_B <= {{16'b0}, cu_imm[15:0]};
                    alu_Op <= 37;
                    writeInput <= alu_C;
                    wrgID <= cu_rt; 
                    weRG <= 1;
                end
                6'b100011 : begin // LW
                    weDM <= 0;
                    jumpEnabled <= 0;
                    
                    rg1ID <= cu_rs;
                    alu_A <= rg1Output;
                    alu_B <= {{(16){cu_imm[15]}}, cu_imm[15:0]};
                    alu_Op <= 32;
                    address <= alu_C;
                    writeInput <= readResult;
                    wrgID <= cu_rt;
                    weRG <= 1;
                end
                6'b101011 : begin // SW
                    weRG <= 0;
                    jumpEnabled <= 0;
                    
                    rg1ID <= cu_rs;
                    alu_A <= rg1Output;
                    alu_B <= {{(16){cu_imm[15]}}, cu_imm[15:0]};
                    alu_Op <= 32;
                    address <= alu_C;
                    rg2ID <= cu_rt;
                    writeInput <= rg2Output;
                    weDM <= 1;
                end
                6'b001111 : begin // LUI
                    weDM <= 0;
                    jumpEnabled <= 0;
                    
                    alu_A <= 16;
                    alu_B <= cu_imm;
                    alu_Op <= 0;
                    wrgID <= cu_rt;
                    writeInput <= (alu_C);
                    weRG <= 1;
                end
                6'b000011 : begin // JAL
                    weDM <= 0;
                    weRG <= 0;
                    
                    writeInput <= pc + 4;
                    wrgID <= 31;
                    weRG <= 1;
                    
                    alu_A <= 2;
                    alu_B <= cu_instr;
                    alu_Op <= 0;
                    jumpInput <= {{4'b0}, (alu_C)};
                    jumpEnabled <= 1;
                end
                6'b000010 : begin // J
                    weDM <= 0;
                    weRG <= 0;
                                        
                    alu_A <= 2;
                    alu_B <= cu_instr;
                    alu_Op <= 0;
                    jumpInput <= {{4'b0}, (alu_C)};
                    jumpEnabled <= 1;
                end
            endcase
        end
    end
endmodule
