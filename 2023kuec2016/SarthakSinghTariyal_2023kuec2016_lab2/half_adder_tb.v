`include "half_adder.v"

module half_adder_tb;

reg a, b;
wire y, c;

half_adder uut (
    .a(a),
    .b(b),
    .y(y),
    .c(c)
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
    $dumpfile("half_adder.vcd");
    $dumpvars(0, half_adder_tb);
end

endmodule