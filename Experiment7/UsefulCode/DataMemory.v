`timescale 1ns / 1ps

module DataMemory(
    input reset,
    input clock,
    input[31:0] pc,
    input[31:0] address,
    input writeEnabled,
    input[31:0] writeInput,
    output[31:0] readResult
    );
    
    wire[31:0] readResult;
    reg[31:0] data[2047:0];
    
    integer i;
    
    assign readResult = data[address[12:2]];
    
    always @(posedge clock) begin
        if (reset == 1) begin
            for (i = 0; i < 2048; i = i + 1)
                data[i] = 0;
        end
        else if (writeEnabled == 1) begin
            data[address[12:2]] = writeInput;
            $display("@%h: *%h <= %h", pc, address, writeInput);
        end
    end
    
endmodule
