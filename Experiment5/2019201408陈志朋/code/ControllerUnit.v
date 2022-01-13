`timescale 1ns / 1ps

module ControllerUnit(
    input[31:0] Instruction,
    output[5:0] op,
    output[4:0] rs,
    output[4:0] rt,
    output[4:0] rd,
    output[5:0] ALUop,
    output[15:0] imm,
    output[25:0] instr
    );
    
    reg[4:0] rs, rt, rd;
    reg[5:0] ALUop;
    reg[15:0] imm;
    reg[25:0] instr;
    
    wire[5:0] op;
    assign op = Instruction[31:26];
    
    always @(*) begin
        case (op)
            6'b000000 : begin // ADDU & SUBU & JR
                rs <= Instruction[25:21];
                rt <= Instruction[20:16];
                rd <= Instruction[15:11];
                ALUop <= Instruction[5:0];
            end
            6'b000100 : begin // BEQ
                rs <= Instruction[25:21];
                rt <= Instruction[20:16];
                imm <= Instruction[15:0];
            end
            6'b001101 : begin // ORI
                rs <= Instruction[25:21];
                rt <= Instruction[20:16];
                imm <= Instruction[15:0];
            end
            6'b100011 : begin // LW
                rs <= Instruction[25:21];
                rt <= Instruction[20:16];
                imm <= Instruction[15:0];
            end
            6'b101011 : begin // SW
                rs <= Instruction[25:21];
                rt <= Instruction[20:16];
                imm <= Instruction[15:0];
            end
            6'b001111 : begin // LUI
                rt <= Instruction[20:16];
                imm <= Instruction[15:0];            
            end
            6'b000011 : begin // JAL
                instr <= Instruction[25:0];            
            end
            6'b000010 : begin // J
                instr <= Instruction[25:0];            
            end
        endcase
    end
endmodule
