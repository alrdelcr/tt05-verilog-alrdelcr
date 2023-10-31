`default_nettype none


module mat_vec_mult (
    input wire [7:0] vector, // input vector that has 8 bits to represent 0s or 1s
    output reg [7:0] result // final calculated bit vector 
);

// makes a matrix
reg [7:0] matrix [0:7][0:7] = {
    {8'h01, 8'h02, 8'h03, 8'h04, 8'h05, 8'h06, 8'h07, 8'h08},
    {8'h09, 8'h0A, 8'h0B, 8'h0C, 8'h0D, 8'h0E, 8'h0F, 8'h10},
    {8'h11, 8'h12, 8'h13, 8'h14, 8'h15, 8'h16, 8'h17, 8'h18},
    {8'h19, 8'h1A, 8'h1B, 8'h1C, 8'h1D, 8'h1E, 8'h1F, 8'h20},
    {8'h21, 8'h22, 8'h23, 8'h24, 8'h25, 8'h26, 8'h27, 8'h28},
    {8'h29, 8'h2A, 8'h2B, 8'h2C, 8'h2D, 8'h2E, 8'h2F, 8'h30},
    {8'h31, 8'h32, 8'h33, 8'h34, 8'h35, 8'h36, 8'h37, 8'h38},
    {8'h39, 8'h3A, 8'h3B, 8'h3C, 8'h3D, 8'h3E, 8'h3F, 8'h40}
  };


assign result[0] = (vector[0] * matrix[0][0]) + (vector[1] * matrix[1][0]) + (vector[2] * matrix[2][0]) + (vector[3] * matrix[3][0]) + (vector[4] * matrix[4][0]) + (vector[5] * matrix[5][0]) + (vector[6] * matrix[6][0]) + (vector[7] * matrix[7][0]);
assign result[1] = (vector[0] * matrix[0][1]) + (vector[1] * matrix[1][1]) + (vector[2] * matrix[2][1]) + (vector[3] * matrix[3][1]) + (vector[4] * matrix[4][1]) + (vector[5] * matrix[5][1]) + (vector[6] * matrix[6][1]) + (vector[7] * matrix[7][1]);
assign result[2] = (vector[0] * matrix[0][2]) + (vector[1] * matrix[1][2]) + (vector[2] * matrix[2][2]) + (vector[3] * matrix[3][2]) + (vector[4] * matrix[4][2]) + (vector[5] * matrix[5][2]) + (vector[6] * matrix[6][2]) + (vector[7] * matrix[7][2]);
assign result[3] = (vector[0] * matrix[0][3]) + (vector[1] * matrix[1][3]) + (vector[2] * matrix[2][3]) + (vector[3] * matrix[3][3]) + (vector[4] * matrix[4][3]) + (vector[5] * matrix[5][3]) + (vector[6] * matrix[6][3]) + (vector[7] * matrix[7][3]);
assign result[4] = (vector[0] * matrix[0][4]) + (vector[1] * matrix[1][4]) + (vector[2] * matrix[2][4]) + (vector[3] * matrix[3][4]) + (vector[4] * matrix[4][4]) + (vector[5] * matrix[5][4]) + (vector[6] * matrix[6][4]) + (vector[7] * matrix[7][4]);
assign result[5] = (vector[0] * matrix[0][5]) + (vector[1] * matrix[1][5]) + (vector[2] * matrix[2][5]) + (vector[3] * matrix[3][5]) + (vector[4] * matrix[4][5]) + (vector[5] * matrix[5][5]) + (vector[6] * matrix[6][5]) + (vector[7] * matrix[7][5]);
assign result[6] = (vector[0] * matrix[0][6]) + (vector[1] * matrix[1][6]) + (vector[2] * matrix[2][6]) + (vector[3] * matrix[3][6]) + (vector[4] * matrix[4][6]) + (vector[5] * matrix[5][6]) + (vector[6] * matrix[6][6]) + (vector[7] * matrix[7][6]);
assign result[7] = (vector[0] * matrix[0][7]) + (vector[1] * matrix[1][7]) + (vector[2] * matrix[2][7]) + (vector[3] * matrix[3][7]) + (vector[4] * matrix[4][7]) + (vector[5] * matrix[5][7]) + (vector[6] * matrix[6][7]) + (vector[7] * matrix[7][7]);


endmodule

