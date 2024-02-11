package Adder;
    interface AdderIFC;
        method ActionValue#(int) add(int x, int y);
    endinterface

    module mkAdd(AdderIFC);

        method ActionValue#(int) add(int x, int y);
            return x + y;
        endmethod

    endmodule
endpackage