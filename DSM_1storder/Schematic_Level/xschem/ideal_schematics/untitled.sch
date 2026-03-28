v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {comparator + flipflop} 680 210 0 0 0.4 0.4 {}
N -160 340 -160 450 {lab=#net1}
N 50 330 50 380 {lab=GND}
N 90 340 90 450 {lab=#net2}
N -200 540 -200 590 {lab=GND}
N 50 540 50 590 {lab=GND}
N 90 550 90 590 {lab=GND}
N -160 450 -80 450 {lab=#net1}
N -160 450 -160 490 {lab=#net1}
N -20 450 90 450 {lab=#net2}
N 90 450 90 490 {lab=#net2}
N -300 20 -300 40 {
lab=GND}
N -300 -80 -300 -40 {p1
lab=VDD}
N -160 20 -160 40 {
lab=GND}
N -160 -80 -160 -40 {p1
lab=VCM}
N -30 20 -30 40 {
lab=GND}
N -30 -80 -30 -40 {p1
lab=VIN}
N 180 20 180 40 {
lab=GND}
N 180 -80 180 -40 {p1
lab=ph2}
N 90 20 90 40 {
lab=GND}
N 90 -80 90 -40 {p1
lab=ph1}
N 20 310 50 310 {lab=ph2}
N 20 520 50 520 {lab=ph1}
N -230 520 -200 520 {lab=ph2}
N -180 280 -160 280 {lab=VIN}
N 300 320 330 320 {lab=VCM}
N 250 280 330 280 {lab=#net3}
N 370 210 370 270 {lab=VOUT}
N 340 210 370 210 {lab=VOUT}
N 250 210 280 210 {lab=#net3}
N 250 210 250 280 {lab=#net3}
N 90 280 250 280 {lab=#net3}
N 370 270 460 270 {lab=VOUT}
N 680 290 680 310 {
lab=vcmp}
N 680 290 770 290 {
lab=vcmp}
N 740 270 770 270 {
lab=ph1}
N 740 310 770 310 {
lab=resb}
N 950 270 980 270 {
lab=q}
N 680 370 680 400 {lab=GND}
N 550 20 550 40 {
lab=GND}
N 550 -80 550 -40 {p1
lab=resb}
N 460 680 980 680 {lab=q}
N -160 680 380 680 {lab=#net4}
N -160 550 -160 680 {lab=#net4}
N 980 270 980 680 {lab=q}
N -70 310 -70 340 {lab=#net1}
N -160 340 -70 340 {lab=#net1}
N -160 310 -130 310 {lab=VIN}
N -160 280 -160 310 {lab=VIN}
N -150 270 -120 270 {lab=GND}
N -150 220 -150 270 {lab=GND}
N -290 220 -150 220 {lab=GND}
N -100 230 -100 270 {lab=ph1}
C {capa.sym} -50 450 3 0 {name=C1
m=1
value=0.4p
footprint=1206
device="ceramic capacitor"}
C {switch_ngspice.sym} -100 310 1 0 {name=S1 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.75 VH=0.01
+ RON=10 ROFF=10G "}
C {lab_wire.sym} -100 230 0 0 {name=p6 sig_type=std_logic lab=ph1}
C {gnd.sym} -290 220 0 0 {name=l7 lab=GND}
C {switch_ngspice.sym} 90 310 0 0 {name=S2 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.75 VH=0.01
+ RON=10 ROFF=10G "}
C {lab_wire.sym} 20 310 0 0 {name=p8 sig_type=std_logic lab=ph2}
C {gnd.sym} 50 380 0 0 {name=l8 lab=GND}
C {switch_ngspice.sym} -160 520 0 0 {name=S3 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.75 VH=0.01
+ RON=10 ROFF=10G "}
C {lab_wire.sym} -230 520 0 0 {name=p10 sig_type=std_logic lab=ph2}
C {gnd.sym} -200 590 0 0 {name=l9 lab=GND}
C {switch_ngspice.sym} 90 520 0 0 {name=S4 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.75 VH=0.01
+ RON=10 ROFF=10G "}
C {lab_wire.sym} 20 520 0 0 {name=p12 sig_type=std_logic lab=ph1}
C {gnd.sym} 50 590 0 0 {name=l10 lab=GND}
C {devices/code_shown.sym} -880 240 0 0 {name=MODEL only_toplevel=true

value="
.param temp=27 vdd=1.5 per=1u


.control
save all 
.ic v(vout)=0.75

tran 0.1u 200u
plot v(VIN) 
plot v(VOUT)
plot v(q)
plot v(vcmp)


.endc
"}
C {devices/gnd.sym} -300 40 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -300 -10 0 0 {name=VDD value="dc \{vdd\}"}
C {devices/vdd.sym} -300 -80 0 0 {name=l11 lab=VDD}
C {devices/gnd.sym} -160 40 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -160 -10 0 0 {name=VCM1 value="dc \{vdd/2\}"}
C {devices/vdd.sym} -160 -80 0 0 {name=l12 lab=VCM}
C {devices/gnd.sym} -30 40 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -30 -10 0 0 {name=vin1 value="dc 0 ac SINE(0.75 0.6 80)"}
C {devices/vdd.sym} -30 -80 0 0 {name=l13 lab=VIN}
C {devices/gnd.sym} 180 40 0 0 {name=l16 lab=GND}
C {devices/vsource.sym} 180 -10 0 0 {name=Vph2 value="dc 0 ac PULSE(0 1.5 2.27u 10n 10n 2.17u 4.545u)"}
C {devices/vdd.sym} 180 -80 0 0 {name=l17 lab=ph2}
C {devices/gnd.sym} 90 40 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 90 -10 0 0 {name=Vph1 value="dc 0 ac PULSE(0 1.5 0 10n 10n 2.17u 4.545u)"}
C {devices/vdd.sym} 90 -80 0 0 {name=l5 lab=ph1}
C {lab_wire.sym} -180 280 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {devices/code_shown.sym} -1200 610 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.inc /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {vcvs.sym} 370 300 0 0 {name=E1 value=-10000}
C {lab_wire.sym} 300 320 0 0 {name=p2 sig_type=std_logic lab=VCM}
C {devices/gnd.sym} 370 330 0 0 {name=l6 lab=GND}
C {capa.sym} 310 210 3 0 {name=C2
m=1
value=2.76p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 460 270 0 1 {name=p3 sig_type=std_logic lab=VOUT}
C {devices/gnd.sym} 680 400 0 0 {name=l15 lab=GND}
C {devices/vsource.sym} 680 340 0 0 {name=E2 value="TABLE \{V(VOUT,VCM)\} = (-0.1mV, 0V) (0.1mV, \{vdd\})"}
C {devices/lab_wire.sym} 740 290 0 0 {name=p5 sig_type=std_logic lab=vcmp}
C {sg13g2_stdcells/sg13g2_dfrbp_1.sym} 860 290 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_wire.sym} 740 270 0 0 {name=p7 sig_type=std_logic lab=ph1}
C {devices/lab_wire.sym} 740 310 0 0 {name=p14 sig_type=std_logic lab=resb}
C {devices/lab_wire.sym} 980 270 0 0 {name=p15 sig_type=std_logic lab=q}
C {gnd.sym} 90 590 0 0 {name=l19 lab=GND}
C {devices/gnd.sym} 550 40 0 0 {name=l20 lab=GND}
C {devices/vsource.sym} 550 -10 0 0 {name=Vresb value="dc 0 pwl(0, 0, \{per/2\}, 0, \{per/2+100p\} \{vdd\}"}
C {devices/lab_wire.sym} 550 -80 0 0 {name=p4 sig_type=std_logic lab=resb}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 420 680 0 1 {name=x2 VDD=1.5 VSS=0 prefix=sg13g2_ }
