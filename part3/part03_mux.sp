** part03_mux.sp
** Objective: Lab1 Step 3: Check Functionality of Schematic
** Author: Cole Maxwell
** Generated for: hspiceD
** Generated on: Sep 18 12:56:01 2020
** Design library name: gates
** Design cell name: mux
** Design view name: schematic

*------------------------------------------------------------------------
* Parameters and models
*------------------------------------------------------------------------

* include transistor models. include command can also be used to include other spice files
.include '$PDK_DIR/ncsu_basekit/models/hspice/hspice_nom.include'

* Analysis commands
.param vdd_val=1.1
Vsupply vdd 0 vdd_val
Vgnd gnd 0 0
* Digital vector file for input from same directory
.vec 'part03_mux_input.vec'

* Simulation options
.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2
+    POST

*------------------------------------------------------------------------
* Subcircuits
*------------------------------------------------------------------------

** Library name: gates
** Cell name: not
** View name: schematic
.subckt not a gnd vdd y
m0 y a gnd gnd NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m1 y a vdd vdd PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
.ends not
** End of subcircuit definition.

** Library name: gates
** Cell name: nand
** View name: schematic
.subckt nand a b gnd vdd y
m1 y a net16 gnd NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m0 net16 b gnd gnd NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m3 y b vdd vdd PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m2 y a vdd vdd PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
.ends nand
** End of subcircuit definition.

*------------------------------------------------------------------------
* Stimulation netlist
*------------------------------------------------------------------------

** Library name: gates
** Cell name: mux
** View name: schematic
xi0 s gnd vdd net18 not
xi6 net22 net21 gnd vdd y nand
xi5 a net18 gnd vdd net22 nand
xi4 s b gnd vdd net21 nand

*------------------------------------------------------------------------
* Stimulus
*------------------------------------------------------------------------

.tran 1p 800p

.END
