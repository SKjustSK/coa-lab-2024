`include "exp1.v"

module exp1_tb;
    reg a,b,c,d;
    wire y;
    
    exp1 exp1_uut(
        .a(a), .b(b), .c(c), .d(d), .y(y)
    );

    integer vars = 4;
    initial begin
        for (integer i = 0 ; i < 2**vars ; i += 1) begin
            a = (i / 2**(vars-1)) % 2;
            b = (i / 2**(vars-2)) % 2;
            c = (i / 2**(vars-3)) % 2;
            d = (i / 2**(vars-4)) % 2;
            #5;
        end
        $finish;
    end

    initial begin
        $dumpfile("exp1.vcd");
        $dumpvars(0, exp1_tb);
    end

endmodule