module half_adder (
    input a,
    input b,
    output y,
    output c
);

assign y = a ^ b;
assign c = a & b;

endmodule