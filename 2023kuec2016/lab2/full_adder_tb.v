`include "full_adder.v"

module full_adder_tb;

reg a, b, cin;
wire y, cout;

full_adder uut (
    .a(a),
    .b(b),
    .cin(cin),
    .y(y),
    .cout(cout)
);

initial begin
    a = 0; b = 0; cin = 0; #5;
    a = 0; b = 0; cin = 1; #5;
    a = 0; b = 1; cin = 0; #5;
    a = 0; b = 1; cin = 1; #5;
    a = 1; b = 0; cin = 0; #5;
    a = 1; b = 0; cin = 1; #5;
    a = 1; b = 1; cin = 0; #5;
    a = 1; b = 1; cin = 1; #5;
    $finish;
end

initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(0, full_adder_tb);
end

endmodule