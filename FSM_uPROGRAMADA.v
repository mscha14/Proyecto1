`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// Estudents: Mauricio Salomón----Michael Chaves
// 
// Create Date:    12:41:09 08/02/2015 
// Design Name: 
// Module Name:    FSM_UPROGRAMADA
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: Máquina de estados microprogramada
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////


//maquina de estados microprogramada
module FSM_UPROGRAMADA(CLK,rst,G,T,CC,B,S1,S2,S3  
    );
input CLK,rst, G, T, CC, B;

output [6:0] S1; //CODIGO BCD CATODO DEL DISPLAY
output [3:0] S2; //CÓDIGO DE SELECCIÓN DEL ANODO DISPLAY
output [2:0] S3; //SALIDAS(ALARMA,LUZ,CERRADURA)

wire [2:0] sel_mux;
wire Load;
wire [4:0] dir_salto, estado_actual;
wire clk1;


div_sec divisor_frecuecia(CLK,clk1,rst);
mux_6x1 mux_condiciones({1'b1,1'b0,G,T,CC,B}, sel_mux, Load);
contador_5bits contador(clk1,dir_salto,rst, Load, estado_actual);
MEM_uPROGRAMA memoria(estado_actual, {sel_mux, dir_salto, S1, S2, S3});

endmodule