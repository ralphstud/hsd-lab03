module my_fusedmult #(
    parameter BITWIDTH = 32
)
(
    input [BITWIDTH-1:0] ain,
    input [BITWIDTH-1:0] bin,
    input en,
    input clk,
    output [2*BITWIDTH-1:0] dout,
    
    reg [2*BITWIDTH-1:0] out
    );
/* IMPLEMENT HERE! */

always @(posedge clk) begin
    out = 0;
    if (en) out = ain * bin;    
end

assign dout = out;
endmodule
