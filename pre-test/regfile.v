`include "regfile.h"

module regfile (
				input wire 			  clk, //clock
				input wire 			  reset_,

				input wire [`AddrBus] addr, //address
				input wire [`DataBus] d_in, //input data
				input wire 			  we_, //write valid
				input wire [`DataBus] d_out //output data
  );
   
   reg [`DataBus] 					  　ff [`DATA_D-1:0]; //registers
   integer 							  i; //iterator

   assign d_out = ff[addr];

   always @(posedge clk or negedge reset_) begin
	  if (reset_ == `ENABLE_) begin
		 //reset
		 for (i = 0; i < `DATA_D; i = i + 1) begin
			ff[i] <= #1 {`DATA_W{1'b0}};
		 end
	  end else begin
		 // write access
		 if (we_ == `ENABLE_) begin
			ff[addr] <= #1 d_in;
		 end
	  end
   end

endmodule
