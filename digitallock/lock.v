module digitallock(a,b,c,d,lock);
input[3:0]a,b,c,d;
output lock;
assign lock = (a==1&&b==2&c==3&&d==4)?0:1;
endmodule

module test;
reg[3:0]a,b,c,d;
wire lock;
digitallock dut(a,b,c,d,lock);
initial begin 
a=3;b=5;c=2;d=9;
#10;
a=4;b=2;c=1;d=7;
#10;
a=1;b=2;c=3;d=4;
end 
endmodule
