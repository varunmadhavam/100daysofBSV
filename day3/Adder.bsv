package Adder;
    interface AdderIFC;
        method Action add(int x, int y);
        method ActionValue#(int) result;
    endinterface

    (* synthesize *)
    module mkAdd(AdderIFC);
        Reg#(int) res       <- mkReg(0);
        Reg#(Bit#(1)) valid <- mkReg(0);

        method Action add(int x, int y);
            res   <= x + y;
            valid <= 1;
        endmethod

        method ActionValue#(int) result if(valid==1);
            valid <= 0;
            return res;
        endmethod

    endmodule
endpackage