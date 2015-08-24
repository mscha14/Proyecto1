`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// Estudents: Mauricio Salomón----Michael Chaves
// 
// Create Date:    14:01:09 07/30/2015 
// Design Name: 
// Module Name:    div_sec
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: Divisor de frecuencia del fpga
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////


module div_sec (ck, freq,rst);


	input ck;
	input rst;
	output freq;


	reg [24:0] rcont;

	reg  rfreq;

assign freq = rfreq;


	always @(posedge ck, posedge rst)

	begin
	if(rst) begin
		rcont <= 0;
		rfreq <= 0; end
	else
	begin
		rcont <= rcont+1'b1;
		rfreq <= rfreq;
		//if(rcont==25'hfffffff)
		if(rcont==25_000_000)
			begin
				rcont <= 0; 
				rfreq <=~rfreq;
			end
	end
		end



endmodule
