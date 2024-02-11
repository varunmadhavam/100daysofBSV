package Tb;
    import Adder :: *;

    (* synthesize *)
    module mkTb (Empty);
        Reg#(int) count      <- mkReg(0);
        Reg#(int) prev_count <- mkReg(0);
        AdderIFC  adder      <- mkAdd;

        rule gen_stimulas if (count < 10);
            count <=  count + 1;
            prev_count <= count;
            $display ($time," loading count = %d",count);
            adder.add(1,count);
        endrule

        rule display;
            let x <- adder.result;
            $display ($time," %0d + 1 is %0d.",prev_count,x);
        endrule

        rule finish;
            if(count>=9)
                $finish;
        endrule
        
    endmodule

endpackage
