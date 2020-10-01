* SPICE NETLIST
***************************************

.SUBCKT NTAP_2
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M1_POLY_3
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT dcont_3
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pmos_vtl_1
** N=4 EP=0 IP=2 FDC=0
*.SEEDPROM
.ENDS
***************************************
.SUBCKT PTAP_1
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT nmos_vtl_2 1 2 3 4
** N=5 EP=4 IP=2 FDC=2
M0 5 3 1 1 NMOS_VTL L=5e-08 W=9e-08 AD=1.26e-14 AS=9.45e-15 PD=4.6e-07 PS=3.9e-07 $X=0 $Y=0 $D=1
M1 2 4 5 1 NMOS_VTL L=5e-08 W=9e-08 AD=9.45e-15 AS=1.26e-14 PD=3.9e-07 PS=4.6e-07 $X=380 $Y=0 $D=1
.ENDS
***************************************
.SUBCKT mux GND VDD Y B A S
** N=9 EP=6 IP=66 FDC=14
M0 3 S GND GND NMOS_VTL L=5e-08 W=9e-08 AD=9.45e-15 AS=9.45e-15 PD=3.9e-07 PS=3.9e-07 $X=1345 $Y=1465 $D=1
M1 3 S VDD VDD PMOS_VTL L=5e-08 W=1.8e-07 AD=1.89e-14 AS=1.89e-14 PD=5.7e-07 PS=5.7e-07 $X=1345 $Y=4405 $D=0
M2 4 A VDD VDD PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.89e-14 PD=6.4e-07 PS=5.7e-07 $X=2740 $Y=4380 $D=0
M3 VDD 3 4 VDD PMOS_VTL L=5e-08 W=1.8e-07 AD=1.89e-14 AS=2.52e-14 PD=5.7e-07 PS=6.4e-07 $X=3120 $Y=4380 $D=0
M4 5 S VDD VDD PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.89e-14 PD=6.4e-07 PS=5.7e-07 $X=4365 $Y=4380 $D=0
M5 VDD B 5 VDD PMOS_VTL L=5e-08 W=1.8e-07 AD=1.89e-14 AS=2.52e-14 PD=5.7e-07 PS=6.4e-07 $X=4745 $Y=4380 $D=0
M6 Y 4 VDD VDD PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.89e-14 PD=6.4e-07 PS=5.7e-07 $X=6045 $Y=4395 $D=0
M7 VDD 5 Y VDD PMOS_VTL L=5e-08 W=1.8e-07 AD=1.89e-14 AS=2.52e-14 PD=5.7e-07 PS=6.4e-07 $X=6425 $Y=4395 $D=0
X41 GND 4 A 3 nmos_vtl_2 $T=2740 1460 0 0 $X=2420 $Y=1350
X42 GND 5 S B nmos_vtl_2 $T=4365 1460 0 0 $X=4045 $Y=1350
X43 GND Y 4 5 nmos_vtl_2 $T=6045 1460 0 0 $X=5725 $Y=1350
.ENDS
***************************************
