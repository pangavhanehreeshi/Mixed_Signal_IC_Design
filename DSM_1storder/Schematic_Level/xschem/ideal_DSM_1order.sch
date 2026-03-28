v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {comparator + flipflop} 1140 210 0 0 0.4 0.4 {}
N -160 340 -160 450 {lab=#net1}
N 90 340 90 450 {lab=#net2}
N 90 550 90 590 {lab=VCM}
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
N 210 310 290 310 {lab=VCM}
N 250 330 290 330 {lab=#net3}
N 370 210 370 270 {lab=VOUT}
N 340 210 370 210 {lab=VOUT}
N 250 210 280 210 {lab=#net3}
N 250 210 250 280 {lab=#net3}
N 90 280 250 280 {lab=#net3}
N 370 270 590 270 {lab=VOUT}
N 1200 270 1230 270 {
lab=ph1}
N 1200 310 1230 310 {
lab=resb}
N 1410 270 1440 270 {
lab=q}
N 550 20 550 40 {
lab=GND}
N 550 -80 550 -40 {p1
lab=resb}
N -160 680 380 680 {lab=#net4}
N -160 550 -160 680 {lab=#net4}
N 250 280 250 330 {lab=#net3}
N 590 270 590 310 {lab=VOUT}
N 1110 290 1230 290 {lab=vcmp}
N 590 310 660 310 {lab=VOUT}
N 660 290 660 310 {lab=VOUT}
N 660 290 710 290 {lab=VOUT}
N -520 50 -520 70 {lab=GND}
N -520 70 -480 70 {lab=GND}
N -480 60 -480 70 {lab=GND}
N -480 70 -480 80 {lab=GND}
N -490 -10 -480 -10 {lab=trip}
N -480 -10 -480 0 {lab=trip}
N -540 10 -520 10 {lab=VDD}
N -60 -90 -50 -90 {lab=VIN}
N -50 -90 -50 -80 {lab=VIN}
N -50 -20 -50 0 {lab=GND}
N 1010 290 1110 290 {lab=vcmp}
N 460 680 1110 680 {lab=vcmp}
N 1110 290 1110 680 {lab=vcmp}
C {capa.sym} -50 450 3 0 {name=C1
m=1
value=0.25p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} -200 310 0 0 {name=p6 sig_type=std_logic lab=ph1}
C {switch_ngspice.sym} 90 310 0 0 {name=S2 model=SW1
device_model=".MODEL SW1 SW(VT=0.5 VH=0 RON=0.1 ROFF=100M)"}
C {lab_wire.sym} 20 310 0 0 {name=p8 sig_type=std_logic lab=ph2}
C {switch_ngspice.sym} -160 520 0 0 {name=S3 model=SW1
device_model=".MODEL SW1 SW(VT=0.5 VH=0 RON=0.1 ROFF=100M)"}
C {lab_wire.sym} -230 520 0 0 {name=p10 sig_type=std_logic lab=ph2}
C {switch_ngspice.sym} 90 520 0 0 {name=S4 model=SW1
device_model=".MODEL SW1 SW(VT=0.5 VH=0 RON=0.1 ROFF=100M)"}
C {lab_wire.sym} 20 520 0 0 {name=p12 sig_type=std_logic lab=ph1}
C {devices/code_shown.sym} -880 240 0 0 {name=MODEL only_toplevel=true

value="

.control
save all 


tran 100n 10ms 0 20n uic
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
C {devices/gnd.sym} 180 40 0 0 {name=l16 lab=GND}
C {devices/vsource.sym} 180 -10 0 0 {name=Vph2 value="PULSE(0V 3V 2.25us 100ns 100ns 2us 4.5us)"}
C {devices/vdd.sym} 180 -80 0 0 {name=l17 lab=ph2}
C {devices/gnd.sym} 90 40 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 90 -10 0 0 {name=Vph1 value="PULSE(0V 3V 0ns 100ns 100ns 2us 4.5us)"}
C {devices/vdd.sym} 90 -80 0 0 {name=l5 lab=ph1}
C {lab_wire.sym} -160 280 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {devices/code_shown.sym} -1200 610 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.inc /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {lab_wire.sym} 210 310 0 0 {name=p2 sig_type=std_logic lab=VCM}
C {capa.sym} 310 210 3 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 460 270 0 1 {name=p3 sig_type=std_logic lab=VOUT}
C {devices/lab_wire.sym} 1010 290 0 1 {name=p5 sig_type=std_logic lab=vcmp}
C {sg13g2_stdcells/sg13g2_dfrbp_1.sym} 1320 290 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_wire.sym} 1200 270 0 0 {name=p7 sig_type=std_logic lab=ph1}
C {devices/lab_wire.sym} 1200 310 0 0 {name=p14 sig_type=std_logic lab=resb}
C {devices/lab_wire.sym} 1440 270 0 0 {name=p15 sig_type=std_logic lab=q}
C {devices/gnd.sym} 550 40 0 0 {name=l20 lab=GND}
C {devices/vsource.sym} 550 -10 0 0 {name=Vresb value="dc 0 pwl(0, 0, \{per/2\}, 0, \{per/2+100p\} \{vdd\})"}
C {devices/lab_wire.sym} 550 -80 0 0 {name=p4 sig_type=std_logic lab=resb}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 420 680 0 1 {name=x2 VDD=3 VSS=0 prefix=sg13g2_ }
C {devices/lab_wire.sym} 1010 310 0 1 {name=p9 sig_type=std_logic lab=ph2}
C {lab_wire.sym} 1010 270 0 1 {name=p11 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 710 270 0 0 {name=p13 sig_type=std_logic lab=VCM}
C {switch_ngspice.sym} -160 310 0 0 {name=S1 model=SW1
device_model=".MODEL SW1 SW(VT=0.5 VH=0 RON=0.1 ROFF=100M)"}
C {vcvs.sym} -480 30 0 0 {name=Etrip value=\{Etrip\}}
C {gnd.sym} -480 80 0 0 {name=l6 lab=GND}
C {lab_wire.sym} -490 -10 0 0 {name=p20 sig_type=std_logic lab=trip}
C {lab_wire.sym} -540 10 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {code_shown.sym} -888 48 0 0 {name=param only_toplevel=false 
value="
.param Etrip=0.5
.param per=1u
.param temp=27
.param vdd=3
"}
C {lab_wire.sym} -200 330 0 0 {name=p16 sig_type=std_logic lab=trip}
C {lab_wire.sym} -200 540 0 0 {name=p17 sig_type=std_logic lab=trip}
C {lab_wire.sym} 50 330 0 0 {name=p18 sig_type=std_logic lab=trip}
C {lab_wire.sym} 50 540 0 0 {name=p19 sig_type=std_logic lab=trip}
C {vsource.sym} -50 -50 0 0 {name=Vin 
value="SINE(1.5 1.4 80)" 
savecurrent=false}
C {lab_wire.sym} -60 -90 0 0 {name=p21 sig_type=std_logic lab=VIN}
C {gnd.sym} -50 0 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 90 590 0 0 {name=p22 sig_type=std_logic lab=VCM}
C {/foss/designs/ChipAcharya/DSM/DSM_1storder/xschem/ideal_opamp.sym} 440 320 0 0 {name=x3}
C {/foss/designs/ChipAcharya/DSM/DSM_1storder/xschem/ideal_comparator.sym} 860 290 0 0 {name=x4}
