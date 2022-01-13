`timescale 1ns / 1ps

module DataMemory_tb();
    reg reset;
    reg clock;
    reg[31:0] address;
    reg writeEnabled;
    reg[31:0] writeInput;
    reg[31:0] data[1023:0];
    
    wire[31:0] readResult;
    
    DataMemory dm(
        .reset(reset),
        .clock(clock),
        .address(address),
        .writeEnabled(writeEnabled),
        .writeInput(writeInput),
        .readResult(readResult)
    );
    
    integer i;
    
    initial begin
        reset <= 1;
        clock <= 0;
        address <= 0;
        writeEnabled <= 0;
        writeInput <= 0;
        for (i = 0; i < 1024; i = i + 1)
            data[i] = 0;
        #10;
        
        clock <= 1;
        #10;
        
        for (i = 0; i < 1024; i = i + 1) begin
            reset = 0;
            clock = ~clock;
            writeEnabled <= 1;
            writeInput <= $urandom();
            address <= i * 4;
            data[i] <= writeInput;
            #10;
            
            clock <= ~clock; 
            #10;
        end
        
        for (i = 0; i < 1024; i = i + 1) begin
            reset = 0;
            clock = ~clock;
            writeEnabled <= 0;
            address <= i * 4;
            #10;
            
            clock <= ~clock; 
            #10;
        end
        
        $finish;
    end
    
endmodule
