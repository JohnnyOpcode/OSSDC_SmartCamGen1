set_clock_groups -asynchronous -group [get_clocks clk_fpga_3] -group [get_clocks clk_fpga_0]
set_property ASYNC_REG true [get_cells {zsys_i/audio/axi_i2s_adi_0/U0/ctrl/tx_sync/out_data_reg[4]}]
set_property ASYNC_REG true [get_cells {zsys_i/audio/axi_i2s_adi_0/U0/ctrl/SDATA_O_reg[0]}]
set_clock_groups -asynchronous -group [get_clocks clk_fpga_0] -group [get_clocks clk_fpga_3]


