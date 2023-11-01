`default_nettype none

module mat_vec_mult (
    input wire [7:0] vector, // input vector that has 8 bits to represent 0s or 1s
    input  wire       clk,      // clock
    output reg [7:0] result // final calculated bit vector 
);

reg state;

reg old_state;

// makes a matrix that is populated with 8-bit values from 0x01 to 0x40 in hex.
reg [7:0] matrix [0:5][0:5] = {
    {8'h01, 8'h02, 8'h03, 8'h04, 8'h05, 8'h06},
    {8'h07, 8'h08, 8'h09, 8'h0A, 8'h0B, 8'h0C},
    {8'h0D, 8'h0E, 8'h0F, 8'h10, 8'h11, 8'h12},
    {8'h13, 8'h14, 8'h15, 8'h16, 8'h17, 8'h18},
    {8'h19, 8'h1A, 8'h1B, 8'h1C, 8'h1D, 8'h1E},
    {8'h1F, 8'h20, 8'h21, 8'h22, 8'h23, 8'h24}
};


always@(posedge clk) begin
    old_state <= state; // move the state to old_state
    state <= vector[0]; // move the new vector[0] value 
    if (state != old_state) begin // the state has changed on this pos_edge
        result[0] = (vector[2] * matrix[0][0]) + (vector[3] * matrix[1][0]) + (vector[4] * matrix[2][0]) + (vector[5] * matrix[3][0]) + (vector[6] * matrix[4][0]) + (vector[7] * matrix[5][0]);
        result[1] = (vector[2] * matrix[0][1]) + (vector[3] * matrix[1][1]) + (vector[4] * matrix[2][1]) + (vector[5] * matrix[3][1]) + (vector[6] * matrix[4][1]) + (vector[7] * matrix[5][1]);
        result[2] = (vector[2] * matrix[0][2]) + (vector[3] * matrix[1][2]) + (vector[4] * matrix[2][2]) + (vector[5] * matrix[3][2]) + (vector[6] * matrix[4][2]) + (vector[7] * matrix[5][2]);
        result[3] = (vector[2] * matrix[0][3]) + (vector[3] * matrix[1][3]) + (vector[4] * matrix[2][3]) + (vector[5] * matrix[3][3]) + (vector[6] * matrix[4][3]) + (vector[7] * matrix[5][3]);
        result[4] = (vector[2] * matrix[0][4]) + (vector[3] * matrix[1][4]) + (vector[4] * matrix[2][4]) + (vector[5] * matrix[3][4]) + (vector[6] * matrix[4][4]) + (vector[7] * matrix[5][4]);
        result[5] = (vector[2] * matrix[0][5]) + (vector[3] * matrix[1][5]) + (vector[4] * matrix[2][5]) + (vector[5] * matrix[3][5]) + (vector[6] * matrix[4][5]) + (vector[7] * matrix[5][5]);
    end
end

endmodule

