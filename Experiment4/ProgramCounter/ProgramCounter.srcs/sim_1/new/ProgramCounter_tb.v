`timescale 1ns / 1ps

module ProgramCounter_tb();
    reg reset;
    reg clock;
    reg jumpEnabled;
    reg[31:0] jumpInput;
    
    wire[31:0] pcValue;
    
    ProgramCounter pc(
        .reset(reset),
        .clock(clock),
        .jumpEnabled(jumpEnabled),
        .jumpInput(jumpInput),
        .pcValue(pcValue)
    );
    
    integer i;
    
    initial begin
        clock = 0;
        reset = 1;
        jumpEnabled <= 0;
        jumpInput <= 0;
        i <= 0;
        #10;
        clock = 1;
        #10
        for (i = 1; i <= 4; i = i + 1) begin
            clock = ~clock;
            reset <= 0;
            jumpEnabled <= 0;
            jumpInput <= 0;
            #10;
        end
        for (i = 1; i <= 4; i = i + 1) begin
            clock = ~clock;
            reset <= 0;
            jumpEnabled <= 1;
            jumpInput[31:2] <= $urandom();
            #10;
        end
        for (i = 1; i <= 4; i = i + 1) begin
            clock = ~clock;
            reset <= 0;
            jumpEnabled <= 0;
            #10;
        end
        $finish;
    end
    
endmodule
