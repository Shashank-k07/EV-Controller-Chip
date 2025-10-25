module evcontroller(sensor , seatbelt, break, airbag, a,b,c,d,lock, heater, cooler ,tmp_sensor);
input sensor,seatbelt,break;
input[6:0]tmp_sensor;
input[3:0]a,b,c,d;
output airbag, heater, cooler, lock;
assign airbag = sensor&seatbelt&break;
assign heater = (tmp_sensor>=0&&tmp_sensor<=40)? 1:0;
assign cooler = (tmp_sensor>=60&&tmp_sensor<100)? 1:0;
assign lock = (a==1&&b==2&&c==3&&d==4)?0:1;
endmodule

module test;
reg sensor,seatbelt,break;
reg[6:0]tmp_sensor;
reg[3:0]a,b,c,d;
wire airbag, heater, cooler, lock;
evcontroller dut( sensor, seatbelt, break, airbag, a,b,c,d,lock,heater,cooler,tmp_sensor);
initial begin
sensor = 0; seatbelt = 1; break = 1; tmp_sensor = 87; a =2; c = 3; d = 1; b = 0;
#10;
sensor = 0; seatbelt = 0; break = 1; tmp_sensor = 75; a =3; c = 0; d = 9; b = 4;
#10;
sensor = 0; seatbelt = 1; break = 0; tmp_sensor = 35; a =9; c = 2; d = 6; b = 5;
#10;
sensor = 0; seatbelt = 0; break = 1; tmp_sensor = 50; a =1; c = 3; d = 6; b = 0;
#10;
sensor = 1; seatbelt = 1; break = 0; tmp_sensor = 55; a =2; c = 9; d = 1; b = 5;
#10;
sensor = 1; seatbelt = 1; break = 1; tmp_sensor = 39; a =1; c = 3; d = 4; b = 2;
#10;
sensor = 0; seatbelt = 1; break = 1; tmp_sensor = 87; a =2; c = 3; d = 1; b = 0;
end 
endmodule
