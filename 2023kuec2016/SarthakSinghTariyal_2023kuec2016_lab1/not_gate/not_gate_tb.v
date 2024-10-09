`include "not_gate.v"

module not_gate_tb;
    reg a;
    wire y;

    not_gate a_inst (
        .a(a),
        .y(y)
    );

    initial begin
        a = 0;
        #10
        a = 1; 
        #10;
    end

    initial begin
        $dumpfile("not_gate.vcd");
        $dumpvars(0, not_gate_tb);
    end
endmodule