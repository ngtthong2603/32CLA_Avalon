module carry_lookahead_adder
  #(    
    parameter DATA_WIDTH    =    32,
    parameter ADD_WIDTH     =    1
  )(
    input                               clock,
    input                               reset,
    input                               CS,
    input                               WR,
    input                               RD,
    input       [ADD_WIDTH-1:0]         Address,
    input       [DATA_WIDTH-1:0]        Data,
    output 	reg    [DATA_WIDTH-1:0]        o_result
   );
    reg           [DATA_WIDTH-1:0]     i_add1, i_add2; 
        wire      [DATA_WIDTH:0]       w_C;
        wire      [DATA_WIDTH-1:0]     w_G, w_P, w_SUM;

        always@ (posedge clock, negedge reset)  begin
            if(~reset) begin
                i_add1      <=      32'b0;
                i_add2      <=      32'b0;
                // w_C         <=      33'b0;
                // w_G         <=      32'b0;
                // w_P         <=      32'b0;
                // w_SUM       <=      32'b0;
					 o_result    <=		32'b0;
            end
            else begin
                if(~CS & ~WR) begin
                    if(~Address) begin
                        i_add1      <=      Data;
                    end
                    else begin
                        i_add2      <=      Data;
                    end
                end
                if(~CS & ~RD) begin
                    if(Address) begin
                        o_result        <=      w_SUM;
                    end
                    else begin
                        o_result        <=      o_result;
                    end
                end
            end
        end
            genvar             i;
            generate
              for (i = 0; i < DATA_WIDTH; i = i + 1) begin: i_gen
                  full_adder full_adder_inst
                      ( 
                        .i_bit1(i_add1[i]),
                        .i_bit2(i_add2[i]),
                        .i_carry(w_C[i]),
                        .o_sum(w_SUM[i]),
                        .o_carry()
                        );
                end
            endgenerate
            genvar             j;
            generate
              for (j = 0; j < DATA_WIDTH; j = j + 1) begin: j_gen
                    assign w_G[j]   = i_add1[j] & i_add2[j];
                    assign w_P[j]   = i_add1[j] | i_add2[j];
                    assign w_C[j+1] = w_G[j] | (w_P[j] & w_C[j]);
                end
            endgenerate

        assign w_C[0] = 1'b0; // no carry input on first adder
 
endmodule