v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1190 -120 1190 -100 {
lab=GND}
N 1190 -200 1190 -180 {
lab=v_ss}
N 1190 -200 1290 -200 {
lab=v_ss}
N 1040 -140 1040 -120 {
lab=GND}
N 1040 -580 1040 -200 {
lab=v_dd}
N 1290 -430 1290 -340 {
lab=v_in}
N 1290 -430 1640 -430 {lab=v_in}
N 1290 -280 1290 -200 {lab=v_ss}
N 1560 -580 1560 -560 {
lab=v_dd}
N 1560 -500 1560 -400 {
lab=#net1}
N 1560 -400 1620 -400 {lab=#net1}
N 1040 -580 1560 -580 {lab=v_dd}
N 1700 -200 2190 -200 {lab=v_ss}
N 1660 -570 1660 -200 {lab=v_ss}
N 1660 -200 1700 -200 {lab=v_ss}
N 1700 -240 1700 -200 {lab=v_ss}
N 1290 -200 1660 -200 {lab=v_ss}
N 2190 -670 2190 -470 {lab=v_out}
N 1700 -590 1890 -590 {lab=v_ena}
N 1700 -590 1700 -300 {lab=v_ena}
N 1660 -570 1890 -570 {lab=v_ss}
N 1620 -650 1890 -650 {lab=#net1}
N 1620 -650 1620 -400 {lab=#net1}
N 1640 -630 1890 -630 {lab=v_in}
N 1640 -630 1640 -430 {lab=v_in}
N 1760 -610 1890 -610 {lab=v_out}
N 1560 -670 1890 -670 {lab=v_dd}
N 1560 -670 1560 -580 {lab=v_dd}
N 2190 -470 2190 -380 {lab=v_out}
N 2190 -320 2190 -200 {lab=v_ss}
N 2190 -670 2270 -670 {lab=v_out}
N 1760 -470 2190 -470 {lab=v_out}
N 1760 -610 1760 -470 {lab=v_out}
C {devices/vsource.sym} 1190 -150 0 0 {name=Vss value=0}
C {devices/gnd.sym} 1190 -100 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1190 -200 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} 1040 -170 0 0 {name=Vdd value=3.3}
C {devices/gnd.sym} 1040 -120 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 1040 -210 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 1290 -310 0 0 {name=Vin value="dc 1.5 ac 1"}
C {lab_wire.sym} 1350 -430 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {spice_probe.sym} 1410 -430 0 0 {name=p5 attrs=""}
C {isource.sym} 1560 -530 0 0 {name=I0 value=37e-06}
C {capa.sym} 2190 -350 0 0 {name=C1
value=2p}
C {lab_wire.sym} 2270 -670 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {spice_probe.sym} 2210 -670 0 0 {name=p6 attrs=""}
C {devices/code_shown.sym} 380 -20 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOShv.lib mos_tt
"}
C {devices/code_shown.sym} 370 -980 0 0 {name=NGSPICE1 only_toplevel=true 
value="
            

.temp 27
.control
option sparse
save all

* ---------- AC analysis ----------
op
ac dec 101 1k 1G

* Make sure the current plot is the AC plot
setplot ac1
remzerovec

* Measurements on AC
meas ac dcgain MAX vmag(v_out) FROM=10 TO=10k
let f3db = dcgain/sqrt(2)
meas ac fbw WHEN vmag(v_out)=f3db FALL=1
let gainerror=(dcgain-1)/1
print dcgain
print fbw
print gainerror

* (optional) interactive plots inside ngspice
plot 20*log10(v_out)
plot 180/pi*ph(v_out) vs frequency

* Write ONLY the AC plot to this file
write tb_foldedcascode_nmos_2_ac.raw

* ---------- Noise analysis ----------
noise v(v_out) Vin dec 101 1k 100MEG
print onoise_total

* Make sure current plot is the noise plot
setplot noise1

* Write the noise plot to a separate file
write tb_foldedcascode_nmos_noise.raw

.endc
"}
C {devices/title.sym} 800 60 0 0 {name=l5 author="(c) 2025 Thesis_HP, Apache-2.0 license"}
C {devices/vsource.sym} 1700 -270 0 0 {name=Venable value=3.3 savecurrent=false}
C {devices/lab_wire.sym} 1700 -310 0 1 {name=p8 sig_type=std_logic lab=v_ena}
C {/foss/designs/ChipAcharya/DSM/DSM_2ndOrder/1_Schematics/real_circuits/OTA1.sym} 2040 -620 0 0 {name=x1}
