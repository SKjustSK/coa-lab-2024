`include "exp3.v"

module exp3_tb;
    reg a,b,c;
    wire y;
    
    exp3 exp3_uut(
        .a(a), .b(b), .c(c), .y(y)
    );

    integer vars = 3;
    initial begin
        for (integer i = 0 ; i < 2**vars ; i += 1) begin
            a = (i / 2**(vars-1)) % 2;
            b = (i / 2**(vars-2)) % 2;
            c = (i / 2**(vars-3)) % 2;
            #5;
        end
        $finish;
    end

    initial begin
        $dumpfile("exp3.vcd");
        $dumpvars(0, exp3_tb);
    end

endmodule