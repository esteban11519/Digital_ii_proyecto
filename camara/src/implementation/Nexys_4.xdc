## This file is a general .xdc for the Nexys4 DDR Rev. C
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal

set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports {clk}]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk}];

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CAM_pclk]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CAM_href]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CAM_vsync]



##Buttons

#set_property -dict { PACKAGE_PIN C12   IOSTANDARD LVCMOS33 } [get_ports { rst }]; #IO_L3P_T0_DQS_AD1P_15 Sch=cpu_resetn

#set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports { BTNC }]; #IO_L9P_T1_DQS_14 Sch=btnc
#set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { BTNU }]; #IO_L4N_T0_D05_14 Sch=btnu
#set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports { BTNL }]; #IO_L12P_T1_MRCC_14 Sch=btnl
set_property -dict { PACKAGE_PIN R10   IOSTANDARD LVCMOS33 } [get_ports {rst}]; #IO_L10N_T1_D15_14 Sch=btnr
#set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports { BTND }]; #IO_L9N_T1_DQS_D13_14 Sch=btnd


##Pmod Headers

#set_property SEVERITY {Warning} [get_drc_checks NSTD-1];
#set_property SEVERITY {Warning} [get_drc_checks UCIO-1];


##Pmod Header JC 

set_property -dict { PACKAGE_PIN E7    IOSTANDARD LVCMOS33 } [get_ports {CAM_px_data[2]}]; #IO_L19N_T3_VREF_35 Sch=jc[2]
set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports {CAM_px_data[4]}]; #IO_L22N_T3_35 Sch=jc[3]
set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports {CAM_px_data[6]}]; #IO_L19P_T3_35 Sch=jc[4]
set_property -dict { PACKAGE_PIN K1    IOSTANDARD LVCMOS33 } [get_ports {CAM_px_data[1]}]; #IO_L6P_T0_35 Sch=jc[7]
set_property -dict { PACKAGE_PIN E6    IOSTANDARD LVCMOS33 } [get_ports {CAM_px_data[3]}]; #IO_L22P_T3_35 Sch=jc[8]
set_property -dict { PACKAGE_PIN J2    IOSTANDARD LVCMOS33 } [get_ports {CAM_px_data[5]}]; #IO_L21P_T3_DQS_35 Sch=jc[9]
set_property -dict { PACKAGE_PIN G6    IOSTANDARD LVCMOS33 } [get_ports {CAM_px_data[7]}]; #IO_L5P_T0_AD13P_35 Sch=jc[10]
set_property -dict { PACKAGE_PIN K2    IOSTANDARD LVCMOS33 } [get_ports {CAM_px_data[0]}]; #IO_L23N_T3_35 Sch=jc[1]


##Pmod Header JD 

set_property -dict { PACKAGE_PIN H4    IOSTANDARD LVCMOS33 } [get_ports {CAM_xclk}]; #IO_L21N_T3_DQS_35 Sch=jd[1]
set_property -dict { PACKAGE_PIN H1    IOSTANDARD LVCMOS33 } [get_ports {CAM_href}]; #IO_L17P_T2_35 Sch=jd[2]
set_property -dict { PACKAGE_PIN G1    IOSTANDARD LVCMOS33 } [get_ports {CAM_pwdn}]; #IO_L17N_T2_35 Sch=jd[3]
set_property -dict { PACKAGE_PIN G3    IOSTANDARD LVCMOS33 } [get_ports {CAM_reset}]; #IO_L20N_T3_35 Sch=jd[4]
set_property -dict { PACKAGE_PIN H2    IOSTANDARD LVCMOS33 } [get_ports {CAM_pclk}]; #IO_L15P_T2_DQS_35 Sch=jd[7]
set_property -dict { PACKAGE_PIN G4    IOSTANDARD LVCMOS33 } [get_ports {CAM_vsync}]; #IO_L20P_T3_35 Sch=jd[8]
#set_property -dict { PACKAGE_PIN G2    IOSTANDARD LVCMOS33 } [get_ports { JD[9] }]; #IO_L15N_T2_DQS_35 Sch=jd[9]
#set_property -dict { PACKAGE_PIN F3    IOSTANDARD LVCMOS33 } [get_ports { JD[10] }]; #IO_L13N_T2_MRCC_35 Sch=jd[10]


##VGA Connector 

set_property -dict { PACKAGE_PIN A3    IOSTANDARD LVCMOS33 } [get_ports {VGA_R[0]}]; #IO_L8N_T1_AD14N_35 Sch=vga_r[0]
set_property -dict { PACKAGE_PIN B4    IOSTANDARD LVCMOS33 } [get_ports {VGA_R[1]}]; #IO_L7N_T1_AD6N_35 Sch=vga_r[1]
set_property -dict { PACKAGE_PIN C5    IOSTANDARD LVCMOS33 } [get_ports {VGA_R[2]}]; #IO_L1N_T0_AD4N_35 Sch=vga_r[2]
set_property -dict { PACKAGE_PIN A4    IOSTANDARD LVCMOS33 } [get_ports {VGA_R[3]}]; #IO_L8P_T1_AD14P_35 Sch=vga_r[3]

set_property -dict { PACKAGE_PIN C6    IOSTANDARD LVCMOS33 } [get_ports {VGA_G[0]}]; #IO_L1P_T0_AD4P_35 Sch=vga_g[0]
set_property -dict { PACKAGE_PIN A5    IOSTANDARD LVCMOS33 } [get_ports {VGA_G[1]}]; #IO_L3N_T0_DQS_AD5N_35 Sch=vga_g[1]
set_property -dict { PACKAGE_PIN B6    IOSTANDARD LVCMOS33 } [get_ports {VGA_G[2]}]; #IO_L2N_T0_AD12N_35 Sch=vga_g[2]
set_property -dict { PACKAGE_PIN A6    IOSTANDARD LVCMOS33 } [get_ports {VGA_G[3]}]; #IO_L3P_T0_DQS_AD5P_35 Sch=vga_g[3]

set_property -dict { PACKAGE_PIN B7    IOSTANDARD LVCMOS33 } [get_ports {VGA_B[0]}]; #IO_L2P_T0_AD12P_35 Sch=vga_b[0]
set_property -dict { PACKAGE_PIN C7    IOSTANDARD LVCMOS33 } [get_ports {VGA_B[1]}]; #IO_L4N_T0_35 Sch=vga_b[1]
set_property -dict { PACKAGE_PIN D7    IOSTANDARD LVCMOS33 } [get_ports {VGA_B[2]}]; #IO_L6N_T0_VREF_35 Sch=vga_b[2]
set_property -dict { PACKAGE_PIN D8    IOSTANDARD LVCMOS33 } [get_ports {VGA_B[3]}]; #IO_L4P_T0_35 Sch=vga_b[3]

set_property -dict { PACKAGE_PIN B11   IOSTANDARD LVCMOS33 } [get_ports {VGA_Hsync_n}]; #IO_L4P_T0_15 Sch=vga_hs
set_property -dict { PACKAGE_PIN B12   IOSTANDARD LVCMOS33 } [get_ports {VGA_Vsync_n}]; #IO_L3N_T0_DQS_AD1N_15 Sch=vga_vs






