`include "half_subtractor.v"

module half_subtractor_tb;

reg a, b;
wire y, borrow;

half_subtractor uut (
    .a(a),
    .b(b),
    .y(y),
    .borrow(borrow)
);

initial begin
    a = 0; b = 0;
    #5;
    a = 0; b = 1;
    #5;
    a = 1; b = 0;
    #5;
    a = 1; b = 1;
    #5;
    $finish;
end

initial begin
    $dumpfile("half_subtractor.vcd");
    $dumpvars(0, half_subtractor_tb);
end

endmodule