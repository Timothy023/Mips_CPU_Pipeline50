`timescale 1ns / 1ns

module adder(
    input [31:0] A,
    input [31:0] B,
    input c0,
    output [31:0] C
    );
    wire [31:0] C;
    assign C = A + B + c0;
    
endmodule

module alu(
    input [31:0] A,
    input [31:0] B,
    input [5:0] Op,
    output [31:0] C,
    output Over
    );
    
    wire [31:0] tmpC_add;
    wire [31:0] tmpC_sub;
    reg [31:0] C;
    reg Over;
    
    wire [4:0] tmp;	
	assign tmp[0] = A[0];
	assign tmp[1] = A[1];
	assign tmp[2] = A[2];
	assign tmp[3] = A[3];
	assign tmp[4] = A[4];
	
    adder adder(A,  B, 0, tmpC_add);
    adder suber(A, ~B, 1, tmpC_sub);
	
    always @(*) begin
		case( Op )
	
			6'b100000 : begin
			    C = tmpC_add;
				Over = (!(A[31] ^ B[31])) & (A[31] ^ C[31]);
			end
			
			6'b100010 : begin
				C = tmpC_sub;
				Over = (!(A[31] ^ (!B[31]))) & (A[31] ^ C[31]);
			end
			
			6'b100001 : begin
				C = tmpC_add;
				Over = 0;
			end
			
			6'b100011 : begin
				C = tmpC_sub;
				Over = 0;
			end
			
			6'b000000 : begin
				C = B << tmp;
				Over = 0;
			end
			
			6'b000010 : begin
				C = B >> tmp;
				Over = 0;
			end
			
			6'b000011 : begin
				C = ($signed (B)) >>> tmp;
				Over = 0;
			end
			
			6'b100100 : begin
				C = A & B;
				Over = 0;
			end
			
			6'b100101 : begin
				C = A | B;
				Over = 0;
			end
			
			6'b100110 : begin
				C = A ^ B;
				Over = 0;
			end
			
			default : begin // 6'b100111
				C = A | B;
				C = ~C;
				Over = 0;
			end
		endcase
	end

endmodule
