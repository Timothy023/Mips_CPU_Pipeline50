`timescale 1ns / 1ps

module ControllerUnit(
    input[31:0] Instruction,
    output[5:0] op,
    output[4:0] rs,
    output[4:0] rt,
    output[4:0] rd,
    output[5:0] ALUop,
    output[15:0] imm,
    output[25:0] instr,
    output isWriteREGfromALU,
    output isWriteREGfromMEM,
    output isWriteREGfromMDU,
    output isMDUop
    );
    
    reg[4:0] rs, rt, rd;
    reg[5:0] ALUop;
    reg[15:0] imm;
    reg[25:0] instr;
    reg isWriteREGfromALU;
    reg isWriteREGfromMEM;
    reg isWriteREGfromMDU;
    reg isMDUop;
    
    wire[5:0] op;
    assign op = Instruction[31:26];
    
    always @(*) begin
        case (op)
            6'b000000 : begin // ADDU & SUBU & ADD & SUB & AND & OR & XOR & SLT & SLTU & SLLV & SRLV & SRAV & JR & JALR
                if (Instruction[5:0] == 6'b000000 || // SLL
                    Instruction[5:0] == 6'b000010 || // SRL  
                    Instruction[5:0] == 6'b000011) begin // SRA
                    rt <= Instruction[20:16];
                    rd <= Instruction[15:11];
                    imm <= {{(11){0}}, Instruction[10:6]};
                    ALUop <= Instruction[5:0];
                    rs <= 0;
                    instr <= 0;
                end
                else begin
                    rs <= Instruction[25:21];
                    rt <= Instruction[20:16];
                    rd <= Instruction[15:11];
                    ALUop <= Instruction[5:0];
                    imm <= 0;
                    instr <= 0;
                end
            end
            6'b000100 : begin // BEQ
                rs <= Instruction[25:21];
                rt <= Instruction[20:16];
                imm <= Instruction[15:0];
                rd <= 0;
                ALUop <= 0;
                instr <= 0;
            end
            6'b000110 : begin // BLEZ
                rs <= Instruction[25:21];
                imm <= Instruction[15:0];
                rt <= 0;
                rd <= 0;
                ALUop <= 0;
                instr <= 0;
            end
            6'b000111 : begin // BGTZ
                rs <= Instruction[25:21];
                imm <= Instruction[15:0];
                rt <= 0;
                rd <= 0;
                ALUop <= 0;
                instr <= 0;
            end
            6'b000001 : begin // BLTZ, BGEZ
                rs <= Instruction[25:21];
                rt <= Instruction[20:16];
                imm <= Instruction[15:0];
                rd <= 0;
                ALUop <= 0;
                instr <= 0;
            end
            6'b000101 : begin // BNE
                rs <= Instruction[25:21];
                rt <= Instruction[20:16];
                imm <= Instruction[15:0];
                rd <= 0;
                ALUop <= 0;
                instr <= 0;
            end
            6'b001101 : begin // ORI
                rs <= Instruction[25:21];
                rd <= Instruction[20:16];
                imm <= Instruction[15:0];
                rt <= 0;
                ALUop <= 0;
                instr <= 0;
            end
            6'b001000 : begin // ADDI
                rs <= Instruction[25:21];
                rd <= Instruction[20:16];
                imm <= Instruction[15:0];
                rt <= 0;
                ALUop <= 0;
                instr <= 0;
            end
            6'b001100 : begin // ANDI
                rs <= Instruction[25:21];
                rd <= Instruction[20:16];
                imm <= Instruction[15:0];
                rt <= 0;
                ALUop <= 0;
                instr <= 0;
            end
            6'b001110 : begin // XORI
                rs <= Instruction[25:21];
                rd <= Instruction[20:16];
                imm <= Instruction[15:0];
                rt <= 0;
                ALUop <= 0;
                instr <= 0;
            end
            6'b001010 : begin // SLTI
                rs <= Instruction[25:21];
                rd <= Instruction[20:16];
                imm <= Instruction[15:0];
                rt <= 0;
                ALUop <= 0;
                instr <= 0;
            end
            6'b001011 : begin // SLTIU
                rs <= Instruction[25:21];
                rd <= Instruction[20:16];
                imm <= Instruction[15:0];
                rt <= 0;
                ALUop <= 0;
                instr <= 0;
            end
            6'b001001 : begin // ADDIU
                rs <= Instruction[25:21];
                rd <= Instruction[20:16];
                imm <= Instruction[15:0];
                rt <= 0;
                ALUop <= 0;
                instr <= 0;
            end
            6'b100011 : begin // LW
                rs <= Instruction[25:21];
                rd <= Instruction[20:16];
                imm <= Instruction[15:0];
                rt <= 0;
                ALUop <= 0;
                instr <= 0;
            end
            6'b100000 : begin // LB
                rs <= Instruction[25:21];
                rd <= Instruction[20:16];
                imm <= Instruction[15:0];
                rt <= 0;
                ALUop <= 0;
                instr <= 0;
            end
            6'b100100 : begin // LBU
                rs <= Instruction[25:21];
                rd <= Instruction[20:16];
                imm <= Instruction[15:0];
                rt <= 0;
                ALUop <= 0;
                instr <= 0;
            end
            6'b100001 : begin // LH
                rs <= Instruction[25:21];
                rd <= Instruction[20:16];
                imm <= Instruction[15:0];
                rt <= 0;
                ALUop <= 0;
                instr <= 0;
            end
            6'b100101 : begin // LHU
                rs <= Instruction[25:21];
                rd <= Instruction[20:16];
                imm <= Instruction[15:0];
                rt <= 0;
                ALUop <= 0;
                instr <= 0;
            end
            6'b101011 : begin // SW
                rs <= Instruction[25:21];
                rt <= Instruction[20:16];
                imm <= Instruction[15:0];
                rd <= 0;
                ALUop <= 0;
                instr <= 0;
            end
            6'b101000 : begin // SB
                rs <= Instruction[25:21];
                rt <= Instruction[20:16];
                imm <= Instruction[15:0];
                rd <= 0;
                ALUop <= 0;
                instr <= 0;
            end
            6'b101001 : begin // SH
                rs <= Instruction[25:21];
                rt <= Instruction[20:16];
                imm <= Instruction[15:0];
                rd <= 0;
                ALUop <= 0;
                instr <= 0;
            end
            6'b001111 : begin // LUI
                rd <= Instruction[20:16];
                imm <= Instruction[15:0];
                rs <= 0;
                rt <= 0;
                ALUop <= 0;
                instr <= 0;
            end
            6'b000011 : begin // JAL
                rd <= 31;
                instr <= Instruction[25:0];   
                rs <= 0;
                rt <= 0;
                ALUop <= 0;
                imm <= 0; 
            end
            6'b000010 : begin // J
                instr <= Instruction[25:0];  
                rs <= 0;
                rt <= 0;
                rd <= 0;
                ALUop <= 0;
                imm <= 0;      
            end
        endcase
    end
    
    always @(*) begin
        if ((op == 6'b000000 && Instruction[5:0] !=  6'b001000 && Instruction[5:0] != 6'b001001) || // ADDU, SUBU, ADD, SUB, AND, OR, XOR, NOR, SLT, SLTU, SLLV, SRLV, SRAV, SLL, SRL, SRA, MDUop
            (op == 6'b001101) || // ORI
            (op == 6'b001111) || // LUI
            (op == 6'b001001) || // ADDIU
            (op == 6'b001100) || // ANDI
            (op == 6'b001110) || // XORI
            (op == 6'b001010) || // SLTI
            (op == 6'b001011) || // SLTIU
            (op == 6'b001000)) begin // ADDI
            if (op == 6'b000000) begin
                if (Instruction[5:0] == 6'b010000 || // MFHI
                    Instruction[5:0] == 6'b010010) begin // MFLO
                    isWriteREGfromALU <= 0;
                    isWriteREGfromMDU <= 1;
                    isMDUop <= 1;
                end
                else if (Instruction[5:0] == 6'b011000 || // MULT
                         Instruction[5:0] == 6'b011010 || // DIV 
                         Instruction[5:0] == 6'b011011 || // DIVU
                         Instruction[5:0] == 6'b010001 || // MTHI
                         Instruction[5:0] == 6'b010011 || // MTLO
                         Instruction[5:0] == 6'b011001) begin // MULTU
                    isWriteREGfromALU <= 0;
                    isWriteREGfromMDU <= 0;
                    isMDUop <= 1;
                end
                else begin
                    isWriteREGfromALU <= 1;
                    isWriteREGfromMDU <= 0;
                    isMDUop <= 0;
                end    
            end
            else begin
                isWriteREGfromALU <= 1;
                isWriteREGfromMDU <= 0;
                isMDUop <= 0;
            end
        end
        else begin
            isWriteREGfromALU <= 0;
            isWriteREGfromMDU <= 0;
            isMDUop <= 0;
        end
        
        if (op == 6'b100000 || // LB
            op == 6'b100100 || // LBU
            op == 6'b100001 || // LH
            op == 6'b100101 || // LHU
            op == 6'b100011) begin // LW
            isWriteREGfromMEM <= 1;
        end
        else begin
            isWriteREGfromMEM <= 0;
        end
    end
endmodule
