package Tb;
    import Dff :: *;

    (* synthesize *)
    module mkTb (Empty);
        Reg#(int) count  <- mkReg(0);
        Reg#(Bit#(1)) d  <- mkReg(0);
        DffIFC  dff      <- mkDff;

        rule gen_stimulas if (count < 10);
            count <=  count + 1;
            d <= ~d;
            let q <- dff.upd(d);
            $display ($time," d=%d q=%d",d,q);
        endrule

        rule finish;
            if(count>=9)
                $finish;
        endrule
        
    endmodule

endpackage