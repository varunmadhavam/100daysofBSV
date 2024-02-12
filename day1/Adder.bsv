package Adder;
    interface AdderIFC;
        method int add(int x, int y);
    endinterface

    module mkAdd(AdderIFC);

        method int add(int x, int y);
            return x + y;
        endmethod

    endmodule
endpackage