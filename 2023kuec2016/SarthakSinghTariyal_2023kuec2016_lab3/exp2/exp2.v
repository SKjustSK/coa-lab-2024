module exp2(a,b,c,d,y);
    input a,b,c,d;
    output y;
    assign y = (a && b) || (c && d);
endmodule