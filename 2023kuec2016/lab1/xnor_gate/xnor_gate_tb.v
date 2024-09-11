`include "xnor_gate.v"

module xnor_gate_tb;
    reg a,b;
    wire y;

    xnor_gate a_inst (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        a = 0; b = 0;
        #10
        b = 0; b = 1;
        #10
        a = 1; b = 0;
        #10
        b = 1; b = 1;
        #10;
    end

    initial begin
        $dumpfile("xnor_gate.vcd");
        $dumpvars(0, xnor_gate_tb);
    end
endmodule