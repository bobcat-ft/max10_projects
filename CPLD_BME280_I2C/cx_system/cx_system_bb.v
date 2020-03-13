
module cx_system (
	altpll_0_locked_conduit_export,
	bme280_i2c_0_bme_output_data,
	bme280_i2c_0_bme_output_error,
	bme280_i2c_0_bme_output_valid,
	bme280_i2c_0_control_conduit_busy_out,
	bme280_i2c_0_control_conduit_continuous,
	bme280_i2c_0_control_conduit_enable,
	bme280_i2c_0_i2c_interface_scl,
	bme280_i2c_0_i2c_interface_sda,
	clk_clk,
	reset_reset_n);	

	output		altpll_0_locked_conduit_export;
	output	[95:0]	bme280_i2c_0_bme_output_data;
	output	[1:0]	bme280_i2c_0_bme_output_error;
	output		bme280_i2c_0_bme_output_valid;
	output		bme280_i2c_0_control_conduit_busy_out;
	input		bme280_i2c_0_control_conduit_continuous;
	input		bme280_i2c_0_control_conduit_enable;
	inout		bme280_i2c_0_i2c_interface_scl;
	inout		bme280_i2c_0_i2c_interface_sda;
	input		clk_clk;
	input		reset_reset_n;
endmodule
