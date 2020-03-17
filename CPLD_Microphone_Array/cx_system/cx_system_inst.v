	cx_system u0 (
		.altpll_0_locked_conduit_export           (<connected-to-altpll_0_locked_conduit_export>),           //      altpll_0_locked_conduit.export
		.bme280_i2c_0_control_conduit_busy_out    (<connected-to-bme280_i2c_0_control_conduit_busy_out>),    // bme280_i2c_0_control_conduit.busy_out
		.bme280_i2c_0_control_conduit_continuous  (<connected-to-bme280_i2c_0_control_conduit_continuous>),  //                             .continuous
		.bme280_i2c_0_control_conduit_enable      (<connected-to-bme280_i2c_0_control_conduit_enable>),      //                             .enable
		.bme280_i2c_0_i2c_interface_i2c_ack_error (<connected-to-bme280_i2c_0_i2c_interface_i2c_ack_error>), //   bme280_i2c_0_i2c_interface.i2c_ack_error
		.bme280_i2c_0_i2c_interface_i2c_addr      (<connected-to-bme280_i2c_0_i2c_interface_i2c_addr>),      //                             .i2c_addr
		.bme280_i2c_0_i2c_interface_i2c_busy      (<connected-to-bme280_i2c_0_i2c_interface_i2c_busy>),      //                             .i2c_busy
		.bme280_i2c_0_i2c_interface_i2c_data_rd   (<connected-to-bme280_i2c_0_i2c_interface_i2c_data_rd>),   //                             .i2c_data_rd
		.bme280_i2c_0_i2c_interface_i2c_data_wr   (<connected-to-bme280_i2c_0_i2c_interface_i2c_data_wr>),   //                             .i2c_data_wr
		.bme280_i2c_0_i2c_interface_i2c_ena       (<connected-to-bme280_i2c_0_i2c_interface_i2c_ena>),       //                             .i2c_ena
		.bme280_i2c_0_i2c_interface_i2c_rw        (<connected-to-bme280_i2c_0_i2c_interface_i2c_rw>),        //                             .i2c_rw
		.bme_output_data                          (<connected-to-bme_output_data>),                          //                   bme_output.data
		.bme_output_error                         (<connected-to-bme_output_error>),                         //                             .error
		.bme_output_valid                         (<connected-to-bme_output_valid>),                         //                             .valid
		.cfg_input_data                           (<connected-to-cfg_input_data>),                           //                    cfg_input.data
		.cfg_input_error                          (<connected-to-cfg_input_error>),                          //                             .error
		.cfg_input_valid                          (<connected-to-cfg_input_valid>),                          //                             .valid
		.cfg_output_data                          (<connected-to-cfg_output_data>),                          //                   cfg_output.data
		.cfg_output_error                         (<connected-to-cfg_output_error>),                         //                             .error
		.cfg_output_valid                         (<connected-to-cfg_output_valid>),                         //                             .valid
		.clk_clk                                  (<connected-to-clk_clk>),                                  //                          clk.clk
		.control_conduit_busy_out                 (<connected-to-control_conduit_busy_out>),                 //              control_conduit.busy_out
		.fe_ics52000_0_cfg_input_data             (<connected-to-fe_ics52000_0_cfg_input_data>),             //      fe_ics52000_0_cfg_input.data
		.fe_ics52000_0_cfg_input_error            (<connected-to-fe_ics52000_0_cfg_input_error>),            //                             .error
		.fe_ics52000_0_cfg_input_valid            (<connected-to-fe_ics52000_0_cfg_input_valid>),            //                             .valid
		.fpga_control_conduit_busy_out            (<connected-to-fpga_control_conduit_busy_out>),            //         fpga_control_conduit.busy_out
		.fpga_rj45_interface_serial_data_in       (<connected-to-fpga_rj45_interface_serial_data_in>),       //          fpga_rj45_interface.serial_data_in
		.fpga_rj45_interface_serial_data_out      (<connected-to-fpga_rj45_interface_serial_data_out>),      //                             .serial_data_out
		.fpga_rj45_interface_serial_clk_out       (<connected-to-fpga_rj45_interface_serial_clk_out>),       //                             .serial_clk_out
		.fpga_serial_clk_clk                      (<connected-to-fpga_serial_clk_clk>),                      //              fpga_serial_clk.clk
		.i2c_clk_clk                              (<connected-to-i2c_clk_clk>),                              //                      i2c_clk.clk
		.ics52000_mic_output_channel              (<connected-to-ics52000_mic_output_channel>),              //          ics52000_mic_output.channel
		.ics52000_mic_output_data                 (<connected-to-ics52000_mic_output_data>),                 //                             .data
		.ics52000_mic_output_error                (<connected-to-ics52000_mic_output_error>),                //                             .error
		.ics52000_mic_output_valid                (<connected-to-ics52000_mic_output_valid>),                //                             .valid
		.ics52000_physical_mic_data_in            (<connected-to-ics52000_physical_mic_data_in>),            //            ics52000_physical.mic_data_in
		.ics52000_physical_mic_ws_out             (<connected-to-ics52000_physical_mic_ws_out>),             //                             .mic_ws_out
		.ics52000_physical_clk                    (<connected-to-ics52000_physical_clk>),                    //                             .clk
		.ics52000_physical_mics_rdy               (<connected-to-ics52000_physical_mics_rdy>),               //                             .mics_rdy
		.led_output_led_sd                        (<connected-to-led_output_led_sd>),                        //                   led_output.led_sd
		.led_output_led_ws                        (<connected-to-led_output_led_ws>),                        //                             .led_ws
		.mic_input_data                           (<connected-to-mic_input_data>),                           //                    mic_input.data
		.mic_input_channel                        (<connected-to-mic_input_channel>),                        //                             .channel
		.mic_input_error                          (<connected-to-mic_input_error>),                          //                             .error
		.mic_input_valid                          (<connected-to-mic_input_valid>),                          //                             .valid
		.mic_output_channel                       (<connected-to-mic_output_channel>),                       //                   mic_output.channel
		.mic_output_data                          (<connected-to-mic_output_data>),                          //                             .data
		.mic_output_error                         (<connected-to-mic_output_error>),                         //                             .error
		.mic_output_valid                         (<connected-to-mic_output_valid>),                         //                             .valid
		.pll_mclk_clk                             (<connected-to-pll_mclk_clk>),                             //                     pll_mclk.clk
		.reset_reset_n                            (<connected-to-reset_reset_n>),                            //                        reset.reset_n
		.rgb_input_data                           (<connected-to-rgb_input_data>),                           //                    rgb_input.data
		.rgb_input_error                          (<connected-to-rgb_input_error>),                          //                             .error
		.rgb_input_valid                          (<connected-to-rgb_input_valid>),                          //                             .valid
		.rgb_output_data                          (<connected-to-rgb_output_data>),                          //                   rgb_output.data
		.rgb_output_error                         (<connected-to-rgb_output_error>),                         //                             .error
		.rgb_output_valid                         (<connected-to-rgb_output_valid>),                         //                             .valid
		.rj45_interface_serial_data_in            (<connected-to-rj45_interface_serial_data_in>),            //               rj45_interface.serial_data_in
		.rj45_interface_serial_data_out           (<connected-to-rj45_interface_serial_data_out>),           //                             .serial_data_out
		.serial_clk_clk                           (<connected-to-serial_clk_clk>),                           //                   serial_clk.clk
		.ncp5623b_rgb_input_data                  (<connected-to-ncp5623b_rgb_input_data>),                  //           ncp5623b_rgb_input.data
		.ncp5623b_rgb_input_error                 (<connected-to-ncp5623b_rgb_input_error>),                 //                             .error
		.ncp5623b_rgb_input_valid                 (<connected-to-ncp5623b_rgb_input_valid>),                 //                             .valid
		.ncp5623b_i2c_conduit_i2c_enable_out      (<connected-to-ncp5623b_i2c_conduit_i2c_enable_out>),      //         ncp5623b_i2c_conduit.i2c_enable_out
		.ncp5623b_i2c_conduit_i2c_address_out     (<connected-to-ncp5623b_i2c_conduit_i2c_address_out>),     //                             .i2c_address_out
		.ncp5623b_i2c_conduit_i2c_rdwr_out        (<connected-to-ncp5623b_i2c_conduit_i2c_rdwr_out>),        //                             .i2c_rdwr_out
		.ncp5623b_i2c_conduit_i2c_data_write_out  (<connected-to-ncp5623b_i2c_conduit_i2c_data_write_out>),  //                             .i2c_data_write_out
		.ncp5623b_i2c_conduit_i2c_bsy_in          (<connected-to-ncp5623b_i2c_conduit_i2c_bsy_in>),          //                             .i2c_bsy_in
		.ncp5623b_i2c_conduit_i2c_data_read_in    (<connected-to-ncp5623b_i2c_conduit_i2c_data_read_in>),    //                             .i2c_data_read_in
		.ncp5623b_i2c_conduit_i2c_req_out         (<connected-to-ncp5623b_i2c_conduit_i2c_req_out>),         //                             .i2c_req_out
		.ncp5623b_i2c_conduit_i2c_rdy_in          (<connected-to-ncp5623b_i2c_conduit_i2c_rdy_in>)           //                             .i2c_rdy_in
	);

