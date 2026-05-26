v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -290 10 -130 10 {lab=v_in}
N -480 400 -480 420 {lab=v_ss}
N -480 320 -480 340 {lab=v_in}
N -380 400 -380 420 {
lab=GND}
N -380 320 -380 340 {lab=v_dd}
N -210 -90 -210 -30 {lab=#net1}
N -210 -30 -130 -30 {lab=#net1}
N -130 -160 -130 -50 {lab=v_dd}
N -210 -160 -130 -160 {lab=v_dd}
N -210 -160 -210 -150 {lab=v_dd}
N -280 -160 -210 -160 {lab=v_dd}
N 260 -50 260 -10 {lab=#net2}
N 200 -50 260 -50 {lab=#net2}
N -260 180 -260 220 {lab=v_ss}
N -260 220 260 220 {lab=v_ss}
N 260 50 260 220 {lab=v_ss}
N 200 -50 200 150 {lab=#net2}
N 170 -50 200 -50 {lab=#net2}
N 90 150 200 150 {lab=#net2}
N -30 150 30 150 {lab=#net3}
N -210 -10 -130 -10 {lab=vmeas2}
N -210 -10 -210 80 {lab=vmeas2}
N -260 80 -210 80 {lab=vmeas2}
N -260 80 -260 120 {lab=vmeas2}
N -130 150 -90 150 {lab=vmeas2}
N -130 80 -130 150 {lab=vmeas2}
N -210 80 -130 80 {lab=vmeas2}
N -280 390 -280 410 {lab=v_ss}
N -1100 0 -940 0 {lab=v_in}
N -1020 -100 -1020 -40 {lab=#net4}
N -1020 -40 -940 -40 {lab=#net4}
N -940 -170 -940 -60 {lab=v_dd}
N -1020 -170 -940 -170 {lab=v_dd}
N -1020 -170 -1020 -160 {lab=v_dd}
N -1090 -170 -1020 -170 {lab=v_dd}
N -550 -60 -550 -20 {lab=#net5}
N -610 -60 -550 -60 {lab=#net5}
N -1070 170 -1070 210 {lab=v_ss}
N -1070 210 -550 210 {lab=v_ss}
N -550 40 -550 210 {lab=v_ss}
N -610 -60 -610 140 {lab=#net5}
N -640 -60 -610 -60 {lab=#net5}
N -720 140 -610 140 {lab=#net5}
N -840 140 -780 140 {lab=#net6}
N -1020 -20 -940 -20 {lab=vmeas1}
N -1020 -20 -1020 70 {lab=vmeas1}
N -1070 70 -1020 70 {lab=vmeas1}
N -1070 70 -1070 110 {lab=vmeas1}
N -940 140 -900 140 {lab=vmeas1}
N -940 70 -940 140 {lab=vmeas1}
N -1020 70 -940 70 {lab=vmeas1}
N -600 400 -600 420 {
lab=GND}
N -600 320 -600 340 {lab=v_ss}
C {OTA1.sym} 20 0 0 0 {name=x1}
C {devices/lab_wire.sym} -290 10 0 0 {name=p40 sig_type=std_logic lab=v_in}
C {devices/vsource.sym} -480 370 0 0 {name=Vin value="dc 1.5"}
C {devices/lab_wire.sym} -480 320 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {devices/lab_pin.sym} -480 420 0 0 {name=p11 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} -380 370 0 0 {name=Vdd value="dc 3.3"}
C {devices/gnd.sym} -380 420 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -380 320 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/lab_pin.sym} -280 -160 0 0 {name=p1 sig_type=std_logic lab=v_dd}
C {devices/isource.sym} -210 -120 0 0 {name=I7 value=40u pwl(0 0 10u 0 11u 40u)"}
C {devices/capa.sym} 260 20 0 0 {name=C1
value=2p}
C {devices/isource.sym} -260 150 2 1 {name=Itest1 value="dc 0 ac 1"}
C {devices/lab_pin.sym} -260 220 0 0 {name=p5 sig_type=std_logic lab=v_ss}
C {devices/lab_wire.sym} -260 100 2 0 {name=p6 sig_type=std_logic lab=vmeas2}
C {devices/vsource.sym} -60 150 3 0 {name=Vtest1 value="dc 0 ac 0"}
C {devices/ammeter.sym} 60 150 1 0 {name=Vimeas4 savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} -130 50 0 0 {name=p7 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} -280 360 0 0 {name=Venable value="dc 3.3" savecurrent=false}
C {devices/lab_pin.sym} -280 410 0 0 {name=p12 sig_type=std_logic lab=v_ss}
C {devices/lab_wire.sym} -280 330 0 0 {name=p8 sig_type=std_logic lab=v_ena}
C {devices/lab_wire.sym} -130 30 0 0 {name=p9 sig_type=std_logic lab=v_ena}
C {OTA1.sym} -790 -10 0 0 {name=x2}
C {devices/lab_wire.sym} -1100 0 0 0 {name=p3 sig_type=std_logic lab=v_in}
C {devices/lab_pin.sym} -1090 -170 0 0 {name=p10 sig_type=std_logic lab=v_dd}
C {devices/isource.sym} -1020 -130 0 0 {name=I1 value=40u pwl(0 0 10u 0 11u 40u)"}
C {devices/capa.sym} -550 10 0 0 {name=C2
value=2p}
C {devices/isource.sym} -1070 140 2 1 {name=Itest2 value="dc 0 ac 0"}
C {devices/lab_pin.sym} -1070 210 0 0 {name=p13 sig_type=std_logic lab=v_ss}
C {devices/lab_wire.sym} -1070 90 2 0 {name=p14 sig_type=std_logic lab=vmeas1}
C {devices/vsource.sym} -870 140 3 0 {name=Vtest2 value="dc 0 ac 1"}
C {devices/ammeter.sym} -750 140 1 0 {name=Vimeas3 savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} -940 40 0 0 {name=p15 sig_type=std_logic lab=v_ss}
C {devices/lab_wire.sym} -940 20 0 0 {name=p16 sig_type=std_logic lab=v_ena}
C {devices/vsource.sym} -600 370 0 0 {name=Vss value=0}
C {devices/gnd.sym} -600 420 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -600 320 0 0 {name=p17 sig_type=std_logic lab=v_ss}
C {devices/code_shown.sym} -1770 -300 0 0 {name=NGSPICE1
only_toplevel=true
value="


.param temp=27
.options savecurrents reltol=1e-3 abstol=1e-12 gmin=1e-15
.control
save all

* Operating Point Analysis
op

* AC Analysis
ac dec 101 1 100G
remzerovec



* Tian's Method
*vtest=0, itest=1:
let A = i(Vimeas2)
let C = v(vmeas2)

*vtest=1, itest=0:
let B = i(Vimeas1)
let D = v(vmeas1)
let ttian = (A*D - B*C - A)/(2*(B*C - A*D) + A - D + 1)

* optional interactive plots

plot db(ttian) ylabel 'Magnitude - Tian'
plot 180/pi*cphase(ttian) ylabel 'Phase - Tian'



* SINGLE clean write at the end
write foldedcascode_nmos_tb-loopgain.raw

.endc
"}
C {devices/code_shown.sym} -1770 440 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
