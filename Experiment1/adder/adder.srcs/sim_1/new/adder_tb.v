// Testbench file for 32-bit adder

module adder_tb();
    reg [31:0] a, b;
    wire [31:0] sum, c;
    adder uut(.a(a), .b(b), .sum(sum));
    assign c = a + b - sum;
    integer i;
    initial begin
        for (i = 1; i < 256; i = i + 1) begin
            a <= $urandom();
            b <= $urandom();
            #10;
        end
        $finish;
    end
endmodule
