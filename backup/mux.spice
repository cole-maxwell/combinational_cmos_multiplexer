** Generated for: hspiceD
** Generated on: Sep 16 19:24:35 2020
** Design library name: mux
** Design cell name: mux
** Design view name: schematic

* Include transistor models. include command can also be used to include other spice files
.include '$PDK_DIR/ncsu_basekit/models/hspice/hspice_nom.include'

.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2
+    POST

.param vdd_val=1.1

Vsupply vdd 0 vdd_val
Vgnd gnd 0 0

* Digital vector file for input
.vec 'input.vec'


** Library name: mux
** Cell name: inverter
** View name: schematic
.subckt inverter a gnd vdd y
m0 y a gnd gnd NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m1 y a vdd vdd PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
.ends inverter
** End of subcircuit definition.

** Library name: mux
** Cell name: nand
** View name: schematic
.subckt nand a b gnd vdd y
m1 y a net15 gnd NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m0 net15 b gnd gnd NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m3 y b vdd vdd PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m2 y a vdd vdd PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
.ends nand
** End of subcircuit definition.

** Library name: mux
** Cell name: mux
** View name: schematic
xi0 s gnd vdd net17 inverter
xi3 net19 net18 gnd vdd y nand
xi2 s b gnd vdd net18 nand
xi1 a net17 gnd vdd net19 nand

.tran 1p 800p
.END
