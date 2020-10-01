** part04_mux.sp
** Objective: Lab 1 Step 4: Worst-Case Transitions; measure propagation delay
** Author: Cole Maxwell
** Generated for: hspiceD
** Generated on: Sep 18
** Design library name: gates
** Design cell name: mux
** Design view name: schematic

*------------------------------------------------------------------------
* Parameters and models
*------------------------------------------------------------------------

* include transistor models. include command can also be used to include other spice files
.include '$PDK_DIR/ncsu_basekit/models/hspice/hspice_nom.include'

* Analysis commands
.param vdd_val = 1.1
Vsupply vdd 0 vdd_val
Vgnd gnd 0 0

* Digital vector file for input from same directory
.vec 'part04_mux_input.vec'

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

.tran 1p 1200p

* 000 -> 100
.MEASURE TRAN 000-100_tdpr TRIG=v(a) VAL='vdd_val/2' RISE=1 TARG=v(y) VAL='vdd_val/2' RISE=1
.MEASURE TRAN 000-100_tr TRIG=v(y) VAL='0.2*vdd_val' RISE=1 TARG=v(y) VAL='0.8*vdd_val' RISE=1
* 100 -> 000
.MEASURE TRAN 100-000_tdpf TRIG=v(a) 'vdd_val/2' FALL=1 TARG=v(y) VAL='vdd_val/2' FALL=1
.MEASURE TRAN 100-000_tf TRIG=v(y) VAL='0.8*vdd_val' FALL=1 TARG=v(y) VAL='0.2*vdd_val' FALL=1
* 001 -> 101
.MEASURE TRAN 001-101_tdpr TRIG=v(a) VAL='vdd_val/2' RISE=1 TARG=v(y) VAL='vdd_val/2' RISE=1
.MEASURE TRAN 001-101_tr TRIG=v(y) VAL='0.2*vdd_val' RISE=1 TARG=v(y) VAL='0.8*vdd_val' RISE=1
* 101 -> 001
.MEASURE TRAN 101-001_tdpf TRIG=v(a) 'vdd_val/2' FALL=1 TARG=v(y) VAL='vdd_val/2' FALL=1
.MEASURE TRAN 101-001_tf TRIG=v(y) VAL='0.8*vdd_val' FALL=1 TARG=v(y) VAL='0.2*vdd_val' FALL=1


* 011 -> 001
.MEASURE TRAN 011-001_tdpf TRIG=v(s) 'vdd_val/2' FALL=1 TARG=v(y) VAL='vdd_val/2' FALL=1
.MEASURE TRAN 011-001_tf TRIG=v(y) VAL='0.8*vdd_val' FALL=1 TARG=v(y) VAL='0.2*vdd_val' FALL=1
* 001 -> 011
.MEASURE TRAN 001-011_tdpr TRIG=v(s) 'vdd_val/2' RISE=1 TARG=v(y) VAL='vdd_val/2' RISE=1
.MEASURE TRAN 001-011_tr TRIG=v(y) VAL='0.2*vdd_val' RISE=1 TARG=v(y) VAL='0.8*vdd_val' RISE=1
* 110 -> 100
.MEASURE TRAN 110-100_tdpr TRIG=v(s) 'vdd_val/2' FALL=1 TARG=v(y) VAL='vdd_val/2' RISE=1
.MEASURE TRAN 110-100_tr TRIG=v(y) VAL='0.2*vdd_val' RISE=1 TARG=v(y) VAL='0.8*vdd_val' RISE=1
* 100 -> 110
.MEASURE TRAN 100-110_tdpf TRIG=v(s) 'vdd_val/2' RISE=1 TARG=v(y) VAL='vdd_val/2' FALL=1
.MEASURE TRAN 100-110_tf TRIG=v(y) VAL='0.8*vdd_val' FALL=1 TARG=v(y) VAL='0.2*vdd_val' FALL=1


* 111 -> 110
.MEASURE TRAN 111-110_tdpf TRIG=v(b) 'vdd_val/2' FALL=1 TARG=v(y) VAL='vdd_val/2' FALL=1
.MEASURE TRAN 111-110_tf TRIG=v(y) VAL='0.8*vdd_val' FALL=1 TARG=v(y) VAL='0.2*vdd_val' FALL=1
* 110 -> 111
.MEASURE TRAN 110-111_tdpr TRIG=v(b) 'vdd_val/2' RISE=1 TARG=v(y) VAL='vdd_val/2' RISE=1
.MEASURE TRAN 110-111_tr TRIG=v(y) VAL='0.2*vdd_val' RISE=1 TARG=v(y) VAL='0.8*vdd_val' RISE=1
* 010 -> 011
.MEASURE TRAN 010-011_tdpr TRIG=v(b) 'vdd_val/2' RISE=1 TARG=v(y) VAL='vdd_val/2' RISE=1
.MEASURE TRAN 010-011_tr TRIG=v(y) VAL='0.2*vdd_val' RISE=1 TARG=v(y) VAL='0.8*vdd_val' RISE=1
* 011 -> 010
.MEASURE TRAN 011-010_tdpf TRIG=v(b) 'vdd_val/2' FALL=1 TARG=v(y) VAL='vdd_val/2' FALL=1
.MEASURE TRAN 011-010_tf TRIG=v(y) VAL='0.8*vdd_val' FALL=1 TARG=v(y) VAL='0.2*vdd_val' FALL=1

.END
