v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -260 -80 -200 -80 {lab=inn}
N -260 -120 -200 -120 {lab=inp}
N -160 -150 -160 -130 {lab=out}
N -160 -70 -160 -60 {lab=GND}
N -160 -70 -40 -70 {lab=GND}
N -40 -150 -40 -130 {lab=out}
N -40 -150 -20 -150 {lab=out}
N -160 -150 -40 -150 {lab=out}
C {gnd.sym} -160 -60 0 0 {name=l1 lab=GND}
C {vcvs.sym} -160 -100 0 0 {name=E1 value=1Meg}
C {opin.sym} -20 -150 0 0 {name=p3 lab=out}
C {res.sym} -40 -100 0 0 {name=R1
value=100Meg
footprint=1206
device=resistor
m=1}
C {ipin.sym} -260 -120 0 0 {name=p2 lab=inp}
C {ipin.sym} -260 -80 0 0 {name=p1 lab=inn}
