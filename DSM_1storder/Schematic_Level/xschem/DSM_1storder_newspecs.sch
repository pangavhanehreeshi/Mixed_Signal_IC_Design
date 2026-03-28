v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {comparator + flipflop} 1760 180 0 0 0.4 0.4 {}
N 460 310 460 420 {lab=#net1}
N 710 310 710 420 {lab=#net2}
N 710 520 710 560 {lab=VCM}
N 460 420 540 420 {lab=#net1}
N 460 420 460 460 {lab=#net1}
N 600 420 710 420 {lab=#net2}
N 710 420 710 460 {lab=#net2}
N 320 -10 320 10 {
lab=GND}
N 320 -110 320 -70 {p1
lab=VDD}
N 460 -10 460 10 {
lab=GND}
N 460 -110 460 -70 {p1
lab=VCM}
N 800 -10 800 10 {
lab=GND}
N 800 -110 800 -70 {p1
lab=ph2}
N 710 -10 710 10 {
lab=GND}
N 710 -110 710 -70 {p1
lab=ph1}
N 640 280 670 280 {lab=ph2}
N 640 490 670 490 {lab=ph1}
N 390 490 420 490 {lab=ph2}
N 830 280 910 280 {lab=VCM}
N 870 300 910 300 {lab=#net3}
N 990 180 990 240 {lab=VOUT}
N 960 180 990 180 {lab=VOUT}
N 870 180 900 180 {lab=#net3}
N 870 180 870 250 {lab=#net3}
N 710 250 870 250 {lab=#net3}
N 990 240 1210 240 {lab=VOUT}
N 1820 240 1850 240 {
lab=ph1}
N 1820 280 1850 280 {
lab=resb}
N 2030 240 2060 240 {
lab=q}
N 1170 -10 1170 10 {
lab=GND}
N 1170 -110 1170 -70 {p1
lab=resb}
N 460 650 1000 650 {lab=#net4}
N 460 520 460 650 {lab=#net4}
N 870 250 870 300 {lab=#net3}
N 1210 240 1210 280 {lab=VOUT}
N 1730 260 1850 260 {lab=vcmp}
N 1210 280 1280 280 {lab=VOUT}
N 1280 260 1330 260 {lab=VOUT}
N 100 20 100 40 {lab=GND}
N 100 40 140 40 {lab=GND}
N 140 30 140 40 {lab=GND}
N 140 40 140 50 {lab=GND}
N 130 -40 140 -40 {lab=trip}
N 140 -40 140 -30 {lab=trip}
N 80 -20 100 -20 {lab=VDD}
N 560 -120 570 -120 {lab=VIN}
N 570 -120 570 -110 {lab=VIN}
N 570 -50 570 -30 {lab=GND}
N 1630 260 1730 260 {lab=vcmp}
N 1080 650 1730 650 {lab=vcmp}
N 1730 260 1730 650 {lab=vcmp}
N 1280 260 1280 280 {lab=VOUT}
C {capa.sym} 570 420 3 0 {name=C1
m=1
value=0.25p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 420 280 0 0 {name=p6 sig_type=std_logic lab=ph1}
C {switch_ngspice.sym} 710 280 0 0 {name=S2 model=SW1
device_model=".MODEL SW1 SW(VT=0.75 VH=0.05 RON=0.1 ROFF=100M)"}
C {lab_wire.sym} 640 280 0 0 {name=p8 sig_type=std_logic lab=ph2}
C {switch_ngspice.sym} 460 490 0 0 {name=S3 model=SW1
device_model=".MODEL SW1 SW(VT=0.75 VH=0.05 RON=0.1 ROFF=100M)"}
C {lab_wire.sym} 390 490 0 0 {name=p10 sig_type=std_logic lab=ph2}
C {switch_ngspice.sym} 710 490 0 0 {name=S4 model=SW1
device_model=".MODEL SW1 SW(VT=0.75 VH=0.05 RON=0.1 ROFF=100M)"}
C {lab_wire.sym} 640 490 0 0 {name=p12 sig_type=std_logic lab=ph1}
C {devices/code_shown.sym} -260 210 0 0 {name=MODEL only_toplevel=true

value="

.control
save all 




tran 10ms 
plot v(VIN) 
plot v(VOUT)
plot v(q)
plot v(vcmp)


.endc
"}
C {devices/gnd.sym} 320 10 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 320 -40 0 0 {name=VDD value="dc \{vdd\}"}
C {devices/vdd.sym} 320 -110 0 0 {name=l11 lab=VDD}
C {devices/gnd.sym} 460 10 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 460 -40 0 0 {name=VCM1 value="dc \{vdd/2\}"}
C {devices/vdd.sym} 460 -110 0 0 {name=l12 lab=VCM}
C {devices/gnd.sym} 800 10 0 0 {name=l16 lab=GND}
C {devices/vsource.sym} 800 -40 0 0 {name=Vph2 value="PULSE(0V 1.5V 2.25us 100ns 100ns 2us 4.5us)"}
C {devices/vdd.sym} 800 -110 0 0 {name=l17 lab=ph2}
C {devices/gnd.sym} 710 10 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 710 -40 0 0 {name=Vph1 value="PULSE(0V 1.5V 0ns 100ns 100ns 2us 4.5us)"}
C {devices/vdd.sym} 710 -110 0 0 {name=l5 lab=ph1}
C {lab_wire.sym} 460 250 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {devices/code_shown.sym} -580 580 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.inc /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {lab_wire.sym} 830 280 0 0 {name=p2 sig_type=std_logic lab=VCM}
C {capa.sym} 930 180 3 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 1080 240 0 1 {name=p3 sig_type=std_logic lab=VOUT}
C {devices/lab_wire.sym} 1630 260 0 1 {name=p5 sig_type=std_logic lab=vcmp}
C {sg13g2_stdcells/sg13g2_dfrbp_1.sym} 1940 260 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_wire.sym} 1820 240 0 0 {name=p7 sig_type=std_logic lab=ph1}
C {devices/lab_wire.sym} 1820 280 0 0 {name=p14 sig_type=std_logic lab=resb}
C {devices/lab_wire.sym} 2060 240 0 0 {name=p15 sig_type=std_logic lab=q}
C {devices/gnd.sym} 1170 10 0 0 {name=l20 lab=GND}
C {devices/vsource.sym} 1170 -40 0 0 {name=Vresb value="dc 0 pwl(0, 0, \{per/2\}, 0, \{per/2+100p\}, \{vdd\})"}
C {devices/lab_wire.sym} 1170 -110 0 0 {name=p4 sig_type=std_logic lab=resb}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1040 650 0 1 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_wire.sym} 1630 280 0 1 {name=p9 sig_type=std_logic lab=ph2}
C {lab_wire.sym} 1630 240 0 1 {name=p11 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1330 240 0 0 {name=p13 sig_type=std_logic lab=VCM}
C {switch_ngspice.sym} 460 280 0 0 {name=S1 model=SW1
device_model=".MODEL SW1 SW(VT=0.75 VH=0.05 RON=0.1 ROFF=100M)"}
C {vcvs.sym} 140 0 0 0 {name=Etrip value=\{Etrip\}}
C {gnd.sym} 140 50 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 130 -40 0 0 {name=p20 sig_type=std_logic lab=trip}
C {lab_wire.sym} 80 -20 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {code_shown.sym} -268 18 0 0 {name=param only_toplevel=false 
value="
.param Etrip=0.75
.param per=4.5u
.param temp=27
.param vdd=1.5
"}
C {lab_wire.sym} 420 300 0 0 {name=p16 sig_type=std_logic lab=trip}
C {lab_wire.sym} 420 510 0 0 {name=p17 sig_type=std_logic lab=trip}
C {lab_wire.sym} 670 300 0 0 {name=p18 sig_type=std_logic lab=trip}
C {lab_wire.sym} 670 510 0 0 {name=p19 sig_type=std_logic lab=trip}
C {vsource.sym} 570 -80 0 0 {name=Vin 
value="SINE(0.75 0.65 512)" 
savecurrent=false}
C {lab_wire.sym} 560 -120 0 0 {name=p21 sig_type=std_logic lab=VIN}
C {gnd.sym} 570 -30 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 710 560 0 0 {name=p22 sig_type=std_logic lab=VCM}
C {idealopampa_newspecs.sym} 1060 290 0 0 {name=x3}
C {comparator_newspecs.sym} 1480 260 0 0 {name=x4}
