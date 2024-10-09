module full_subtractor (
    input a,
    input b,
    input borrow_in,
    output y,
    output borrow_out
);

assign y = a ^ borrow_in ^ b;
assign borrow_out = (borrow_in & ~(a ^ b)) | (~a & b);

endmodule