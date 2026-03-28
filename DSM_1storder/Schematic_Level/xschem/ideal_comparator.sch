v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -160 -120 -160 -100 {lab=sample}
N -100 -120 -100 -90 {lab=sample}
N -160 -120 -100 -120 {lab=sample}
N -210 -120 -160 -120 {lab=sample}
N -100 -50 -100 -40 {lab=GND}
N -100 -40 -60 -40 {lab=GND}
N -60 -40 -60 -30 {lab=GND}
N -310 -40 -310 -30 {lab=GND}
N 60 -120 150 -120 {lab=hold}
N 150 -40 150 -30 {lab=GND}
N -310 -120 -310 -100 {lab=diff}
N -310 -120 -270 -120 {lab=diff}
N -60 -120 -60 -100 {lab=#net1}
N -60 -120 0 -120 {lab=#net1}
N 250 -40 250 -30 {lab=GND}
N -110 -210 -110 -200 {lab=GND}
N -150 -220 -150 -200 {lab=GND}
N -150 -200 -110 -200 {lab=GND}
N -110 -290 -110 -270 {lab=tp}
N -370 -90 -350 -90 {lab=Vinp}
N -370 -50 -350 -50 {lab=Vinn}
N 30 -80 30 -50 {lab=clk}
N 150 -120 150 -100 {lab=hold}
N 50 -80 50 -50 {lab=tp}
N 250 -120 420 -120 {lab=Vout}
N 250 -120 250 -100 {lab=Vout}
N -170 -260 -150 -260 {lab=Vdd}
N 50 -50 60 -50 {lab=tp}
N -240 -80 -240 -50 {lab=tp}
N -250 -50 -240 -50 {lab=tp}
N -160 -40 -160 -30 {lab=GND}
N -220 -80 -220 -50 {lab=clk}
N 10 -50 30 -50 {lab=clk}
C {vcvs.sym} -310 -70 0 0 {name=E1 value=1}
C {switch_ngspice.sym} -240 -120 3 0 {name=S1 model=SW1
device_model=".MODEL SW1 SW( VT=0.9 VH=0.01 RON=0.01 ROFF=10G )"}
C {vcvs.sym} -60 -70 0 0 {name=E2 value=1}
C {capa.sym} -160 -70 0 0 {name=C1
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -60 -30 0 0 {name=l1 lab=GND}
C {gnd.sym} -160 -30 0 0 {name=l2 lab=GND}
C {gnd.sym} -310 -30 0 0 {name=l3 lab=GND}
C {switch_ngspice.sym} 30 -120 3 0 {name=S2 model=SW1
device_model=".MODEL SW1 SW( VT=0.9 VH=0.01 RON=0.01 ROFF=10G )"}
C {capa.sym} 150 -70 0 0 {name=C2
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 150 -30 0 0 {name=l4 lab=GND}
C {vsource.sym} 250 -70 0 0 {name=B1 value="V=\{v(hold)>0?v(Vdd):0\}" 
savecurrent=false}
C {gnd.sym} 250 -30 0 0 {name=l5 lab=GND}
C {vcvs.sym} -110 -240 0 0 {name=Etp value=0.5}
C {gnd.sym} -110 -200 0 0 {name=l6 lab=GND}
C {ipin.sym} -370 -90 0 0 {name=p3 lab=Vinp}
C {ipin.sym} -370 -50 0 0 {name=p4 lab=Vinn}
C {opin.sym} 420 -120 0 0 {name=p7 lab=Vout}
C {lab_wire.sym} -280 -120 0 0 {name=p12 sig_type=std_logic lab=diff}
C {lab_wire.sym} -110 -290 0 0 {name=p2 sig_type=std_logic lab=tp}
C {lab_wire.sym} -150 -120 0 1 {name=p8 sig_type=std_logic lab=sample}
C {lab_wire.sym} 60 -50 0 1 {name=p6 sig_type=std_logic lab=tp}
C {lab_wire.sym} 100 -120 0 1 {name=p9 sig_type=std_logic lab=hold}
C {lab_wire.sym} -250 -50 0 0 {name=p10 sig_type=std_logic lab=tp}
C {code_shown.sym} 160 -260 0 0 {name=s3 only_toplevel=false 
value="
.ic v(hold)=1 v(sample)=1
"}
C {iopin.sym} -170 -260 0 1 {name=p1 lab=Vdd}
C {iopin.sym} -220 -50 0 0 {name=p11 lab=clk}
C {lab_wire.sym} 10 -50 0 0 {name=p5 sig_type=std_logic lab=clk}
C {code_shown.sym} 160 -330 0 0 {name=param only_toplevel=false value=".param vdd=1.5"}
