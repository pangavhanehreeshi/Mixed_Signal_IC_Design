v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 870 -170 870 -150 {
lab=GND}
N 950 -170 950 -150 {
lab=GND}
N 950 -250 950 -230 {
lab=v_ss}
N 1370 -690 1410 -690 {
lab=v_dd}
N 1650 -400 1650 -250 {
lab=v_ss}
N 1650 -500 1650 -460 {
lab=v_out}
N 1570 -500 1650 -500 {
lab=v_out}
N 1570 -500 1570 -380 {
lab=v_out}
N 1250 -380 1570 -380 {
lab=v_out}
N 1250 -470 1250 -380 {
lab=v_out}
N 1250 -470 1320 -470 {
lab=v_out}
N 1050 -380 1050 -250 {
lab=v_ss}
N 950 -250 1050 -250 {
lab=v_ss}
N 1050 -530 1050 -440 {
lab=v_in}
N 1050 -530 1320 -530 {
lab=v_in}
N 1410 -690 1410 -670 {
lab=v_dd}
N 1410 -610 1410 -560 {
lab=#net1}
N 1370 -690 1370 -570 {
lab=v_dd}
N 1410 -270 1410 -250 {
lab=v_ss}
N 1410 -250 1650 -250 {
lab=v_ss}
N 870 -690 1370 -690 {lab=v_dd}
N 870 -690 870 -230 {lab=v_dd}
N 1480 -500 1570 -500 {lab=v_out}
N 1050 -250 1370 -250 {
lab=v_ss}
N 1370 -430 1370 -250 {lab=v_ss}
N 1370 -250 1410 -250 {
lab=v_ss}
N 1410 -440 1410 -330 {
lab=v_ena}
C {devices/code_shown.sym} 350 -620 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27

.ic v(v_out)=0
.option method=gear

.control
tran 0.005u 15u uic
plot v_ena v_out

let vout_limit=0.8*0.99
meas tran tcross WHEN v(v_out)=vout_limit
let vena_limit=0.5*1.5
meas tran tstart WHEN v(v_ena)=vena_limit
let tsettle=tcross-tstart
print tsettle

.endc
"}
C {devices/vsource.sym} 870 -200 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 870 -150 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 870 -250 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 950 -200 0 0 {name=Vss value=0}
C {devices/gnd.sym} 950 -150 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 950 -250 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/capa.sym} 1650 -430 0 0 {name=C1
value=50f}
C {devices/lab_wire.sym} 1650 -500 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} 1050 -410 0 0 {name=Vin value=0.8}
C {devices/lab_wire.sym} 1110 -530 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {devices/isource.sym} 1410 -640 0 0 {name=I0 value="dc 0 pwl(0 0 1.1u 0 1.2u 5u)"}
C {devices/vsource.sym} 1410 -300 0 0 {name=Venable value="dc 0 pwl(0 0 1u 0 1.1u 1.5)" savecurrent=false}
C {devices/spice_probe.sym} 1170 -530 0 0 {name=p5 attrs=""}
C {devices/spice_probe.sym} 1530 -500 0 0 {name=p6 attrs=""}
C {devices/spice_probe.sym} 1410 -350 0 0 {name=p7 attrs=""}
C {devices/lab_wire.sym} 1410 -350 0 0 {name=p8 sig_type=std_logic lab=v_ena}
C {OTA1.sym} 1470 -500 0 0 {name=x1}
