v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {comparator + flipflop} 2370 -720 0 0 0.4 0.4 {}
N 1070 -590 1070 -480 {lab=#net1}
N 1320 -590 1320 -480 {lab=#net2}
N 1320 -380 1320 -340 {lab=VCM}
N 1070 -480 1150 -480 {lab=#net1}
N 1070 -480 1070 -440 {lab=#net1}
N 1210 -480 1320 -480 {lab=#net2}
N 1320 -480 1320 -440 {lab=#net2}
N 930 -910 930 -890 {
lab=GND}
N 930 -1010 930 -970 {p1
lab=VDD}
N 1070 -910 1070 -890 {
lab=GND}
N 1070 -1010 1070 -970 {p1
lab=VCM}
N 1250 -620 1280 -620 {lab=ph2}
N 1250 -410 1280 -410 {lab=ph1}
N 1000 -410 1030 -410 {lab=ph2}
N 1440 -620 1520 -620 {lab=VCM}
N 1480 -600 1520 -600 {lab=#net3}
N 1600 -720 1600 -660 {lab=VOUT}
N 1570 -720 1600 -720 {lab=VOUT}
N 1480 -720 1510 -720 {lab=#net3}
N 1480 -720 1480 -650 {lab=#net3}
N 1320 -650 1480 -650 {lab=#net3}
N 1600 -660 1820 -660 {lab=VOUT}
N 2430 -660 2460 -660 {
lab=ph1}
N 2430 -620 2460 -620 {
lab=resb}
N 2640 -660 2670 -660 {
lab=q}
N 1780 -910 1780 -890 {
lab=GND}
N 1780 -1010 1780 -970 {p1
lab=resb}
N 1070 -250 1610 -250 {lab=#net4}
N 1070 -380 1070 -250 {lab=#net4}
N 1480 -650 1480 -600 {lab=#net3}
N 1820 -660 1820 -620 {lab=VOUT}
N 2340 -640 2460 -640 {lab=vcmp}
N 1820 -620 1890 -620 {lab=VOUT}
N 1890 -640 1890 -620 {lab=VOUT}
N 1890 -640 1940 -640 {lab=VOUT}
N 710 -880 710 -860 {lab=GND}
N 710 -860 750 -860 {lab=GND}
N 750 -870 750 -860 {lab=GND}
N 750 -860 750 -850 {lab=GND}
N 740 -940 750 -940 {lab=trip}
N 750 -940 750 -930 {lab=trip}
N 690 -920 710 -920 {lab=VDD}
N 1170 -1020 1180 -1020 {lab=VIN}
N 1180 -1020 1180 -1010 {lab=VIN}
N 1180 -950 1180 -930 {lab=GND}
N 2240 -640 2340 -640 {lab=vcmp}
N 1690 -250 2340 -250 {lab=vcmp}
N 2340 -640 2340 -250 {lab=vcmp}
N 320 -1230 320 -1210 {
lab=GND}
N 320 -1330 450 -1330 {lab=clkin}
N 320 -1330 320 -1290 {lab=clkin}
N 750 -1330 800 -1330 {lab=ph1}
N 750 -1310 800 -1310 {lab=ph2}
N 850 -910 850 -890 {
lab=GND}
N 850 -1010 850 -970 {p1
lab=VSS}
C {capa.sym} 1180 -480 3 0 {name=C1
m=1
value=0.25p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 1030 -620 0 0 {name=p6 sig_type=std_logic lab=ph1}
C {switch_ngspice.sym} 1320 -620 0 0 {name=S2 model=SW1
device_model=".MODEL SW1 SW(VT=0.5 VH=0 RON=0.1 ROFF=100M)"}
C {lab_wire.sym} 1250 -620 0 0 {name=p8 sig_type=std_logic lab=ph2}
C {switch_ngspice.sym} 1070 -410 0 0 {name=S3 model=SW1
device_model=".MODEL SW1 SW(VT=0.5 VH=0 RON=0.1 ROFF=100M)"}
C {lab_wire.sym} 1000 -410 0 0 {name=p10 sig_type=std_logic lab=ph2}
C {switch_ngspice.sym} 1320 -410 0 0 {name=S4 model=SW1
device_model=".MODEL SW1 SW(VT=0.5 VH=0 RON=0.1 ROFF=100M)"}
C {lab_wire.sym} 1250 -410 0 0 {name=p12 sig_type=std_logic lab=ph1}
C {devices/code_shown.sym} 350 -690 0 0 {name=MODEL only_toplevel=true

value="

.control
save all 


tran 100n 10us 0 20n uic
plot v(VIN) 
plot v(VOUT)
plot v(q)
plot v(vcmp)


.endc
"}
C {devices/gnd.sym} 930 -890 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 930 -940 0 0 {name=VDD value="dc \{vdd\}"}
C {devices/vdd.sym} 930 -1010 0 0 {name=l11 lab=VDD}
C {devices/gnd.sym} 1070 -890 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 1070 -940 0 0 {name=VCM1 value="dc \{vdd/2\}"}
C {devices/vdd.sym} 1070 -1010 0 0 {name=l12 lab=VCM}
C {lab_wire.sym} 1070 -650 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {devices/code_shown.sym} 30 -320 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.inc /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {lab_wire.sym} 1440 -620 0 0 {name=p2 sig_type=std_logic lab=VCM}
C {capa.sym} 1540 -720 3 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 1690 -660 0 1 {name=p3 sig_type=std_logic lab=VOUT}
C {devices/lab_wire.sym} 2240 -640 0 1 {name=p5 sig_type=std_logic lab=vcmp}
C {sg13g2_stdcells/sg13g2_dfrbp_1.sym} 2550 -640 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_wire.sym} 2430 -660 0 0 {name=p7 sig_type=std_logic lab=ph1}
C {devices/lab_wire.sym} 2430 -620 0 0 {name=p14 sig_type=std_logic lab=resb}
C {devices/lab_wire.sym} 2670 -660 0 0 {name=p15 sig_type=std_logic lab=q}
C {devices/gnd.sym} 1780 -890 0 0 {name=l20 lab=GND}
C {devices/vsource.sym} 1780 -940 0 0 {name=Vresb value="dc 0 pwl(0, 0, \{per/2\}, 0, \{per/2+100p\} \{vdd\})"}
C {devices/lab_wire.sym} 1780 -1010 0 0 {name=p4 sig_type=std_logic lab=resb}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1650 -250 0 1 {name=x2 VDD=1.5 VSS=0 prefix=sg13g2_ }
C {ideal_opamp.sym} 1670 -610 0 0 {name=x3}
C {ideal_comparator.sym} 2090 -640 0 0 {name=x4}
C {devices/lab_wire.sym} 2240 -620 0 1 {name=p9 sig_type=std_logic lab=ph2}
C {lab_wire.sym} 2240 -660 0 1 {name=p11 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1940 -660 0 0 {name=p13 sig_type=std_logic lab=VCM}
C {switch_ngspice.sym} 1070 -620 0 0 {name=S1 model=SW1
device_model=".MODEL SW1 SW(VT=0.5 VH=0 RON=0.1 ROFF=100M)"}
C {vcvs.sym} 750 -900 0 0 {name=Etrip value=\{Etrip\}}
C {gnd.sym} 750 -850 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 740 -940 0 0 {name=p20 sig_type=std_logic lab=trip}
C {lab_wire.sym} 690 -920 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {code_shown.sym} 342 -882 0 0 {name=param only_toplevel=false 
value="
.param Etrip=0.5
.param per=1u
.param temp=27
.param vdd=3
"}
C {lab_wire.sym} 1030 -600 0 0 {name=p16 sig_type=std_logic lab=trip}
C {lab_wire.sym} 1030 -390 0 0 {name=p17 sig_type=std_logic lab=trip}
C {lab_wire.sym} 1280 -600 0 0 {name=p18 sig_type=std_logic lab=trip}
C {lab_wire.sym} 1280 -390 0 0 {name=p19 sig_type=std_logic lab=trip}
C {vsource.sym} 1180 -980 0 0 {name=Vin 
value="SINE(1.5 1.4 80)" 
savecurrent=false}
C {lab_wire.sym} 1170 -1020 0 0 {name=p21 sig_type=std_logic lab=VIN}
C {gnd.sym} 1180 -930 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 1320 -340 0 0 {name=p22 sig_type=std_logic lab=VCM}
C {devices/gnd.sym} 320 -1210 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 800 -1330 0 0 {name=p23 sig_type=std_logic lab=ph1}
C {devices/lab_wire.sym} 800 -1310 0 0 {name=p24 sig_type=std_logic lab=ph2}
C {devices/lab_wire.sym} 380 -1330 0 0 {name=p25 sig_type=std_logic lab=clkin}
C {/foss/designs/CEMS_DSM/CEMS_G2/DSM/Schematics/Ideal_Circuits/Clock/ClkG.sym} 600 -1320 0 0 {name=x5}
C {devices/gnd.sym} 850 -890 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 850 -940 0 0 {name=Vss value="dc 0"}
C {devices/vdd.sym} 850 -1010 0 0 {name=l9 lab=VSS}
C {devices/vsource.sym} 320 -1260 0 0 {name=Vp1 value="dc 0 pulse(0, \{vdd\}, 0, 100p, 100p, 2.25n, 4.5n) "}
