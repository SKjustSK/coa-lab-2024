module exp3(a,b,c,y);
    input a,b,c;
    output y;
    assign y = (a && b && c) || (a && ~b && c) || (~a && b && c) || (~a && ~b && c);
endmodule