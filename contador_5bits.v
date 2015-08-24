`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// Estudents: Mauricio Salomón----Michael Chaves
// 
// Create Date:    13:52:01 07/30/2015 
// Design Name: 
// Module Name:    contador_5bits 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: Contador de 5 bits con carga, para selección de intrucciones en la memoria.
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module contador_5bits(CLK,  IN, rst,Load, OUT
    );

	input CLK,rst;
	input [4:0] IN;
	input Load;
	output reg [4:0] OUT;
	
	always @ (posedge CLK or posedge rst)
		if(rst)
			OUT <= 0;
		else if(Load)
			OUT <= IN;
		else
			OUT <= OUT + 1'b1;


endmodule 