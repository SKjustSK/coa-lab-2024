module half_subtractor (
    input a,
    input b,
    output y,
    output borrow
);

assign y = a ^ b;
assign borrow = ~a & b;

endmodule