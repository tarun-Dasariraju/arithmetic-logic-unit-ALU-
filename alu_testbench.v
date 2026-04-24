`timescale 1ns / 1ps
//TESTBENCH FOR ALU
module task_1_tb(    );
reg [3:0]a;
reg [3:0]b;
reg [3:0]sel;
wire [3:0]y;
task_1 uut( 
            .a(a),
            .b(b),
            .sel(sel),
            .y(y)
           );
initial begin
            $monitor("a=%b b=%b sel=%b y=%b ",a,b,sel,y);
            a=4'b0100; b=4'b0010; sel=3'b000; #10;
            a=4'b0100; b=4'b0010; sel=3'b001; #10;
            a=4'b0100; b=4'b0010; sel=3'b010; #10;
            a=4'b0100; b=4'b0010; sel=3'b011; #10;
            a=4'b0100; b=4'b0010; sel=3'b100; #10;
            $finish;
        end
endmodule
