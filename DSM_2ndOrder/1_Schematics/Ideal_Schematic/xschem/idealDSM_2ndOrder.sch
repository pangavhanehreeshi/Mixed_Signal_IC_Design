v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {comparator + flipflop} 3490 -680 0 0 0.4 0.4 {}
N 1260 -550 1260 -440 {lab=#net1}
N 1510 -550 1510 -440 {lab=#net2}
N 1510 -340 1510 -300 {lab=VCM}
N 1260 -440 1340 -440 {lab=#net1}
N 1260 -440 1260 -400 {lab=#net1}
N 1400 -440 1510 -440 {lab=#net2}
N 1510 -440 1510 -400 {lab=#net2}
N 1120 -870 1120 -850 {
lab=GND}
N 1120 -970 1120 -930 {p1
lab=VDD}
N 1260 -870 1260 -850 {
lab=GND}
N 1260 -970 1260 -930 {p1
lab=VCM}
N 1600 -870 1600 -850 {
lab=GND}
N 1600 -970 1600 -930 {p1
lab=ph2}
N 1510 -870 1510 -850 {
lab=GND}
N 1510 -970 1510 -930 {p1
lab=ph1}
N 1440 -580 1470 -580 {lab=ph2}
N 1440 -370 1470 -370 {lab=ph1}
N 1190 -370 1220 -370 {lab=ph2}
N 1630 -580 1710 -580 {lab=VCM}
N 1670 -560 1710 -560 {lab=#net3}
N 1790 -680 1790 -620 {lab=VOUT}
N 1760 -680 1790 -680 {lab=VOUT}
N 1670 -680 1700 -680 {lab=#net3}
N 1670 -680 1670 -610 {lab=#net3}
N 1510 -610 1670 -610 {lab=#net3}
N 1790 -620 2010 -620 {lab=VOUT}
N 3550 -620 3580 -620 {
lab=ph1}
N 3550 -580 3580 -580 {
lab=resb}
N 3760 -620 3790 -620 {
lab=q}
N 1970 -870 1970 -850 {
lab=GND}
N 1970 -970 1970 -930 {p1
lab=resb}
N 1260 -210 2270 -210 {lab=#net4}
N 1260 -340 1260 -210 {lab=#net4}
N 1670 -610 1670 -560 {lab=#net3}
N 2010 -620 2010 -580 {lab=VOUT}
N 3460 -600 3580 -600 {lab=vcmp}
N 2010 -580 2080 -580 {lab=VOUT}
N 2080 -600 2080 -580 {lab=VOUT}
N 2080 -600 2270 -600 {lab=VOUT}
N 900 -840 900 -820 {lab=GND}
N 900 -820 940 -820 {lab=GND}
N 940 -830 940 -820 {lab=GND}
N 940 -820 940 -810 {lab=GND}
N 930 -900 940 -900 {lab=trip}
N 940 -900 940 -890 {lab=trip}
N 880 -880 900 -880 {lab=VDD}
N 1360 -980 1370 -980 {lab=VIN}
N 1370 -980 1370 -970 {lab=VIN}
N 1370 -910 1370 -890 {lab=GND}
N 3360 -600 3460 -600 {lab=vcmp}
N 2270 -210 2780 -210 {lab=#net4}
N 3460 -600 3460 -210 {lab=vcmp}
N 2270 -520 2270 -410 {lab=#net5}
N 2520 -520 2520 -410 {lab=#net6}
N 2520 -310 2520 -270 {lab=VCM}
N 2270 -410 2350 -410 {lab=#net5}
N 2270 -410 2270 -370 {lab=#net5}
N 2410 -410 2520 -410 {lab=#net6}
N 2520 -410 2520 -370 {lab=#net6}
N 2450 -550 2480 -550 {lab=ph1}
N 2450 -340 2480 -340 {lab=ph2}
N 2200 -340 2230 -340 {lab=ph1}
N 2270 -310 2270 -210 {lab=#net4}
N 2860 -210 3460 -210 {lab=vcmp}
N 2270 -600 2270 -580 {lab=VOUT}
N 2580 -580 2650 -580 {lab=#net7}
N 2980 -600 3060 -600 {lab=#net8}
N 2790 -700 2980 -700 {lab=#net8}
N 2980 -700 2980 -600 {lab=#net8}
N 2950 -600 2980 -600 {lab=#net8}
N 2580 -700 2730 -700 {lab=#net7}
N 2580 -700 2580 -580 {lab=#net7}
N 2520 -580 2580 -580 {lab=#net7}
C {capa.sym} 1370 -440 3 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 1220 -580 0 0 {name=p6 sig_type=std_logic lab=ph1}
C {switch_ngspice.sym} 1510 -580 0 0 {name=S2 model=SW1
device_model=".MODEL SW1 SW(VT=0.1 VH=0 RON=0.1 ROFF=100M)"}
C {lab_wire.sym} 1440 -580 0 0 {name=p8 sig_type=std_logic lab=ph2}
C {switch_ngspice.sym} 1260 -370 0 0 {name=S3 model=SW1
device_model=".MODEL SW1 SW(VT=0.1 VH=0 RON=0.1 ROFF=100M)"}
C {lab_wire.sym} 1190 -370 0 0 {name=p10 sig_type=std_logic lab=ph2}
C {switch_ngspice.sym} 1510 -370 0 0 {name=S4 model=SW1
device_model=".MODEL SW1 SW(VT=0.1 VH=0 RON=0.1 ROFF=100M)"}
C {lab_wire.sym} 1440 -370 0 0 {name=p12 sig_type=std_logic lab=ph1}
C {devices/code_shown.sym} 540 -650 0 0 {name=MODEL only_toplevel=true

value="

.control
save all 


tran 100n 0.2ms 0 20n uic
plot v(VIN) 
plot v(VOUT)
plot v(q)
plot v(vcmp)


.endc
"}
C {devices/gnd.sym} 1120 -850 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 1120 -900 0 0 {name=VDD value="dc \{vdd\}"}
C {devices/vdd.sym} 1120 -970 0 0 {name=l11 lab=VDD}
C {devices/gnd.sym} 1260 -850 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 1260 -900 0 0 {name=VCM1 value="dc \{vdd/2\}"}
C {devices/vdd.sym} 1260 -970 0 0 {name=l12 lab=VCM}
C {devices/gnd.sym} 1600 -850 0 0 {name=l16 lab=GND}
C {devices/vsource.sym} 1600 -900 0 0 {name=Vph2 value="PULSE(0V \{vdd\} 2.25us 100ns 100ns 2us 4.5us)"}
C {devices/vdd.sym} 1600 -970 0 0 {name=l17 lab=ph2}
C {devices/gnd.sym} 1510 -850 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 1510 -900 0 0 {name=Vph1 value="PULSE(0V \{vdd\} 0ns 100ns 100ns 2us 4.5us)"}
C {devices/vdd.sym} 1510 -970 0 0 {name=l5 lab=ph1}
C {lab_wire.sym} 1260 -610 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {devices/code_shown.sym} 530 -160 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.inc /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {lab_wire.sym} 1630 -580 0 0 {name=p2 sig_type=std_logic lab=VCM}
C {capa.sym} 1730 -680 3 0 {name=C2
m=1
value=6p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 1880 -620 0 1 {name=p3 sig_type=std_logic lab=VOUT}
C {devices/lab_wire.sym} 3360 -600 0 1 {name=p5 sig_type=std_logic lab=vcmp}
C {sg13g2_stdcells/sg13g2_dfrbp_1.sym} 3670 -600 0 0 {name=x1 VDD=1.5 VSS=0 prefix=sg13g2_ }
C {devices/lab_wire.sym} 3550 -620 0 0 {name=p7 sig_type=std_logic lab=ph1}
C {devices/lab_wire.sym} 3550 -580 0 0 {name=p14 sig_type=std_logic lab=resb}
C {devices/lab_wire.sym} 3790 -620 0 0 {name=p15 sig_type=std_logic lab=q}
C {devices/gnd.sym} 1970 -850 0 0 {name=l20 lab=GND}
C {devices/vsource.sym} 1970 -900 0 0 {name=Vresb value="dc 0 pwl(0, 0, \{per/2\}, 0, \{per/2+100p\} \{vdd\})"}
C {devices/lab_wire.sym} 1970 -970 0 0 {name=p4 sig_type=std_logic lab=resb}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 2820 -210 0 1 {name=x2 VDD=1.5 VSS=0 prefix=sg13g2_ }
C {devices/lab_wire.sym} 3360 -580 0 1 {name=p9 sig_type=std_logic lab=ph2}
C {lab_wire.sym} 3360 -620 0 1 {name=p11 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 3060 -620 0 0 {name=p13 sig_type=std_logic lab=VCM}
C {switch_ngspice.sym} 1260 -580 0 0 {name=S1 model=SW1
device_model=".MODEL SW1 SW(VT=0.1  VH=0 RON=0.1 ROFF=100M)"}
C {vcvs.sym} 940 -860 0 0 {name=Etrip value=\{Etrip\}}
C {gnd.sym} 940 -810 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 930 -900 0 0 {name=p20 sig_type=std_logic lab=trip}
C {lab_wire.sym} 880 -880 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {code_shown.sym} 532 -842 0 0 {name=param only_toplevel=false 
value="
.param Etrip=0.5
.param per=1u
.param temp=27
.param vdd=1.5
"}
C {lab_wire.sym} 1220 -560 0 0 {name=p16 sig_type=std_logic lab=trip}
C {lab_wire.sym} 1220 -350 0 0 {name=p17 sig_type=std_logic lab=trip}
C {lab_wire.sym} 1470 -560 0 0 {name=p18 sig_type=std_logic lab=trip}
C {lab_wire.sym} 1470 -350 0 0 {name=p19 sig_type=std_logic lab=trip}
C {vsource.sym} 1370 -940 0 0 {name=Vin 
value="SINE(\{vdd/2\} 0.7 80)" 
savecurrent=false}
C {lab_wire.sym} 1360 -980 0 0 {name=p21 sig_type=std_logic lab=VIN}
C {gnd.sym} 1370 -890 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 1510 -300 0 0 {name=p22 sig_type=std_logic lab=VCM}
C {capa.sym} 2380 -410 3 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 2230 -550 0 0 {name=p23 sig_type=std_logic lab=ph2}
C {switch_ngspice.sym} 2520 -550 0 0 {name=S5 model=SW1
device_model=".MODEL SW1 SW(VT=0.1 VH=0 RON=0.1 ROFF=100M)"}
C {lab_wire.sym} 2450 -550 0 0 {name=p24 sig_type=std_logic lab=ph1}
C {switch_ngspice.sym} 2270 -340 0 0 {name=S6 model=SW1
device_model=".MODEL SW1 SW(VT=0.1 VH=0 RON=0.1 ROFF=100M)"}
C {lab_wire.sym} 2200 -340 0 0 {name=p25 sig_type=std_logic lab=ph1}
C {switch_ngspice.sym} 2520 -340 0 0 {name=S7 model=SW1
device_model=".MODEL SW1 SW(VT=0.1 VH=0 RON=0.1 ROFF=100M)"}
C {lab_wire.sym} 2450 -340 0 0 {name=p27 sig_type=std_logic lab=ph2}
C {switch_ngspice.sym} 2270 -550 0 0 {name=S8 model=SW1
device_model=".MODEL SW1 SW(VT=0.1 VH=0 RON=0.1 ROFF=100M)"}
C {lab_wire.sym} 2230 -530 0 0 {name=p29 sig_type=std_logic lab=trip}
C {lab_wire.sym} 2230 -320 0 0 {name=p30 sig_type=std_logic lab=trip}
C {lab_wire.sym} 2480 -530 0 0 {name=p31 sig_type=std_logic lab=trip}
C {lab_wire.sym} 2480 -320 0 0 {name=p32 sig_type=std_logic lab=trip}
C {lab_wire.sym} 2520 -270 0 0 {name=p33 sig_type=std_logic lab=VCM}
C {lab_wire.sym} 2650 -600 0 0 {name=p28 sig_type=std_logic lab=VCM}
C {capa.sym} 2760 -700 3 0 {name=C4
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {/foss/designs/ChipAcharya/DSM/DSM_2ndOrder/1_Schematics/Ideal_Schematic/xschem/ideal_opamp.sym} 1860 -570 0 0 {name=x3}
C {/foss/designs/ChipAcharya/DSM/DSM_2ndOrder/1_Schematics/Ideal_Schematic/xschem/ideal_opamp.sym} 2800 -590 0 0 {name=x4}
C {/foss/designs/ChipAcharya/DSM/DSM_2ndOrder/1_Schematics/Ideal_Schematic/xschem/ideal_comparator.sym} 3210 -600 0 0 {name=x5}
