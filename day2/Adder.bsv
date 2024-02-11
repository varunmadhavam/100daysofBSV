package Adder;
    interface AdderIFC;
        method ActionValue#(int) add(int x, int y);
    endinterface

    (* synthesize *)
    module mkAdd(AdderIFC);
        Reg#(int) res <- mkReg(0);
        method ActionValue#(int) add(int x, int y);
            res <= x + y;
            return res;
        endmethod

    endmodule
endpackage