module RippleCarryAdder(input [3:0] a,b, output c_out, output [3:0] sum);
wire c0,c1,c2;
FA fa0(.a(a[0]),.b(b[0]),.c_in(1'b0),.c_out(c0),.sum(sum[0]));//c_in의 input 값은 0으로 받습니다.
FA fa1(.a(a[1]),.b(b[1]),.c_in(c0),.c_out(c1),.sum(sum[1]));//wire를 통해 fa0에서의 c_out값을 fa1의 c_in값으로 받습니다.
FA fa2(.a(a[2]),.b(b[2]),.c_in(c1),.c_out(c2),.sum(sum[2]));//wire를 통해 fa1에서의 c_out값을 fa2의 c_in값으로 받습니다.
FA fa3(.a(a[3]),.b(b[3]),.c_in(c2),.c_out,.sum(sum[3]));//wire를 통해 fa2에서의 c_out값을 fa3의 c_in값으로 받습니다.
endmodule

module FA (a,b,c_in,c_out,sum);
input a;
input b;
input c_in;
output c_out;
output sum;

assign {c_out, sum} = a + b + c_in;
endmodule