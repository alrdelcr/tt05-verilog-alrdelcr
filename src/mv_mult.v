`default_nettype none

module mat_vec_mult (
    input wire [7:0] vector, // input vector that has 8 bits to represent 0s or 1s
    input  wire       clk,      // clock
    output reg [5:0] result // final calculated bit vector 
);

reg state; 
reg old_state;
reg state2; 
reg old_state2;

// Define your 6x6 matrix
reg [7:0] matrix [0:5][0:5];
// counter
reg counter = 0;


// Initialize the matrix with 8-bit values from 0x01 to 0x40 in hex
initial begin
    for (int i = 0; i < 6; i = i + 1) begin
        for (int j = 0; j < 6; j = j + 1) begin
            matrix[i][j] = 8'b00000000; // Initialize each element to 8-bit 0
        end
    end
end


always@(posedge clk) begin
    old_state <= state; // move the state to old_state
    state <= vector[0]; // move the new vector[0] value 
    old_state2 <= state2; // move the state to old_state
    state2 <= vector[1]; // move the new vector[1] value 
    if (state2 != old_state2) begin
        // Write to the matrix
        matrix[counter][0] <= result[0];
        matrix[counter][1] <= result[1];
        matrix[counter][2] <= result[2];
        matrix[counter][3] <= result[3];
        matrix[counter][4] <= result[4];
        matrix[counter][5] <= result[5];
        
        counter <= counter + 1;
        
        if (counter > 5) begin
            counter <= 0; // Reset counter after writing all elements
        end
    end
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