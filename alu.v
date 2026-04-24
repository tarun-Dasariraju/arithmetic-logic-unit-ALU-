`timescale 1ns / 1ps
//ALU PROGRAM
module task_1(
            input [3:0]a,
            input [3:0]b,
            input [2:0]sel,
            output reg [3:0]y
             );
        always@(*)
                begin
                    case(sel)
                        3'b000 : y = a + b;  //addition
                        3'b001 : y = a - b;  //subtraction
                        3'b010 : y = a & b;  //AND operation
                        3'b011 : y = a | b;  //OR operation
                        3'b100 : y = ~a;     //not operation
                        default: y = 4'b0000;//default case
                    endcase
                end         
endmodule
