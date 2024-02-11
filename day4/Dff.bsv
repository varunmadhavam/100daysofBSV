package Dff;
    interface DffIFC;
        method ActionValue#(Bit#(1)) upd(Bit#(1) d);
    endinterface

    (* synthesize *)
    module mkDff(DffIFC);

        Reg#(Bit#(1)) q <- mkReg(0);

        method ActionValue#(Bit#(1)) upd(Bit#(1) d);
            q <= d;
            return q;
        endmethod

    endmodule
endpackage