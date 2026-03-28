v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -340 -50 -340 -30 {
lab=GND}
N -340 -150 -340 -110 {p1
lab=VDD}
N -250 -50 -250 -30 {
lab=GND}
N -250 -150 -250 -110 {p1
lab=VSS}
N 30 -10 30 10 {
lab=GND}
N 500 0 500 20 {
lab=GND}
N 610 0 610 20 {
lab=GND}
N 460 -110 610 -110 {lab=p1}
N 610 -110 610 -60 {lab=p1}
N 460 -90 500 -90 {lab=p2}
N 500 -90 500 -60 {lab=p2}
N 30 -110 160 -110 {lab=clkin}
N 30 -110 30 -70 {lab=clkin}
C {devices/gnd.sym} -340 -30 0 0 {name=l14 lab=GND}
C {devices/vsource.sym} -340 -80 0 0 {name=Vsup value="dc \{vdd\}"}
C {devices/vdd.sym} -340 -150 0 0 {name=l15 lab=VDD}
C {devices/gnd.sym} -250 -30 0 0 {name=l16 lab=GND}
C {devices/vsource.sym} -250 -80 0 0 {name=Vss value="dc 0"}
C {devices/vdd.sym} -250 -150 0 0 {name=l17 lab=VSS}
C {devices/code_shown.sym} 0 -360 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27 vdd=3 per=4.5n cl=25f
.option method=gear

.control
save all 
tran 10p 15n
meas tran tp1_p2  TRIG v(p1)  VAL=0.6 FALL=1 TARG v(p2) VAL=0.6 RISE=1
plot p1 p2
write tb_clkgen.raw
.endc
"}
C {devices/code_shown.sym} -860 60 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.inc /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/gnd.sym} 30 10 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 30 -40 0 0 {name=Vp1 value="dc 0 pulse(0, \{vdd\}, 0, 100p, 100p, 2.25n, 4.5n) "}
C {devices/capa.sym} 500 -30 0 0 {name=C4
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 500 20 0 0 {name=l6 lab=GND}
C {devices/capa.sym} 610 -30 0 0 {name=C5
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 610 20 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 510 -110 0 0 {name=p1 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 490 -90 0 0 {name=p2 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} 90 -110 0 0 {name=p21 sig_type=std_logic lab=clkin}
C {ClkG.sym} 310 -100 0 0 {name=x1}
