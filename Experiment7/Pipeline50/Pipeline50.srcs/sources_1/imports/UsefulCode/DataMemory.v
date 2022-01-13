`timescale 1ns / 1ps

module DataMemory(
    input reset,
    input clock,
    input[31:0] pc,
    input[31:0] address,
    input[1:0] readByte,
    input isUnsign,
    input[1:0] writeByte,
    input writeEnabled,
    input[31:0] writeInput,
    output[31:0] readResult
    );
    
    reg[31:0] readResult;
    reg[31:0] data[2047:0];
    
    integer i;
    
    always @(*) begin
        if (readByte == 0) begin
            readResult = data[address[12:2]];
        end
        else if (readByte == 1) begin
            if (isUnsign == 1) begin
                if (address[1:0] == 2'b00) begin
                    readResult = {{(24){0}}, data[address[12:2]][7:0]};
                end
                else if (address[1:0] == 2'b01) begin
                    readResult = {{(24){0}}, data[address[12:2]][15:8]};
                end
                else if (address[1:0] == 2'b10) begin
                    readResult = {{(24){0}}, data[address[12:2]][23:16]};
                end
                else begin
                    readResult = {{(24){0}}, data[address[12:2]][31:24]};
                end 
            end 
            else begin
                if (address[1:0] == 2'b00) begin
                    readResult = {{(24){data[address[12:2]][7]}}, data[address[12:2]][7:0]};
                end
                else if (address[1:0] == 2'b01) begin
                    readResult = {{(24){data[address[12:2]][15]}}, data[address[12:2]][15:8]};
                end
                else if (address[1:0] == 2'b10) begin
                    readResult = {{(24){data[address[12:2]][23]}}, data[address[12:2]][23:16]};
                end
                else begin
                    readResult = {{(24){data[address[12:2]][31]}}, data[address[12:2]][31:24]};
                end 
            end
        end
        else begin
            if (isUnsign == 1) begin
                if (address[1] == 0) begin
                    readResult = {{(24){0}}, data[address[12:2]][15:0]};
                end
                else begin
                    readResult = {{(24){0}}, data[address[12:2]][31:16]};
                end
            end
            else begin
                if (address[1] == 0) begin
                    readResult = {{(24){data[address[12:2]][15]}}, data[address[12:2]][15:0]};
                end
                else begin
                    readResult = {{(24){data[address[12:2]][31]}}, data[address[12:2]][31:16]};
                end
            end
        end
    end
    
    always @(posedge clock) begin
        if (reset == 1) begin
            for (i = 0; i < 2048; i = i + 1)
                data[i] <= 0;
        end
        else if (writeEnabled == 1) begin
            if (writeByte == 0) begin
                data[address[12:2]] <= writeInput;
                $display("@%h: *%h <= %h", pc, address, writeInput);
            end
            else if (writeByte == 1) begin
                if (address[1:0] == 2'b00) begin
                    data[address[12:2]] <= {data[address[12:2]][31:8], writeInput[7:0]};
                    $display("@%h: *%h <= %h", pc, {address[31:2], 2'b00}, {data[address[12:2]][31:8], writeInput[7:0]});
                end
                else if (address[1:0] == 2'b01) begin
                    data[address[12:2]] <= {data[address[12:2]][31:16], writeInput[7:0], data[address[12:2]][7:0]};
                    $display("@%h: *%h <= %h", pc, {address[31:2], 2'b00}, {data[address[12:2]][31:16], writeInput[7:0], data[address[12:2]][7:0]});
                end
                else if (address[1:0] == 2'b10) begin
                    data[address[12:2]] <= {data[address[12:2]][31:24], writeInput[7:0], data[address[12:2]][15:0]};
                    $display("@%h: *%h <= %h", pc, {address[31:2], 2'b00}, {data[address[12:2]][31:24], writeInput[7:0], data[address[12:2]][15:0]});
                end
                else begin
                    data[address[12:2]] <= {writeInput[7:0], data[address[12:2]][23:0]};
                    $display("@%h: *%h <= %h", pc, {address[31:2], 2'b00}, {writeInput[7:0], data[address[12:2]][23:0]});
                end 
            end
            else begin
                if (address[1] == 0) begin
                    data[address[12:2]] <= {data[address[12:2]][31:16], writeInput[15:0]};
                    $display("@%h: *%h <= %h", pc, {address[31:2], 2'b00}, {data[address[12:2]][31:16], writeInput[15:0]});
                end
                else begin
                    data[address[12:2]] <= {writeInput[15:0], data[address[12:2]][15:0]};
                    $display("@%h: *%h <= %h", pc, {address[31:2], 2'b00}, {writeInput[15:0], data[address[12:2]][15:0]});
                end
            end
        end
    end
    
endmodule
