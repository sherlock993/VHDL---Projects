	component v_jtag is
		port (
			virtual_jtag_tdi                : out std_logic;                                       -- tdi
			virtual_jtag_tdo                : in  std_logic                    := 'X';             -- tdo
			virtual_jtag_ir_in              : out std_logic_vector(0 downto 0);                    -- ir_in
			virtual_jtag_ir_out             : in  std_logic_vector(0 downto 0) := (others => 'X'); -- ir_out
			virtual_jtag_virtual_state_cdr  : out std_logic;                                       -- virtual_state_cdr
			virtual_jtag_virtual_state_sdr  : out std_logic;                                       -- virtual_state_sdr
			virtual_jtag_virtual_state_e1dr : out std_logic;                                       -- virtual_state_e1dr
			virtual_jtag_virtual_state_pdr  : out std_logic;                                       -- virtual_state_pdr
			virtual_jtag_virtual_state_e2dr : out std_logic;                                       -- virtual_state_e2dr
			virtual_jtag_virtual_state_udr  : out std_logic;                                       -- virtual_state_udr
			virtual_jtag_virtual_state_cir  : out std_logic;                                       -- virtual_state_cir
			virtual_jtag_virtual_state_uir  : out std_logic;                                       -- virtual_state_uir
			virtual_jtag_tms                : out std_logic;                                       -- tms
			virtual_jtag_jtag_state_tlr     : out std_logic;                                       -- jtag_state_tlr
			virtual_jtag_jtag_state_rti     : out std_logic;                                       -- jtag_state_rti
			virtual_jtag_jtag_state_sdrs    : out std_logic;                                       -- jtag_state_sdrs
			virtual_jtag_jtag_state_cdr     : out std_logic;                                       -- jtag_state_cdr
			virtual_jtag_jtag_state_sdr     : out std_logic;                                       -- jtag_state_sdr
			virtual_jtag_jtag_state_e1dr    : out std_logic;                                       -- jtag_state_e1dr
			virtual_jtag_jtag_state_pdr     : out std_logic;                                       -- jtag_state_pdr
			virtual_jtag_jtag_state_e2dr    : out std_logic;                                       -- jtag_state_e2dr
			virtual_jtag_jtag_state_udr     : out std_logic;                                       -- jtag_state_udr
			virtual_jtag_jtag_state_sirs    : out std_logic;                                       -- jtag_state_sirs
			virtual_jtag_jtag_state_cir     : out std_logic;                                       -- jtag_state_cir
			virtual_jtag_jtag_state_sir     : out std_logic;                                       -- jtag_state_sir
			virtual_jtag_jtag_state_e1ir    : out std_logic;                                       -- jtag_state_e1ir
			virtual_jtag_jtag_state_pir     : out std_logic;                                       -- jtag_state_pir
			virtual_jtag_jtag_state_e2ir    : out std_logic;                                       -- jtag_state_e2ir
			virtual_jtag_jtag_state_uir     : out std_logic;                                       -- jtag_state_uir
			tck_clk                         : out std_logic                                        -- clk
		);
	end component v_jtag;

	u0 : component v_jtag
		port map (
			virtual_jtag_tdi                => CONNECTED_TO_virtual_jtag_tdi,                -- virtual_jtag.tdi
			virtual_jtag_tdo                => CONNECTED_TO_virtual_jtag_tdo,                --             .tdo
			virtual_jtag_ir_in              => CONNECTED_TO_virtual_jtag_ir_in,              --             .ir_in
			virtual_jtag_ir_out             => CONNECTED_TO_virtual_jtag_ir_out,             --             .ir_out
			virtual_jtag_virtual_state_cdr  => CONNECTED_TO_virtual_jtag_virtual_state_cdr,  --             .virtual_state_cdr
			virtual_jtag_virtual_state_sdr  => CONNECTED_TO_virtual_jtag_virtual_state_sdr,  --             .virtual_state_sdr
			virtual_jtag_virtual_state_e1dr => CONNECTED_TO_virtual_jtag_virtual_state_e1dr, --             .virtual_state_e1dr
			virtual_jtag_virtual_state_pdr  => CONNECTED_TO_virtual_jtag_virtual_state_pdr,  --             .virtual_state_pdr
			virtual_jtag_virtual_state_e2dr => CONNECTED_TO_virtual_jtag_virtual_state_e2dr, --             .virtual_state_e2dr
			virtual_jtag_virtual_state_udr  => CONNECTED_TO_virtual_jtag_virtual_state_udr,  --             .virtual_state_udr
			virtual_jtag_virtual_state_cir  => CONNECTED_TO_virtual_jtag_virtual_state_cir,  --             .virtual_state_cir
			virtual_jtag_virtual_state_uir  => CONNECTED_TO_virtual_jtag_virtual_state_uir,  --             .virtual_state_uir
			virtual_jtag_tms                => CONNECTED_TO_virtual_jtag_tms,                --             .tms
			virtual_jtag_jtag_state_tlr     => CONNECTED_TO_virtual_jtag_jtag_state_tlr,     --             .jtag_state_tlr
			virtual_jtag_jtag_state_rti     => CONNECTED_TO_virtual_jtag_jtag_state_rti,     --             .jtag_state_rti
			virtual_jtag_jtag_state_sdrs    => CONNECTED_TO_virtual_jtag_jtag_state_sdrs,    --             .jtag_state_sdrs
			virtual_jtag_jtag_state_cdr     => CONNECTED_TO_virtual_jtag_jtag_state_cdr,     --             .jtag_state_cdr
			virtual_jtag_jtag_state_sdr     => CONNECTED_TO_virtual_jtag_jtag_state_sdr,     --             .jtag_state_sdr
			virtual_jtag_jtag_state_e1dr    => CONNECTED_TO_virtual_jtag_jtag_state_e1dr,    --             .jtag_state_e1dr
			virtual_jtag_jtag_state_pdr     => CONNECTED_TO_virtual_jtag_jtag_state_pdr,     --             .jtag_state_pdr
			virtual_jtag_jtag_state_e2dr    => CONNECTED_TO_virtual_jtag_jtag_state_e2dr,    --             .jtag_state_e2dr
			virtual_jtag_jtag_state_udr     => CONNECTED_TO_virtual_jtag_jtag_state_udr,     --             .jtag_state_udr
			virtual_jtag_jtag_state_sirs    => CONNECTED_TO_virtual_jtag_jtag_state_sirs,    --             .jtag_state_sirs
			virtual_jtag_jtag_state_cir     => CONNECTED_TO_virtual_jtag_jtag_state_cir,     --             .jtag_state_cir
			virtual_jtag_jtag_state_sir     => CONNECTED_TO_virtual_jtag_jtag_state_sir,     --             .jtag_state_sir
			virtual_jtag_jtag_state_e1ir    => CONNECTED_TO_virtual_jtag_jtag_state_e1ir,    --             .jtag_state_e1ir
			virtual_jtag_jtag_state_pir     => CONNECTED_TO_virtual_jtag_jtag_state_pir,     --             .jtag_state_pir
			virtual_jtag_jtag_state_e2ir    => CONNECTED_TO_virtual_jtag_jtag_state_e2ir,    --             .jtag_state_e2ir
			virtual_jtag_jtag_state_uir     => CONNECTED_TO_virtual_jtag_jtag_state_uir,     --             .jtag_state_uir
			tck_clk                         => CONNECTED_TO_tck_clk                          --          tck.clk
		);

