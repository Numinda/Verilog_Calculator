module Comparator8Bit(
                input[7:0] a,
                input[7:0] b,
                output eq,
                output lt,
                output gt);

        wire[3:0] a1, a2, b1, b2;
        wire eq1, eq2, lt1, lt2, gt1, gt2;

        assign a1 = {a[3:0]};
        assign a2 = {a[7:4]};
        assign b1 = {b[3:0]};
        assign b2 = {b[7:4]};

        Comparator4Bit BC_1(a1, b1, eq1, lt1, gt1); 
        Comparator4Bit BC_2(a2, b2, eq2, lt2, gt2);

        assign eq = (eq1 & eq2);
        assign lt = (lt2 | (lt1 & eq2));
        assign gt = (~lt & ~eq);

endmodule