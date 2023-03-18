
* nmos_iv_01.sp

.lib '/mnt/vol_NFS_rh003/xfab_pdks/design/xkit/xh018/synopsys/v8_1/hspice/v8_1_2/lpmos/xh018.lib' tm
.lib '/mnt/vol_NFS_rh003/xfab_pdks/design/xkit/xh018/synopsys/v8_1/hspice/v8_1_2/lpmos/param.lib' 3s
.lib '/mnt/vol_NFS_rh003/xfab_pdks/design/xkit/xh018/synopsys/v8_1/hspice/v8_1_2/lpmos/config.lib' default


.PARAM
.OPTION POST
.GLOBAL gnd! vdd!

Vgs g gnd! 0
Vds d gnd! 0

XM1 d g gnd! gnd! ne W=0.22um L=0.18um

Vvdd vdd! 0 1.8v
Vgnd gnd! 0 0v

.DC Vds 0 1.8 0.05 SWEEP Vgs 0.9 1.8 0.9

.PROBE DC i(XM1)

.end
