`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// Estudents: Mauricio Salomón----Michael Chaves
// 
// Create Date:    13:25:30 07/30/2015 
// Design Name: 
// Module Name:    mux_6x1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: Multiplexor de 6 entradas, para determinar si el contador carga una dirección o hace su cuenta normal.
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux_6x1(ENTRADAS, SEL, SALIDA
    );

   input [0:5] ENTRADAS;
	input [2:0] SEL;
	output SALIDA;	

	assign SALIDA = ENTRADAS[SEL];

endmodule
