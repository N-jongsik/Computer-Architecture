module booth(input1,input2,clk,start,reset,result,count);
    input [3:0]input1,input2;//4bit input: input1, input2
    input clk,start,reset;//1bit input: clk, start, reset
    output [7:0] result;//8bit output: result
    output reg [1:0] count;//2bit output: count

    reg [3:0] A,Q,M;//4bit reg: A, Q, M
    reg  Q_1;//1bit reg: Q_1
    wire [3:0] add,sub;//4bit wire: add, sub

    always @(posedge clk or negedge reset)//클럭이 posedge일때 혹은 리셋이 negedge일때 진행
    begin
        if(~reset)//reset이 0일때 값 0으로 초기화 진행
        begin
            A<=4'b0;
            M<=4'b0;
            Q<=4'b0;
            Q_1<=4'b0;
            count <=2'b0;
        end

        else if(~start)// reset이 1이고 start가 0일때 input값 입력
        begin
            A<=4'b0;
            M<=input1;
            Q<=input2;
            Q_1<=1'b0;
            count <=2'b0;
        end

        else
        begin
        case ({Q[0],Q_1})
        2'b0_1:{A,Q,Q_1}<={add[3],add,Q};//Q[0],Q_1의 값이 01일때
        2'b1_0:{A,Q,Q_1}<={sub[3],sub,Q};//Q[0],Q_1의 값이 10일때 
        default:{A,Q,Q_1}<={A[3],A,Q};//Q[0],Q_1의 값이 00, 11일때 arithmetic shift right진행 
        endcase
        count=count+1'b1;
        end
    end

    alu adder(A,M,1'b0,add);
    alu subtracter(A,~M,1'b1,sub);

    assign result ={A,Q};
endmodule

module alu(a,b,cin,out);
    input[3:0]a;
    input[3:0]b;
    input cin;
    output[3:0]out;

    assign out=a+b+cin;
endmodule