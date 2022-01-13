`timescale 1ns / 1ps

module GeneralPurposeRegisters(
    input reset,
    input clock,
    input[4:0] rg1ID,
    input[4:0] rg2ID,
    input[4:0] wrgID,
    input writeEnabled,
    input[31:0] writeInput,
    output[31:0] rg1Output,
    output[31:0] rg2Output
    );
    
    reg[31:0] rg[31:0];
    integer i;
    
    wire[31:0] rg1Output, rg2Output;
    assign rg1Output = rg[rg1ID];
    assign rg2Output = rg[rg2ID];
    
    always @(posedge clock) begin
        if (reset == 1) begin
            for (i = 0; i < 32; i = i + 1) begin
                rg[i] <= 0;
            end
        end
        else if (writeEnabled == 1) begin
            rg[wrgID] <= writeInput;
        end
    end
endmodule
