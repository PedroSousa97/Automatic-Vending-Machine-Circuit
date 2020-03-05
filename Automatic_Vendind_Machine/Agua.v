`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:36:13 01/06/2019 
// Design Name: 
// Module Name:    Agua 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Agua(CLK, M0, M1, CANCEL, Bebida, TROCO0, TROCO1, TROCO2, TROCO3);

input CLK, M0, M1, CANCEL;
output Bebida;
output TROCO0;
output TROCO1;
output TROCO2;
output TROCO3;
reg Bebida;
reg TROCO0;
reg TROCO1;
reg TROCO2;
reg TROCO3;
reg [3:0] estado;

parameter Zero=4'b0000, Dez=4'b0001, Vinte=4'b0010, Trinta=4'b0011, Quarenta=4'b0100, Cinquenta=4'b0101, Sessenta=4'b0110, Setenta=4'b0111, Oitenta=4'b1000, Noventa=4'b1001, Cem=4'b1010;

always @ (estado)
	begin
		case (estado)
			Zero: begin
			if (CANCEL == 1)begin
			TROCO0=0;
			TROCO1=0;
			TROCO2=0;
			TROCO3=0;
			Bebida = 1'b0;
			end
			else if (CANCEL == 0)begin
			TROCO0=0;
			TROCO1=0;
			TROCO2=0;
			TROCO3=0;
			Bebida = 1'b0;
			end end
			Dez: begin
			if (CANCEL == 1) begin
			TROCO0=0;
			TROCO1=0;
			TROCO2=0;
			TROCO3=1;
			Bebida = 1'b0;
			end
			else if (CANCEL == 0)begin
			TROCO0=0;
			TROCO1=0;
			TROCO2=0;
			TROCO3=0;
			Bebida = 1'b0;
			end end
			Vinte: begin
			if (CANCEL == 1) begin
			TROCO0=0;
			TROCO1=0;
			TROCO2=1;
			TROCO3=0;
			Bebida = 1'b0;
			end
			else if (CANCEL == 0) begin
			TROCO0=0;
			TROCO1=0;
			TROCO2=0;
			TROCO3=0;
			Bebida = 1'b0;
			end end
			Trinta: begin
			if (CANCEL == 1) begin
			TROCO0=0;
			TROCO1=0;
			TROCO2=1;
			TROCO3=1;
			Bebida = 1'b0;
			end
			else if (CANCEL == 0) begin
			TROCO0=0;
			TROCO1=0;
			TROCO2=0;
			TROCO3=0;
			Bebida = 1'b0;
			end end
			Quarenta: begin
			if (CANCEL == 1) begin
			TROCO0=0;
			TROCO1=1;
			TROCO2=0;
			TROCO3=0;
			Bebida = 1'b0;
			end
			else if (CANCEL == 0) begin
			TROCO0=0;
			TROCO1=0;
			TROCO2=0;
			TROCO3=0;
			Bebida = 1'b0;
			end end
			Cinquenta: begin
			if (CANCEL == 1) begin
			TROCO0=0;
			TROCO1=1;
			TROCO2=0;
			TROCO3=1;
			Bebida = 1'b0;
			end
			else if (CANCEL == 0) begin
			TROCO0=0;
			TROCO1=0;
			TROCO2=0;
			TROCO3=0;
			Bebida = 1'b1;
			end end
			Sessenta: begin
			if (CANCEL == 1) begin
			TROCO0=0;
			TROCO1=1;
			TROCO2=1;
			TROCO3=0;
			Bebida = 1'b0;
			end
			else if (CANCEL == 0) begin
			TROCO0=0;
			TROCO1=0;
			TROCO2=0;
			TROCO3=1;
			Bebida = 1'b1;
			end end
			Setenta: begin
			if (CANCEL == 1) begin
			TROCO0=0;
			TROCO1=1;
			TROCO2=1;
			TROCO3=1;
			Bebida = 1'b0;
			end
			else if (CANCEL == 0) begin
			TROCO0=0;
			TROCO1=0;
			TROCO2=1;
			TROCO3=0;
			Bebida = 1'b1;
			end end
			Oitenta: begin
			if (CANCEL == 1) begin
			TROCO0=1;
			TROCO1=0;
			TROCO2=0;
			TROCO3=0;
			Bebida = 1'b0;
			end
			else if (CANCEL == 0) begin
			TROCO0=0;
			TROCO1=0;
			TROCO2=1;
			TROCO3=1;
			Bebida = 1'b1;
			end end
			Noventa: begin
			if (CANCEL == 1) begin
			TROCO0=1;
			TROCO1=0;
			TROCO2=0;
			TROCO3=1;
			Bebida = 1'b0;
			end
			else if (CANCEL == 0)begin
			TROCO0=0;
			TROCO1=1;
			TROCO2=0;
			TROCO3=1;
			Bebida = 1'b1;
			end end
			Cem: begin
			if (CANCEL == 1) begin
			TROCO0=1;
			TROCO1=0;
			TROCO2=1;
			TROCO3=0;
			Bebida = 1'b0;
			end
			else if (CANCEL == 0) begin
			TROCO0=0;
			TROCO1=1;
			TROCO2=1;
			TROCO3=0;
			Bebida = 1'b1;
			end end
			default: begin
			Bebida = 1'b0;
			TROCO0=0;
			TROCO1=0;
			TROCO2=0;
			TROCO3=0;
			end
		endcase
	end
always @ (posedge CLK)
	begin
			case (estado)
			Zero:
			if (M0 == 0 & M1 == 0)
			estado = Dez;
			else if (M0 == 0 & M1 == 1)
			estado = Vinte;
			else if (M0 == 1 & M1 == 0)
			estado = Cinquenta;
			else if(M0 == 1 & M1 == 1)
			estado = Cem;
			Dez:
			if (M0 == 0 & M1 == 0)
			estado = Vinte;
			else if (M0 == 0 & M1 == 1)
			estado = Trinta;
			else if (M0 == 1 & M1 == 0)
			estado = Sessenta;
			else if(M0 == 1 & M1 == 1)
			estado = Zero;
			Vinte:
			if (M0 == 0 & M1 == 0)
			estado = Trinta;
			else if (M0 == 0 & M1 == 1)
			estado = Quarenta;
			else if (M0 == 1 & M1 == 0)
			estado = Setenta;
			else if(M0 == 1 & M1 == 1)
			estado = Zero;
			Trinta:
			if (M0 == 0 & M1 == 0)
			estado = Quarenta;
			else if (M0 == 0 & M1 == 1)
			estado = Cinquenta;
			else if (M0 == 1 & M1 == 0)
			estado = Oitenta;
			else if(M0 == 1 & M1 == 1)
			estado = Zero;
			Quarenta:
			if (M0 == 0 & M1 == 0)
			estado = Cinquenta;
			else if (M0 == 0 & M1 == 1)
			estado = Sessenta;
			else if (M0 == 1 & M1 == 0)
			estado = Noventa;
			else if(M0 == 1 & M1 == 1)
			estado = Zero;
			Cinquenta:
			if (M0 == 0 & M1 == 0)
			estado = Zero;
			else if (M0 == 0 & M1 == 1)
			estado = Zero;
			else if (M0 == 1 & M1 == 0)
			estado = Zero;
			else if(M0 == 1 & M1 == 1)
			estado = Zero;
			Sessenta:
			if (M0 == 0 & M1 == 0)
			estado = Zero;
			else if (M0 == 0 & M1 == 1)
			estado = Zero;
			else if (M0 == 1 & M1 == 0)
			estado = Zero;
			else if(M0 == 1 & M1 == 1)
			estado = Zero;
			Setenta:
			if (M0 == 0 & M1 == 0)
			estado = Zero;
			else if (M0 == 0 & M1 == 1)
			estado = Zero;
			else if (M0 == 1 & M1 == 0)
			estado = Zero;
			else if(M0 == 1 & M1 == 1)
			estado = Zero;
			Oitenta:
			if (M0 == 0 & M1 == 0)
			estado = Zero;
			else if (M0 == 0 & M1 == 1)
			estado = Zero;
			else if (M0 == 1 & M1 == 0)
			estado = Zero;
			else if(M0 == 1 & M1 == 1)
			estado = Zero;
			Noventa:
			if (M0 == 0 & M1 == 0)
			estado = Zero;
			else if (M0 == 0 & M1 == 1)
			estado = Zero;
			else if (M0 == 1 & M1 == 0)
			estado = Zero;
			else if(M0 == 1 & M1 == 1)
			estado = Zero;
			Cem:
			if (M0 == 0 & M1 == 0)
			estado = Zero;
			else if (M0 == 0 & M1 == 1)
			estado = Zero;
			else if (M0 == 1 & M1 == 0)
			estado = Zero;
			else if(M0 == 1 & M1 == 1)
			estado = Zero;
			default: estado <= Zero;
		endcase
	end

endmodule
