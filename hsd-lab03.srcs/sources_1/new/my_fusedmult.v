module my_fusedmult #(
    parameter BITWIDTH = 32
)
(
    input [BITWIDTH-1:0] ain,
    input [BITWIDTH-1:0] bin,
    input en,
    input clk,
    output [2*BITWIDTH-1:0] dout
    );
/* IMPLEMENT HERE! */

    reg [2*BITWIDTH-1:0] out;

    always @(posedge clk) begin     
        if (en) out = out + ain * bin; else out=0;     
    end

    assign dout = out;
endmodule
