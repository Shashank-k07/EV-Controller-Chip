module airbag_control(sensor,seatbelt,brake,airbag);
input sensor,seatbelt,brake;
output airbag;
assign airbag=sensor & seatbelt & brake;
endmodule


module top;
reg sensor,seatbelt,brake;
wire airbag;
airbag_control dut(sensor,seatbelt,brake,airbag);
initial begin
	sensor=0;seatbelt=0;brake=0;
	#10;
	sensor=0;seatbelt=0;brake=1;
	#10;
	sensor=0;seatbelt=1;brake=0;
	#10;
	sensor=0;seatbelt=1;brake=1;
	#10;
	sensor=1;seatbelt=0;brake=0;
	#10;
	sensor=1;seatbelt=0;brake=1;
	#10;
	sensor=1;seatbelt=1;brake=0;
	#10;
	sensor=1;seatbelt=1;brake=1;
	#10;
end
endmodule


