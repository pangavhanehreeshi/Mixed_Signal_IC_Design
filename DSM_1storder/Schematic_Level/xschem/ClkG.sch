v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 120 -100 180 -100 {
lab=clkin}
N 180 -100 180 -20 {lab=clkin}
N 250 -100 380 -100 {lab=clkin}
N 250 180 380 180 {lab=clkinb}
N 180 60 180 180 {lab=clkinb}
N 340 -60 380 -60 {lab=#net1}
N 340 -60 340 -20 {lab=#net1}
N 340 -20 580 120 {lab=#net1}
N 580 120 580 160 {lab=#net1}
N 500 160 580 160 {lab=#net1}
N 340 140 380 140 {lab=#net2}
N 340 100 340 140 {lab=#net2}
N 340 100 580 -40 {lab=#net2}
N 580 -80 580 -40 {lab=#net2}
N 500 -80 580 -80 {lab=#net2}
N 250 -160 250 -100 {lab=clkin}
N 180 -100 250 -100 {lab=clkin}
N 250 180 250 230 {lab=clkinb}
N 180 180 250 180 {lab=clkinb}
N 660 -80 740 -80 {lab=p1}
N 660 160 740 160 {lab=p2}
C {devices/ipin.sym} 120 -100 0 0 {name=p11 lab=clkin}
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 440 -80 0 0 {name=xn1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} 180 20 1 0 {name=xi2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 440 160 0 0 {name=xn2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/opin.sym} 740 -80 0 0 {name=p3 lab=p1}
C {devices/opin.sym} 740 160 0 0 {name=p4 lab=p2}
C {devices/lab_wire.sym} 250 -160 2 0 {name=p6 sig_type=std_logic lab=clkin}
C {sg13g2_stdcells/sg13g2_inv_4.sym} 620 -80 0 0 {name=xi3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 620 160 0 0 {name=xi4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/code_shown.sym} 20 -280 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.inc /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/lab_wire.sym} 250 230 2 0 {name=p1 sig_type=std_logic lab=clkinb}
