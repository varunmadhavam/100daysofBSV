all:	compile link_iverilog run_sim

compile:
	bsc -show-range-conflict -keep-fires -remove-dollar -show-module-use -show-schedule -verilog -keep-fires -g mkTb  -u Tb.bsv
	
link_iverilog:
	bsc -show-range-conflict -show-module-use -show-schedule -verilog -keep-fires -e mkTb -o sim -vsim iverilog  -u mkTb.v

run_sim:
	./sim +bscvcd

clean:
	rm -rf *.bo *.v sim *.vcd *.sched *.use
