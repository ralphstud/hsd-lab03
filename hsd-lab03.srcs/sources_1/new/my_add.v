module my_add #(
    parameter BITWIDTH = 32
)
(
    input [BITWIDTH-1:0] ain,
    input [BITWIDTH-1:0] bin,
    output [BITWIDTH-1:0] dout,
    output overflow
);
/* IMPLEMENT HERE! */

assign dout = ain + bin;
assign overflow = ain[BITWIDTH-1]+bin[BITWIDTH-1];

endmodule
