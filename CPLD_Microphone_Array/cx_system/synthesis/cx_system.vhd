-- cx_system.vhd

-- Generated using ACDS version 18.0 614

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cx_system is
	port (
		altpll_0_locked_conduit_export      : out std_logic;                                        -- altpll_0_locked_conduit.export
		bme_input_data                      : in  std_logic_vector(63 downto 0) := (others => '0'); --               bme_input.data
		bme_input_error                     : in  std_logic_vector(1 downto 0)  := (others => '0'); --                        .error
		bme_input_valid                     : in  std_logic                     := '0';             --                        .valid
		bme_output_data                     : out std_logic_vector(63 downto 0);                    --              bme_output.data
		bme_output_error                    : out std_logic_vector(1 downto 0);                     --                        .error
		bme_output_valid                    : out std_logic;                                        --                        .valid
		cfg_input_data                      : in  std_logic_vector(15 downto 0) := (others => '0'); --               cfg_input.data
		cfg_input_error                     : in  std_logic_vector(1 downto 0)  := (others => '0'); --                        .error
		cfg_input_valid                     : in  std_logic                     := '0';             --                        .valid
		cfg_output_data                     : out std_logic_vector(15 downto 0);                    --              cfg_output.data
		cfg_output_error                    : out std_logic_vector(1 downto 0);                     --                        .error
		cfg_output_valid                    : out std_logic;                                        --                        .valid
		clk_clk                             : in  std_logic                     := '0';             --                     clk.clk
		control_conduit_busy_out            : out std_logic;                                        --         control_conduit.busy_out
		fe_ics52000_0_cfg_input_data        : in  std_logic_vector(15 downto 0) := (others => '0'); -- fe_ics52000_0_cfg_input.data
		fe_ics52000_0_cfg_input_error       : in  std_logic_vector(1 downto 0)  := (others => '0'); --                        .error
		fe_ics52000_0_cfg_input_valid       : in  std_logic                     := '0';             --                        .valid
		fpga_control_conduit_busy_out       : out std_logic;                                        --    fpga_control_conduit.busy_out
		fpga_rj45_interface_serial_data_in  : in  std_logic                     := '0';             --     fpga_rj45_interface.serial_data_in
		fpga_rj45_interface_serial_data_out : out std_logic;                                        --                        .serial_data_out
		fpga_rj45_interface_serial_clk_out  : out std_logic;                                        --                        .serial_clk_out
		fpga_serial_clk_clk                 : in  std_logic                     := '0';             --         fpga_serial_clk.clk
		i2c_clk_clk                         : out std_logic;                                        --                 i2c_clk.clk
		ics52000_mic_output_channel         : out std_logic_vector(5 downto 0);                     --     ics52000_mic_output.channel
		ics52000_mic_output_data            : out std_logic_vector(31 downto 0);                    --                        .data
		ics52000_mic_output_error           : out std_logic_vector(1 downto 0);                     --                        .error
		ics52000_mic_output_valid           : out std_logic;                                        --                        .valid
		ics52000_physical_mic_data_in       : in  std_logic_vector(15 downto 0) := (others => '0'); --       ics52000_physical.mic_data_in
		ics52000_physical_mic_ws_out        : out std_logic_vector(15 downto 0);                    --                        .mic_ws_out
		ics52000_physical_clk               : out std_logic_vector(3 downto 0);                     --                        .clk
		led_output_led_sd                   : out std_logic;                                        --              led_output.led_sd
		led_output_led_ws                   : out std_logic;                                        --                        .led_ws
		mic_input_data                      : in  std_logic_vector(31 downto 0) := (others => '0'); --               mic_input.data
		mic_input_channel                   : in  std_logic_vector(4 downto 0)  := (others => '0'); --                        .channel
		mic_input_error                     : in  std_logic_vector(1 downto 0)  := (others => '0'); --                        .error
		mic_input_valid                     : in  std_logic                     := '0';             --                        .valid
		mic_output_channel                  : out std_logic_vector(3 downto 0);                     --              mic_output.channel
		mic_output_data                     : out std_logic_vector(31 downto 0);                    --                        .data
		mic_output_error                    : out std_logic_vector(1 downto 0);                     --                        .error
		mic_output_valid                    : out std_logic;                                        --                        .valid
		pll_mclk_clk                        : out std_logic;                                        --                pll_mclk.clk
		reset_reset_n                       : in  std_logic                     := '0';             --                   reset.reset_n
		rgb_input_data                      : in  std_logic_vector(15 downto 0) := (others => '0'); --               rgb_input.data
		rgb_input_error                     : in  std_logic_vector(1 downto 0)  := (others => '0'); --                        .error
		rgb_input_valid                     : in  std_logic                     := '0';             --                        .valid
		rgb_output_data                     : out std_logic_vector(15 downto 0);                    --              rgb_output.data
		rgb_output_error                    : out std_logic_vector(1 downto 0);                     --                        .error
		rgb_output_valid                    : out std_logic;                                        --                        .valid
		rj45_interface_serial_data_in       : in  std_logic                     := '0';             --          rj45_interface.serial_data_in
		rj45_interface_serial_data_out      : out std_logic;                                        --                        .serial_data_out
		serial_clk_clk                      : in  std_logic                     := '0'              --              serial_clk.clk
	);
end entity cx_system;

architecture rtl of cx_system is
	component FE_CPLD_Microphone_Encoder_Decoder is
		generic (
			avalon_data_width : integer := 32;
			mic_data_width    : integer := 24;
			bme_data_width    : integer := 64;
			rgb_data_width    : integer := 16;
			cfg_data_width    : integer := 16;
			ch_width          : integer := 4;
			n_mics            : integer := 16
		);
		port (
			reset_n           : in  std_logic                     := 'X';             -- reset_n
			led_sd            : out std_logic;                                        -- led_sd
			led_ws            : out std_logic;                                        -- led_ws
			serial_data_in    : in  std_logic                     := 'X';             -- serial_data_in
			serial_data_out   : out std_logic;                                        -- serial_data_out
			sys_clk           : in  std_logic                     := 'X';             -- clk
			mic_input_data    : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			mic_input_channel : in  std_logic_vector(4 downto 0)  := (others => 'X'); -- channel
			mic_input_error   : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- error
			mic_input_valid   : in  std_logic                     := 'X';             -- valid
			rgb_out_data      : out std_logic_vector(15 downto 0);                    -- data
			rgb_out_error     : out std_logic_vector(1 downto 0);                     -- error
			rgb_out_valid     : out std_logic;                                        -- valid
			cfg_out_data      : out std_logic_vector(15 downto 0);                    -- data
			cfg_out_error     : out std_logic_vector(1 downto 0);                     -- error
			cfg_out_valid     : out std_logic;                                        -- valid
			bme_input_data    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			bme_input_error   : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- error
			bme_input_valid   : in  std_logic                     := 'X';             -- valid
			busy_out          : out std_logic;                                        -- busy_out
			serial_clk_in     : in  std_logic                     := 'X'              -- clk
		);
	end component FE_CPLD_Microphone_Encoder_Decoder;

	component FE_FPGA_Microphone_Encoder_Decoder is
		generic (
			avalon_data_width : integer := 32;
			mic_data_width    : integer := 24;
			bme_data_width    : integer := 64;
			rgb_data_width    : integer := 16;
			cfg_data_width    : integer := 16;
			ch_width          : integer := 4;
			n_mics            : integer := 16
		);
		port (
			reset_n         : in  std_logic                     := 'X';             -- reset_n
			serial_data_in  : in  std_logic                     := 'X';             -- serial_data_in
			serial_data_out : out std_logic;                                        -- serial_data_out
			serial_clk_out  : out std_logic;                                        -- serial_clk_out
			sys_clk         : in  std_logic                     := 'X';             -- clk
			busy_out        : out std_logic;                                        -- busy_out
			bme_out_data    : out std_logic_vector(63 downto 0);                    -- data
			bme_out_error   : out std_logic_vector(1 downto 0);                     -- error
			bme_out_valid   : out std_logic;                                        -- valid
			mic_out_channel : out std_logic_vector(3 downto 0);                     -- channel
			mic_out_data    : out std_logic_vector(31 downto 0);                    -- data
			mic_out_error   : out std_logic_vector(1 downto 0);                     -- error
			mic_out_valid   : out std_logic;                                        -- valid
			cfg_input_data  : in  std_logic_vector(15 downto 0) := (others => 'X'); -- data
			cfg_input_error : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- error
			cfg_input_valid : in  std_logic                     := 'X';             -- valid
			rgb_input_data  : in  std_logic_vector(15 downto 0) := (others => 'X'); -- data
			rgb_input_error : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- error
			rgb_input_valid : in  std_logic                     := 'X';             -- valid
			serial_clk      : in  std_logic                     := 'X'              -- clk
		);
	end component FE_FPGA_Microphone_Encoder_Decoder;

	component FE_ICS52000 is
		generic (
			avalon_data_width : integer := 32;
			mic_data_width    : integer := 24;
			cfg_data_width    : integer := 16;
			ch_width          : integer := 6;
			n_mics            : integer := 16;
			n_clocks          : integer := 4;
			sck_multiplier    : integer := 64
		);
		port (
			reset_n         : in  std_logic                     := 'X';             -- reset_n
			cfg_input_data  : in  std_logic_vector(15 downto 0) := (others => 'X'); -- data
			cfg_input_error : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- error
			cfg_input_valid : in  std_logic                     := 'X';             -- valid
			sys_clk         : in  std_logic                     := 'X';             -- clk
			mic_clk_in      : in  std_logic                     := 'X';             -- clk
			mic_data_in     : in  std_logic_vector(15 downto 0) := (others => 'X'); -- mic_data_in
			mic_ws_out      : out std_logic_vector(15 downto 0);                    -- mic_ws_out
			mic_clk_out     : out std_logic_vector(3 downto 0);                     -- clk
			mic_out_channel : out std_logic_vector(5 downto 0);                     -- channel
			mic_out_data    : out std_logic_vector(31 downto 0);                    -- data
			mic_out_error   : out std_logic_vector(1 downto 0);                     -- error
			mic_out_valid   : out std_logic                                         -- valid
		);
	end component FE_ICS52000;

	component cx_system_altpll_0 is
		port (
			clk                : in  std_logic                     := 'X';             -- clk
			reset              : in  std_logic                     := 'X';             -- reset
			read               : in  std_logic                     := 'X';             -- read
			write              : in  std_logic                     := 'X';             -- write
			address            : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- address
			readdata           : out std_logic_vector(31 downto 0);                    -- readdata
			writedata          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			c0                 : out std_logic;                                        -- clk
			c1                 : out std_logic;                                        -- clk
			c2                 : out std_logic;                                        -- clk
			locked             : out std_logic;                                        -- export
			scandone           : out std_logic;                                        -- export
			scandataout        : out std_logic;                                        -- export
			c3                 : out std_logic;                                        -- clk
			c4                 : out std_logic;                                        -- clk
			areset             : in  std_logic                     := 'X';             -- export
			phasedone          : out std_logic;                                        -- export
			phasecounterselect : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- export
			phaseupdown        : in  std_logic                     := 'X';             -- export
			phasestep          : in  std_logic                     := 'X';             -- export
			scanclk            : in  std_logic                     := 'X';             -- export
			scanclkena         : in  std_logic                     := 'X';             -- export
			scandata           : in  std_logic                     := 'X';             -- export
			configupdate       : in  std_logic                     := 'X'              -- export
		);
	end component cx_system_altpll_0;

	component altera_reset_controller is
		generic (
			NUM_RESET_INPUTS          : integer := 6;
			OUTPUT_RESET_SYNC_EDGES   : string  := "deassert";
			SYNC_DEPTH                : integer := 2;
			RESET_REQUEST_PRESENT     : integer := 0;
			RESET_REQ_WAIT_TIME       : integer := 1;
			MIN_RST_ASSERTION_TIME    : integer := 3;
			RESET_REQ_EARLY_DSRT_TIME : integer := 1;
			USE_RESET_REQUEST_IN0     : integer := 0;
			USE_RESET_REQUEST_IN1     : integer := 0;
			USE_RESET_REQUEST_IN2     : integer := 0;
			USE_RESET_REQUEST_IN3     : integer := 0;
			USE_RESET_REQUEST_IN4     : integer := 0;
			USE_RESET_REQUEST_IN5     : integer := 0;
			USE_RESET_REQUEST_IN6     : integer := 0;
			USE_RESET_REQUEST_IN7     : integer := 0;
			USE_RESET_REQUEST_IN8     : integer := 0;
			USE_RESET_REQUEST_IN9     : integer := 0;
			USE_RESET_REQUEST_IN10    : integer := 0;
			USE_RESET_REQUEST_IN11    : integer := 0;
			USE_RESET_REQUEST_IN12    : integer := 0;
			USE_RESET_REQUEST_IN13    : integer := 0;
			USE_RESET_REQUEST_IN14    : integer := 0;
			USE_RESET_REQUEST_IN15    : integer := 0;
			ADAPT_RESET_REQUEST       : integer := 0
		);
		port (
			reset_in0      : in  std_logic := 'X'; -- reset
			clk            : in  std_logic := 'X'; -- clk
			reset_out      : out std_logic;        -- reset
			reset_req      : out std_logic;        -- reset_req
			reset_req_in0  : in  std_logic := 'X'; -- reset_req
			reset_in1      : in  std_logic := 'X'; -- reset
			reset_req_in1  : in  std_logic := 'X'; -- reset_req
			reset_in2      : in  std_logic := 'X'; -- reset
			reset_req_in2  : in  std_logic := 'X'; -- reset_req
			reset_in3      : in  std_logic := 'X'; -- reset
			reset_req_in3  : in  std_logic := 'X'; -- reset_req
			reset_in4      : in  std_logic := 'X'; -- reset
			reset_req_in4  : in  std_logic := 'X'; -- reset_req
			reset_in5      : in  std_logic := 'X'; -- reset
			reset_req_in5  : in  std_logic := 'X'; -- reset_req
			reset_in6      : in  std_logic := 'X'; -- reset
			reset_req_in6  : in  std_logic := 'X'; -- reset_req
			reset_in7      : in  std_logic := 'X'; -- reset
			reset_req_in7  : in  std_logic := 'X'; -- reset_req
			reset_in8      : in  std_logic := 'X'; -- reset
			reset_req_in8  : in  std_logic := 'X'; -- reset_req
			reset_in9      : in  std_logic := 'X'; -- reset
			reset_req_in9  : in  std_logic := 'X'; -- reset_req
			reset_in10     : in  std_logic := 'X'; -- reset
			reset_req_in10 : in  std_logic := 'X'; -- reset_req
			reset_in11     : in  std_logic := 'X'; -- reset
			reset_req_in11 : in  std_logic := 'X'; -- reset_req
			reset_in12     : in  std_logic := 'X'; -- reset
			reset_req_in12 : in  std_logic := 'X'; -- reset_req
			reset_in13     : in  std_logic := 'X'; -- reset
			reset_req_in13 : in  std_logic := 'X'; -- reset_req
			reset_in14     : in  std_logic := 'X'; -- reset
			reset_req_in14 : in  std_logic := 'X'; -- reset_req
			reset_in15     : in  std_logic := 'X'; -- reset
			reset_req_in15 : in  std_logic := 'X'  -- reset_req
		);
	end component altera_reset_controller;

	signal altpll_0_c1_clk                          : std_logic; -- altpll_0:c1 -> FE_ICS52000_0:mic_clk_in
	signal rst_controller_reset_out_reset           : std_logic; -- rst_controller:reset_out -> [altpll_0:reset, rst_controller_reset_out_reset:in]
	signal reset_reset_n_ports_inv                  : std_logic; -- reset_reset_n:inv -> rst_controller:reset_in0
	signal rst_controller_reset_out_reset_ports_inv : std_logic; -- rst_controller_reset_out_reset:inv -> [FE_CPLD_Microphone_Encoder_Decoder_0:reset_n, FE_FPGA_Microphone_Encoder_Decoder_0:reset_n, FE_ICS52000_0:reset_n]

begin

	fe_cpld_microphone_encoder_decoder_0 : component FE_CPLD_Microphone_Encoder_Decoder
		generic map (
			avalon_data_width => 32,
			mic_data_width    => 24,
			bme_data_width    => 64,
			rgb_data_width    => 16,
			cfg_data_width    => 16,
			ch_width          => 5,
			n_mics            => 16
		)
		port map (
			reset_n           => rst_controller_reset_out_reset_ports_inv, --           reset.reset_n
			led_sd            => led_output_led_sd,                        --      LED_output.led_sd
			led_ws            => led_output_led_ws,                        --                .led_ws
			serial_data_in    => rj45_interface_serial_data_in,            --  RJ45_Interface.serial_data_in
			serial_data_out   => rj45_interface_serial_data_out,           --                .serial_data_out
			sys_clk           => clk_clk,                                  --         sys_clk.clk
			mic_input_data    => mic_input_data,                           --       mic_input.data
			mic_input_channel => mic_input_channel,                        --                .channel
			mic_input_error   => mic_input_error,                          --                .error
			mic_input_valid   => mic_input_valid,                          --                .valid
			rgb_out_data      => rgb_output_data,                          --      rgb_output.data
			rgb_out_error     => rgb_output_error,                         --                .error
			rgb_out_valid     => rgb_output_valid,                         --                .valid
			cfg_out_data      => cfg_output_data,                          --      cfg_output.data
			cfg_out_error     => cfg_output_error,                         --                .error
			cfg_out_valid     => cfg_output_valid,                         --                .valid
			bme_input_data    => bme_input_data,                           --       bme_input.data
			bme_input_error   => bme_input_error,                          --                .error
			bme_input_valid   => bme_input_valid,                          --                .valid
			busy_out          => control_conduit_busy_out,                 -- control_conduit.busy_out
			serial_clk_in     => serial_clk_clk                            --      serial_clk.clk
		);

	fe_fpga_microphone_encoder_decoder_0 : component FE_FPGA_Microphone_Encoder_Decoder
		generic map (
			avalon_data_width => 32,
			mic_data_width    => 24,
			bme_data_width    => 64,
			rgb_data_width    => 16,
			cfg_data_width    => 16,
			ch_width          => 4,
			n_mics            => 16
		)
		port map (
			reset_n         => rst_controller_reset_out_reset_ports_inv, --           reset.reset_n
			serial_data_in  => fpga_rj45_interface_serial_data_in,       --  RJ45_Interface.serial_data_in
			serial_data_out => fpga_rj45_interface_serial_data_out,      --                .serial_data_out
			serial_clk_out  => fpga_rj45_interface_serial_clk_out,       --                .serial_clk_out
			sys_clk         => clk_clk,                                  --         sys_clk.clk
			busy_out        => fpga_control_conduit_busy_out,            -- control_conduit.busy_out
			bme_out_data    => bme_output_data,                          --      bme_output.data
			bme_out_error   => bme_output_error,                         --                .error
			bme_out_valid   => bme_output_valid,                         --                .valid
			mic_out_channel => mic_output_channel,                       --      mic_output.channel
			mic_out_data    => mic_output_data,                          --                .data
			mic_out_error   => mic_output_error,                         --                .error
			mic_out_valid   => mic_output_valid,                         --                .valid
			cfg_input_data  => cfg_input_data,                           --       cfg_input.data
			cfg_input_error => cfg_input_error,                          --                .error
			cfg_input_valid => cfg_input_valid,                          --                .valid
			rgb_input_data  => rgb_input_data,                           --       rgb_input.data
			rgb_input_error => rgb_input_error,                          --                .error
			rgb_input_valid => rgb_input_valid,                          --                .valid
			serial_clk      => fpga_serial_clk_clk                       --      serial_clk.clk
		);

	fe_ics52000_0 : component FE_ICS52000
		generic map (
			avalon_data_width => 32,
			mic_data_width    => 24,
			cfg_data_width    => 16,
			ch_width          => 6,
			n_mics            => 16,
			n_clocks          => 4,
			sck_multiplier    => 64
		)
		port map (
			reset_n         => rst_controller_reset_out_reset_ports_inv, --        reset.reset_n
			cfg_input_data  => fe_ics52000_0_cfg_input_data,             --    cfg_input.data
			cfg_input_error => fe_ics52000_0_cfg_input_error,            --             .error
			cfg_input_valid => fe_ics52000_0_cfg_input_valid,            --             .valid
			sys_clk         => clk_clk,                                  --      sys_clk.clk
			mic_clk_in      => altpll_0_c1_clk,                          --   mic_clk_in.clk
			mic_data_in     => ics52000_physical_mic_data_in,            -- mic_physical.mic_data_in
			mic_ws_out      => ics52000_physical_mic_ws_out,             --             .mic_ws_out
			mic_clk_out     => ics52000_physical_clk,                    --             .clk
			mic_out_channel => ics52000_mic_output_channel,              --   mic_output.channel
			mic_out_data    => ics52000_mic_output_data,                 --             .data
			mic_out_error   => ics52000_mic_output_error,                --             .error
			mic_out_valid   => ics52000_mic_output_valid                 --             .valid
		);

	altpll_0 : component cx_system_altpll_0
		port map (
			clk                => clk_clk,                        --       inclk_interface.clk
			reset              => rst_controller_reset_out_reset, -- inclk_interface_reset.reset
			read               => open,                           --             pll_slave.read
			write              => open,                           --                      .write
			address            => open,                           --                      .address
			readdata           => open,                           --                      .readdata
			writedata          => open,                           --                      .writedata
			c0                 => pll_mclk_clk,                   --                    c0.clk
			c1                 => altpll_0_c1_clk,                --                    c1.clk
			c2                 => i2c_clk_clk,                    --                    c2.clk
			locked             => altpll_0_locked_conduit_export, --        locked_conduit.export
			scandone           => open,                           --           (terminated)
			scandataout        => open,                           --           (terminated)
			c3                 => open,                           --           (terminated)
			c4                 => open,                           --           (terminated)
			areset             => '0',                            --           (terminated)
			phasedone          => open,                           --           (terminated)
			phasecounterselect => "000",                          --           (terminated)
			phaseupdown        => '0',                            --           (terminated)
			phasestep          => '0',                            --           (terminated)
			scanclk            => '0',                            --           (terminated)
			scanclkena         => '0',                            --           (terminated)
			scandata           => '0',                            --           (terminated)
			configupdate       => '0'                             --           (terminated)
		);

	rst_controller : component altera_reset_controller
		generic map (
			NUM_RESET_INPUTS          => 1,
			OUTPUT_RESET_SYNC_EDGES   => "deassert",
			SYNC_DEPTH                => 2,
			RESET_REQUEST_PRESENT     => 0,
			RESET_REQ_WAIT_TIME       => 1,
			MIN_RST_ASSERTION_TIME    => 3,
			RESET_REQ_EARLY_DSRT_TIME => 1,
			USE_RESET_REQUEST_IN0     => 0,
			USE_RESET_REQUEST_IN1     => 0,
			USE_RESET_REQUEST_IN2     => 0,
			USE_RESET_REQUEST_IN3     => 0,
			USE_RESET_REQUEST_IN4     => 0,
			USE_RESET_REQUEST_IN5     => 0,
			USE_RESET_REQUEST_IN6     => 0,
			USE_RESET_REQUEST_IN7     => 0,
			USE_RESET_REQUEST_IN8     => 0,
			USE_RESET_REQUEST_IN9     => 0,
			USE_RESET_REQUEST_IN10    => 0,
			USE_RESET_REQUEST_IN11    => 0,
			USE_RESET_REQUEST_IN12    => 0,
			USE_RESET_REQUEST_IN13    => 0,
			USE_RESET_REQUEST_IN14    => 0,
			USE_RESET_REQUEST_IN15    => 0,
			ADAPT_RESET_REQUEST       => 0
		)
		port map (
			reset_in0      => reset_reset_n_ports_inv,        -- reset_in0.reset
			clk            => clk_clk,                        --       clk.clk
			reset_out      => rst_controller_reset_out_reset, -- reset_out.reset
			reset_req      => open,                           -- (terminated)
			reset_req_in0  => '0',                            -- (terminated)
			reset_in1      => '0',                            -- (terminated)
			reset_req_in1  => '0',                            -- (terminated)
			reset_in2      => '0',                            -- (terminated)
			reset_req_in2  => '0',                            -- (terminated)
			reset_in3      => '0',                            -- (terminated)
			reset_req_in3  => '0',                            -- (terminated)
			reset_in4      => '0',                            -- (terminated)
			reset_req_in4  => '0',                            -- (terminated)
			reset_in5      => '0',                            -- (terminated)
			reset_req_in5  => '0',                            -- (terminated)
			reset_in6      => '0',                            -- (terminated)
			reset_req_in6  => '0',                            -- (terminated)
			reset_in7      => '0',                            -- (terminated)
			reset_req_in7  => '0',                            -- (terminated)
			reset_in8      => '0',                            -- (terminated)
			reset_req_in8  => '0',                            -- (terminated)
			reset_in9      => '0',                            -- (terminated)
			reset_req_in9  => '0',                            -- (terminated)
			reset_in10     => '0',                            -- (terminated)
			reset_req_in10 => '0',                            -- (terminated)
			reset_in11     => '0',                            -- (terminated)
			reset_req_in11 => '0',                            -- (terminated)
			reset_in12     => '0',                            -- (terminated)
			reset_req_in12 => '0',                            -- (terminated)
			reset_in13     => '0',                            -- (terminated)
			reset_req_in13 => '0',                            -- (terminated)
			reset_in14     => '0',                            -- (terminated)
			reset_req_in14 => '0',                            -- (terminated)
			reset_in15     => '0',                            -- (terminated)
			reset_req_in15 => '0'                             -- (terminated)
		);

	reset_reset_n_ports_inv <= not reset_reset_n;

	rst_controller_reset_out_reset_ports_inv <= not rst_controller_reset_out_reset;

end architecture rtl; -- of cx_system
