* corner.sp
* Step response of unloaded inverter across process corners
*----------------------------------------------------------------------
* Parameters and models
*----------------------------------------------------------------------
*.option scale=25n
.param SUP=1.8 * Must set before calling .lib
.lib '/mnt/vol_NFS_rh003/xfab_pdks/design/xkit/xh018/synopsys/v8_1/hspice/v8_1_2/lpmos/xh018.lib' wz
.lib '/mnt/vol_NFS_rh003/xfab_pdks/design/xkit/xh018/synopsys/v8_1/hspice/v8_1_2/lpmos/param.lib' 3s
.lib '/mnt/vol_NFS_rh003/xfab_pdks/design/xkit/xh018/synopsys/v8_1/hspice/v8_1_2/lpmos/config.lib' default
.option post
*----------------------------------------------------------------------
* Simulation netlist
*----------------------------------------------------------------------
Vdd vdd gnd 'SUP'
Vin a gnd PULSE 0 'SUP' 25ps 0ps 0ps 200ps 800ps
XM1 y a gnd gnd ne W=220nm L=180nm
XM2 y a vdd vdd pe W=220nm L=180nm

*----------------------------------------------------------------------
* Stimulus
*----------------------------------------------------------------------
.tran 0.1ps 600ps
*.alter
*.param SUP=1.98
*.temp 0
*.lib '/mnt/vol_NFS_rh003/xfab_pdks/design/xkit/xh018/synopsys/v8_1/hspice/v8_1_2/lpmos/xh018.lib' wp
*.tran 0.1ps 2000ps

*.alter
*.param SUP=1.62
*.temp 125
*.lib '/mnt/vol_NFS_rh003/xfab_pdks/design/xkit/xh018/synopsys/v8_1/hspice/v8_1_2/lpmos/xh018.lib' ws
*.tran 0.1ps 2000ps
.end
