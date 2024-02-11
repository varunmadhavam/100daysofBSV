package Tb;
    import Adder :: *;

    (* synthesize *)
    module mkTb (Empty);
        Reg#(int) count <- mkReg(0);
        Reg#(int) x     <- mkReg(0);
        AdderIFC adder  <- mkAdd;

        rule gen_stimulas if (count < 10);
            count <=  count + 1;
            $display ($time," loaded count = %d",count);
            let x = adder.add(1,count);
            $display ($time," %0d + 1 is %0d.",count,x);
        endrule

        rule finish;
            if(count>=9)
                $finish;
        endrule
        
    endmodule

endpackage
