`include "full_subtractor.v"

module full_subtractor_tb;

reg a, b, borrow_in;
wire y, borrow_out;

full_subtractor uut (
    .a(a),
    .b(b),
    .borrow_in(borrow_in),
    .y(y),
    .borrow_out(borrow_out)
);

initial begin
    a = 0; b = 0; borrow_in = 0; #5;
    a = 0; b = 0; borrow_in = 1; #5;
    a = 0; b = 1; borrow_in = 0; #5;
    a = 0; b = 1; borrow_in = 1; #5;
    a = 1; b = 0; borrow_in = 0; #5;
    a = 1; b = 0; borrow_in = 1; #5;
    a = 1; b = 1; borrow_in = 0; #5;
    a = 1; b = 1; borrow_in = 1; #5;
    $finish;
end

initial begin
    $dumpfile("full_subtractor.vcd");
    $dumpvars(0, full_subtractor_tb);
end

endmodule