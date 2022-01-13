`timescale 1ns / 1ps

module ProgramCounter(
    input reset,
    input clock,
    input jumpEnabled,
    input [31:0] jumpInput,
    input setFreezeTime,
    output [31:0] pcValue,
    output FreezeTime
    );
    
    reg FreezeTime;
    reg [31:0] pcValue;
    always @(posedge clock) begin
        if (reset == 1) begin
            pcValue <= 32'h00003000;
            FreezeTime <= 0;
        end
        else if (setFreezeTime != 0) begin
            FreezeTime <= setFreezeTime;
        end
        else if (jumpEnabled == 1) begin
            FreezeTime <= 0;
            pcValue <= jumpInput;
        end
        else begin
            FreezeTime <= 0;
            pcValue <= pcValue + 4;
        end
    end
    
endmodule
