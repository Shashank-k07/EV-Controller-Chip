module ac_control(tmp_sensor,heat,cool);
input[6:0] tmp_sensor;
output heat, cool;
assign heat=(tmp_sensor>=0 && tmp_sensor<=40)?1'b1:1'b0;
assign cool=(tmp_sensor>=60 && tmp_sensor<=100) ?1'b1:1'b0;

endmodule

module top;
reg[6:0]tmp_sensor;
wire heat,cool;
ac_control dut(tmp_sensor,heat,cool);
initial begin
	tmp_sensor=67;
	#10;
	tmp_sensor=35;
	#10;
	tmp_sensor=45;
	#10;
end
endmodule
