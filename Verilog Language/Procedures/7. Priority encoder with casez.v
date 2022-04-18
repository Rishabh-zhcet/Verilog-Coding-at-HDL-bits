/*
Problem Statement: Create a module with one input and one output that behaves like a wire.
*/

//Solution:

// synthesis verilog_input_version verilog_2001
module top_module (
    input [7:0] in,
    output reg [2:0] pos  );

    always@(*)
      casex(in)  //it can also be solved using casez we have to use 'z' instead of 'x' in case statements
            8'bxxxxxxx1: pos=3'd0; 
            8'bxxxxxx10: pos=3'd1;
            8'bxxxxx100: pos=3'd2;
            8'bxxxx1000: pos=3'd3;
            8'bxxx10000: pos=3'd4;
            8'bxx100000: pos=3'd5;
            8'bx1000000: pos=3'd6;
            8'b10000000: pos=3'd7;
            default: pos=3'd0;
        endcase 
endmodule
