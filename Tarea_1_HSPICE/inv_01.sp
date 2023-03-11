* inv_01.sp

.op
.option post
.option post accurate nomod brief
.option post_version=9007
.option runlvl = 5

.lib '/mnt/vol_NFS_rh003/xfab_pdks/design/xkit/xh018/synopsys/v8_1/hspice/v8_1_2/lpmos/xh018.lib' tm
.lib '/mnt/vol_NFS_rh003/xfab_pdks/design/xkit/xh018/synopsys/v8_1/hspice/v8_1_2/lpmos/param.lib' 3s
.lib '/mnt/vol_NFS_rh003/xfab_pdks/design/xkit/xh018/synopsys/v8_1/hspice/v8_1_2/lpmos/config.lib' default

.PARAM
.OPTION POST
.GLOBAL gnd! vdd!

.SUBCKT inv vi vo
*.step param Wp 100n 3000n 200n
xm1 vo vi gnd! gnd! ne W=220.00n L=180.00n
xm0 vo vi vdd! vdd! pe W=221.5n L=180.00n 
.ENDS

XINV A Y INV
C0 Y gnd! 2E-15F

Vvdd vdd! 0 1.8v
Vgnd gnd! 0 0v

VIN A 0

.DC VIN 0 1.8 0.01
.END
