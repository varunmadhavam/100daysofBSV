all:	compile link_iverilog run_sim

compile:
	bsc -verilog -keep-fires -g mkTb  -u Tb.bsv
	
link_iverilog:
	bsc -verilog -keep-fires -e mkTb -o sim -vsim iverilog  -u mkTb.v

run_sim:
	./sim +bscvcd

clean:
	rm -rf *.bo *.v sim
