v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 110 -60 170 -60 {lab=inn}
N 110 -100 170 -100 {lab=inp}
N 210 -130 210 -110 {lab=#net1}
N 210 -50 210 -40 {lab=GND}
N 210 -50 410 -50 {lab=GND}
N 410 -130 410 -110 {lab=out}
N 410 -130 430 -130 {lab=out}
N 210 -130 280 -130 {lab=#net1}
N 340 -130 410 -130 {lab=out}
C {gnd.sym} 210 -40 0 0 {name=l1 lab=GND}
C {vcvs.sym} 210 -80 0 0 {name=E1 value=1Meg}
C {opin.sym} 430 -130 0 0 {name=p3 lab=out}
C {res.sym} 410 -80 0 0 {name=R1
value=100Meg
footprint=1206
device=resistor
m=1}
C {ipin.sym} 110 -100 0 0 {name=p2 lab=inp}
C {ipin.sym} 110 -60 0 0 {name=p1 lab=inn}
C {res.sym} 310 -130 3 0 {name=R2
value=1000
footprint=1206
device=resistor
m=1}
