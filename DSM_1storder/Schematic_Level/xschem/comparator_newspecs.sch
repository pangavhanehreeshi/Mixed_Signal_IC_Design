v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 300 -170 300 -150 {lab=sample}
N 360 -170 360 -140 {lab=sample}
N 300 -170 360 -170 {lab=sample}
N 250 -170 300 -170 {lab=sample}
N 360 -100 360 -90 {lab=GND}
N 360 -90 400 -90 {lab=GND}
N 400 -90 400 -80 {lab=GND}
N 150 -90 150 -80 {lab=GND}
N 520 -170 610 -170 {lab=hold}
N 610 -90 610 -80 {lab=GND}
N 150 -170 150 -150 {lab=diff}
N 150 -170 190 -170 {lab=diff}
N 400 -170 400 -150 {lab=#net1}
N 400 -170 460 -170 {lab=#net1}
N 710 -90 710 -80 {lab=GND}
N 350 -260 350 -250 {lab=GND}
N 310 -270 310 -250 {lab=GND}
N 310 -250 350 -250 {lab=GND}
N 350 -340 350 -320 {lab=tp}
N 90 -140 110 -140 {lab=Vinp}
N 90 -100 110 -100 {lab=Vinn}
N 490 -130 490 -100 {lab=clk}
N 610 -170 610 -150 {lab=hold}
N 510 -130 510 -100 {lab=tp}
N 710 -170 880 -170 {lab=#net2}
N 710 -170 710 -150 {lab=#net2}
N 290 -310 310 -310 {lab=Vdd}
N 510 -100 520 -100 {lab=tp}
N 220 -130 220 -100 {lab=tp}
N 210 -100 220 -100 {lab=tp}
N 300 -90 300 -80 {lab=GND}
N 240 -130 240 -100 {lab=clk}
N 470 -100 490 -100 {lab=clk}
N 990 -110 990 -100 {lab=GND}
N 940 -170 1040 -170 {lab=Vout}
C {vcvs.sym} 150 -120 0 0 {name=E1 value=1}
C {switch_ngspice.sym} 220 -170 3 0 {name=S1 model=SW1
device_model=".MODEL SW1 SW( VT=0.4 VH=0.01 RON=0.01 ROFF=10G )"}
C {vcvs.sym} 400 -120 0 0 {name=E2 value=1}
C {capa.sym} 300 -120 0 0 {name=C1
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 400 -80 0 0 {name=l1 lab=GND}
C {gnd.sym} 300 -80 0 0 {name=l2 lab=GND}
C {gnd.sym} 150 -80 0 0 {name=l3 lab=GND}
C {switch_ngspice.sym} 490 -170 3 0 {name=S2 model=SW1
device_model=".MODEL SW1 SW( VT=0.4 VH=0.01 RON=0.01 ROFF=10G )"}
C {capa.sym} 610 -120 0 0 {name=C2
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 610 -80 0 0 {name=l4 lab=GND}
C {vsource.sym} 710 -120 0 0 {name=B1 value="V=\{v(hold)>0?v(Vdd):0\}" 
savecurrent=false}
C {gnd.sym} 710 -80 0 0 {name=l5 lab=GND}
C {vcvs.sym} 350 -290 0 0 {name=Etp value="0.75"}
C {gnd.sym} 350 -250 0 0 {name=l6 lab=GND}
C {ipin.sym} 90 -140 0 0 {name=p3 lab=Vinp}
C {ipin.sym} 90 -100 0 0 {name=p4 lab=Vinn}
C {opin.sym} 1040 -170 0 0 {name=p7 lab=Vout}
C {lab_wire.sym} 180 -170 0 0 {name=p12 sig_type=std_logic lab=diff}
C {lab_wire.sym} 350 -340 0 0 {name=p2 sig_type=std_logic lab=tp}
C {lab_wire.sym} 310 -170 0 1 {name=p8 sig_type=std_logic lab=sample}
C {lab_wire.sym} 520 -100 0 1 {name=p6 sig_type=std_logic lab=tp}
C {lab_wire.sym} 560 -170 0 1 {name=p9 sig_type=std_logic lab=hold}
C {lab_wire.sym} 210 -100 0 0 {name=p10 sig_type=std_logic lab=tp}
C {code_shown.sym} 620 -310 0 0 {name=s3 only_toplevel=false 
value="
.ic v(hold)=1 v(sample)=1
"}
C {iopin.sym} 290 -310 0 1 {name=p1 lab=Vdd}
C {iopin.sym} 240 -100 0 0 {name=p11 lab=clk}
C {lab_wire.sym} 470 -100 0 0 {name=p5 sig_type=std_logic lab=clk}
C {code_shown.sym} 620 -380 0 0 {name=param only_toplevel=false value=".param vdd=1.5"}
C {capa.sym} 990 -140 0 0 {name=C3
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 990 -100 0 0 {name=l7 lab=GND}
C {res.sym} 910 -170 3 0 {name=R2
value=1000
footprint=1206
device=resistor
m=1}
