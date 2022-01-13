`timescale 1ns / 1ps

module ProgramCounter(
    input reset,
    input clock,
    input jumpEnabled,
    input [31:0] jumpInput,
    output [31:0] pcValue
    );
    
    reg [31:0] pcValue;
    always @(posedge clock) begin
        if (reset == 1) begin
            pcValue <= 32'h00003000;
        end
        else if (jumpEnabled == 1) begin
            pcValue <= jumpInput;
        end
        else begin
            pcValue <= pcValue + 4;
        end
    end
    
endmodule
