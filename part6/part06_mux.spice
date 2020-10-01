** part05_mux.sp
** Objective: Lab 1 Step 5: Performance analysis with loading
** Author: Cole Maxwell
** Generated for: hspiceD
** Generated on: Sep 21
** Design library name: gates
** Design cell name: mux_loaded
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
.vec 'part05_mux_input.vec'

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
** Cell name: mux_loaded
** View name: schematic
xi24 y gnd vdd net030 not
xi23 y gnd vdd net033 not
xi22 y gnd vdd net036 not
xi21 y gnd vdd net039 not
xi20 y gnd vdd net042 not
xi19 y gnd vdd net046 not
xi18 y gnd vdd net050 not
xi17 y gnd vdd net054 not
xi16 y gnd vdd net058 not
xi15 y gnd vdd net062 not
xi14 y gnd vdd net066 not
xi13 y gnd vdd net070 not
xi12 y gnd vdd net073 not
xi11 y gnd vdd net076 not
xi10 y gnd vdd net079 not
xi9 y gnd vdd net082 not
xi0 s gnd vdd net18 not
xi4 s b gnd vdd net21 nand
xi6 net22 net21 gnd vdd y nand
xi5 a net18 gnd vdd net22 nand
c0 y gnd 7e-15

*------------------------------------------------------------------------
* Stimulus
*------------------------------------------------------------------------

.tran 1p 500ps

* 011 -> 001
* Critical measurement for tf
*.MEASURE TRAN tf_011-001 TRIG=v(y) VAL='0.8*vdd_val' FALL=1 TARG=v(y) VAL='0.2*vdd_val' FALL=1

* 110 -> 100
* Critical measurement for tpdr
*.MEASURE TRAN tdpr_110-100 TRIG=v(s) VAL='vdd_val/2' FALL=1 TARG=v(y) VAL='vdd_val/2' RISE=1

* 100 -> 110
* Critical measurement for tpdf
*.MEASURE TRAN tdpf_100-110 TRIG=v(s) VAL='vdd_val/2' RISE=1 TARG=v(y) VAL='vdd_val/2' FALL=1

* 010 -> 011
* Critical measurement for tr
*.MEASURE TRAN tr_010-011 TRIG=v(y) VAL='0.2*vdd_val' RISE=1 TARG=v(y) VAL='0.8*vdd_val' RISE=1

* 000 -> 000
* Measure Pstat (static power delay)
.MEASURE pstat AVG P(Vsupply) FROM=0ps TO=500ps

* 000 -> 111
* Measure Pdyn (peak dynamic power)


.END
