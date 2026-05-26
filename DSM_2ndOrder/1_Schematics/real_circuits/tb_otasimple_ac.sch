v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1070 -70 1070 -50 {
lab=GND}
N 1070 -150 1070 -130 {
lab=v_ss}
N 1070 -150 1170 -150 {
lab=v_ss}
N 920 -90 920 -70 {
lab=GND}
N 1170 -230 1170 -150 {lab=v_ss}
N 1790 -150 2070 -150 {lab=v_ss}
N 1580 -190 1580 -150 {lab=v_ss}
N 1170 -150 1580 -150 {lab=v_ss}
N 2070 -620 2070 -330 {lab=v_out}
N 2070 -270 2070 -150 {lab=v_ss}
N 2070 -620 2150 -620 {lab=v_out}
N 2030 -620 2070 -620 {lab=v_out}
N 1700 -650 1750 -650 {lab=#net1}
N 1700 -780 1840 -780 {lab=#net1}
N 2030 -780 2030 -620 {lab=v_out}
N 1950 -620 2030 -620 {lab=v_out}
N 1900 -780 2030 -780 {lab=v_out}
N 1430 -620 1750 -620 {lab=#net2}
N 920 -680 1430 -680 {lab=v_dd}
N 920 -680 920 -150 {lab=v_dd}
N 1170 -590 1290 -590 {lab=v_in}
N 1170 -590 1170 -290 {lab=v_in}
N 1580 -260 1580 -250 {lab=v_ena}
N 1790 -550 1790 -150 {lab=v_ss}
N 1580 -150 1790 -150 {lab=v_ss}
N 1830 -550 1830 -500 {lab=v_ena}
N 1430 -690 1790 -690 {lab=v_dd}
N 1430 -690 1430 -680 {lab=v_dd}
N 1700 -650 1700 -590 {lab=#net1}
N 1350 -590 1700 -590 {lab=#net1}
N 1700 -780 1700 -650 {lab=#net1}
N 800 -90 800 -70 {
lab=GND}
N 1730 -590 1750 -590 {lab=v_cm}
N 1730 -590 1730 -540 {lab=v_cm}
N 1660 -540 1730 -540 {lab=v_cm}
N 800 -160 800 -150 {lab=v_cm}
C {devices/vsource.sym} 1070 -100 0 0 {name=Vss value=0}
C {devices/gnd.sym} 1070 -50 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1070 -150 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} 920 -120 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 920 -70 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 920 -160 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 1170 -260 0 0 {name=Vin value="dc 0.7 ac 0.8"}
C {lab_wire.sym} 1170 -380 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {spice_probe.sym} 1170 -330 0 0 {name=p5 attrs=""}
C {isource.sym} 1430 -650 0 0 {name=I0 value=301.5e-06}
C {capa.sym} 2070 -300 0 0 {name=C1
value=1p}
C {lab_wire.sym} 2150 -620 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {spice_probe.sym} 2090 -620 0 0 {name=p6 attrs=""}
C {devices/code_shown.sym} 260 30 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 250 -930 0 0 {name=NGSPICE1 only_toplevel=true 
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
C {devices/title.sym} 680 110 0 0 {name=l5 author="(c) 2025 Thesis_HP, Apache-2.0 license"}
C {devices/vsource.sym} 1580 -220 0 0 {name=Venable value=1.5 savecurrent=false}
C {devices/lab_wire.sym} 1580 -260 0 1 {name=p8 sig_type=std_logic lab=v_ena}
C {ota1_simple.sym} 1900 -620 0 0 {name=x1}
C {capa.sym} 1870 -780 3 0 {name=C2
value=6p}
C {devices/lab_wire.sym} 1830 -500 1 1 {name=p7 sig_type=std_logic lab=v_ena}
C {capa.sym} 1320 -590 3 0 {name=C3
value=1p}
C {devices/vsource.sym} 800 -120 0 0 {name=Vdd1 value=0.75}
C {devices/gnd.sym} 800 -70 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 800 -160 0 0 {name=p9 sig_type=std_logic lab=v_cm}
C {lab_pin.sym} 1660 -540 0 0 {name=p10 sig_type=std_logic lab=v_cm}
