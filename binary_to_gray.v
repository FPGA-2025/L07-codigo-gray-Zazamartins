module Binary_to_Gray (
    input  wire [3:0] binary_in,
    output wire [3:0] gray_out
);

    // O bit mais significativo (MSB) permanece o mesmo
    assign gray_out[3] = binary_in[3];
    
    // Cada bit seguinte é o XOR do bit binário atual com o próximo mais significativo
    assign gray_out[2] = binary_in[3] ^ binary_in[2];
    assign gray_out[1] = binary_in[2] ^ binary_in[1];
    assign gray_out[0] = binary_in[1] ^ binary_in[0];

endmodule