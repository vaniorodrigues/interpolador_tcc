module fme_controle(
	clock,
	reset,
	enable,
	escrita_finalizada, 
	fase1_finalizada, 
	fase2p3_finalizada,
	fase3_finalizada, 
	pos_interpolacao_finalizada,
	reseto,
	enable_buffer_int,
	direction_buffer_int,
	modo_leitura,
	c0,
	c1,
	enable_filtros,
	enable_buffers,
	direction_buffer_a,
	direction_buffer_b,
	direction_buffer_c,
	enable_buffer_verticais,
	enable_buffer_diagonais_a,
	enable_buffer_diagonais_b,
	enable_buffer_diagonais_c,
	done
	);

//--------------------------------- Parametros -----------------------------//

parameter DATA_WIDTH = 8;
 
 //------------------------------- Portas de Entrada -----------------------------------//

input clock, reset, enable;
input escrita_finalizada, fase1_finalizada, fase2p3_finalizada,fase3_finalizada, pos_interpolacao_finalizada;
//------------------------------- Sinais de Controle -----------------------------------//

output reg reseto, enable_buffer_int, direction_buffer_int, modo_leitura, 	c0, c1, enable_filtros, enable_buffers,direction_buffer_a, direction_buffer_b,direction_buffer_c, enable_buffer_verticais, 	enable_buffer_diagonais_a, enable_buffer_diagonais_b, enable_buffer_diagonais_c, done;


//--------------------------------- Estados -----------------------------//

reg [3:0] state;
parameter
INICIO = 0,
ESCRITA_INTEIRAS = 1,
FASE1 = 2,
FASE2p1 = 3,
FASE2p2 = 4,
FASE2p3 = 5,
FASE3 = 6,
POS_INTERPOLACAO_1 = 7,
POS_INTERPOLACAO_2 = 8,
POS_INTERPOLACAO_3 = 9;

always @ (state) begin
	case (state)
		INICIO:begin
			reseto = 1'b1;
			enable_buffer_int = 1'b0;
			direction_buffer_int = 1'b0;
			modo_leitura = 1'b0;
			c0 = 1'b0;
			c1 = 1'b0;
			enable_filtros = 1'b0;
			enable_buffers = 1'b0;
			direction_buffer_a = 1'b0;
			direction_buffer_b = 1'b0;
			direction_buffer_c = 1'b0;
			enable_buffer_verticais = 1'b0;
			enable_buffer_diagonais_a = 1'b0;
			enable_buffer_diagonais_b = 1'b0;
			enable_buffer_diagonais_c = 1'b0;
			done = 1'b0;
		end
		ESCRITA_INTEIRAS:begin // 8 ciclos
			reseto = 1'b0;
			enable_buffer_int = 1'b1;
			direction_buffer_int = 1'b0;
			modo_leitura = 1'b0;
			c0 = 1'b0;
			c1 = 1'b0;
			enable_filtros = 1'b0;
			enable_buffers = 1'b0;
			direction_buffer_a = 1'b0;
			direction_buffer_b = 1'b0;
			direction_buffer_c = 1'b0;
			enable_buffer_verticais = 1'b0;
			enable_buffer_diagonais_a = 1'b0;
			enable_buffer_diagonais_b = 1'b0;
			enable_buffer_diagonais_c = 1'b0;
			done = 1'b0;
			
		end
		FASE1:begin // 8 ciclos
			reseto = 1'b0;
			enable_buffer_int = 1'b1;
			direction_buffer_int = 1'b0;
			modo_leitura = 1'b1;
			c0 = 1'b0;
			c1 = 1'b0;
			enable_filtros = 1'b1;
			enable_buffers = 1'b1;
			direction_buffer_a = 1'b0;
			direction_buffer_b = 1'b0;
			direction_buffer_c = 1'b0;
			enable_buffer_verticais = 1'b0;
			enable_buffer_diagonais_a = 1'b0;
			enable_buffer_diagonais_b = 1'b0;
			enable_buffer_diagonais_c = 1'b0;
			done = 1'b0;
			
		end
		FASE2p1:begin // 1 ciclo
			reseto = 1'b0;
			enable_buffer_int = 1'b0;
			direction_buffer_int = 1'b0;
			modo_leitura = 1'b1;
			c0 = 1'b0;
			c1 = 1'b1;
			enable_filtros = 1'b1;
			enable_buffers = 1'b1;
			direction_buffer_a = 1'b1;
			direction_buffer_b = 1'b1;
			direction_buffer_c = 1'b1;
			enable_buffer_verticais = 1'b0;
			enable_buffer_diagonais_a = 1'b0;
			enable_buffer_diagonais_b = 1'b0;
			enable_buffer_diagonais_c = 1'b0;
			done = 1'b0;
		end
		FASE2p2:begin // 1 ciclo
			reseto = 1'b0;
			enable_buffer_int = 1'b1;
			direction_buffer_int = 1'b1;
			modo_leitura = 1'b1;
			c0 = 1'b0;
			c1 = 1'b1;
			enable_filtros = 1'b1;
			enable_buffers = 1'b1;
			direction_buffer_a = 1'b1;
			direction_buffer_b = 1'b1;
			direction_buffer_c = 1'b1;
			enable_buffer_verticais = 1'b1;
			enable_buffer_diagonais_a = 1'b1;
			enable_buffer_diagonais_b = 1'b0;
			enable_buffer_diagonais_c = 1'b0;
			done = 1'b0;
		end
		FASE2p3:begin // 7 ciclos
			reseto = 1'b0;
			enable_buffer_int = 1'b1;
			direction_buffer_int = 1'b1;
			modo_leitura = 1'b1;
			c0 = 1'b0;
			c1 = 1'b1;
			enable_filtros = 1'b1;
			enable_buffers = 1'b1;
			direction_buffer_a = 1'b1;
			direction_buffer_b = 1'b1;
			direction_buffer_c = 1'b1;
			enable_buffer_verticais = 1'b1;
			enable_buffer_diagonais_a = 1'b1;
			enable_buffer_diagonais_b = 1'b0;
			enable_buffer_diagonais_c = 1'b0;
			done = 1'b0;	
		end

		FASE3:begin // 9 ciclos
			reseto = 1'b0;
			enable_buffer_int = 1'b1;
			direction_buffer_int = 1'b1;
			modo_leitura = 1'b1;
			c0 = 1'b1;
			c1 = 1'b1;
			enable_filtros = 1'b1;
			enable_buffers = 1'b1;
			direction_buffer_a = 1'b1;
			direction_buffer_b = 1'b1;
			direction_buffer_c = 1'b1;
			enable_buffer_verticais = 1'b0;
			enable_buffer_diagonais_a = 1'b0;
			enable_buffer_diagonais_b = 1'b1;
			enable_buffer_diagonais_c = 1'b1;
			done = 1'b0;
			
		end
		POS_INTERPOLACAO_1:begin // 1 ciclo
			reseto = 1'b0;
			enable_buffer_int = 1'b1;
			direction_buffer_int = 1'b1;
			modo_leitura = 1'b1;
			c0 = 1'b1;
			c1 = 1'b1;
			enable_filtros = 1'b0;
			enable_buffers = 1'b1;
			direction_buffer_a = 1'b1;
			direction_buffer_b = 1'b1;
			direction_buffer_c = 1'b1;
			enable_buffer_verticais = 1'b1;
			enable_buffer_diagonais_a = 1'b1;
			enable_buffer_diagonais_b = 1'b1;
			enable_buffer_diagonais_c = 1'b1;
			done = 1'b1;
		end
		POS_INTERPOLACAO_2:begin // 1 ciclo
			reseto = 1'b0;
			enable_buffer_int = 1'b1;
			direction_buffer_int = 1'b1;
			modo_leitura = 1'b1;
			c0 = 1'b1;
			c1 = 1'b1;
			enable_filtros = 1'b0;
			enable_buffers = 1'b1;
			direction_buffer_a = 1'b1;
			direction_buffer_b = 1'b1;
			direction_buffer_c = 1'b1;
			enable_buffer_verticais = 1'b1;
			enable_buffer_diagonais_a = 1'b1;
			enable_buffer_diagonais_b = 1'b1;
			enable_buffer_diagonais_c = 1'b1;
			done = 1'b1;
		end
		POS_INTERPOLACAO_3:begin // 7 ciclos
			reseto = 1'b0;
			enable_buffer_int = 1'b1;
			direction_buffer_int = 1'b1;
			modo_leitura = 1'b1;
			c0 = 1'b1;
			c1 = 1'b1;
			enable_filtros = 1'b0;
			enable_buffers = 1'b1;
			direction_buffer_a = 1'b1;
			direction_buffer_b = 1'b1;
			enable_buffer_verticais = 1'b1;
			enable_buffer_diagonais_a = 1'b1;
			enable_buffer_diagonais_b = 1'b1;
			enable_buffer_diagonais_c = 1'b1;
			done = 1'b1;
		end
		default:begin
			reseto = 1'b1;
			enable_buffer_int = 1'b0;
			direction_buffer_int = 1'b0;
			modo_leitura = 1'b0;
			c0 = 1'b0;
			c1 = 1'b0;
			enable_filtros = 1'b0;
			enable_buffers = 1'b0;
			direction_buffer_a = 1'b0;
			direction_buffer_b = 1'b0;
			direction_buffer_c = 1'b0;
			enable_buffer_verticais = 1'b0;
			enable_buffer_diagonais_a = 1'b0;
			enable_buffer_diagonais_b = 1'b0;
			enable_buffer_diagonais_c = 1'b0;
			done = 1'b0;
		end
	endcase
end

always @ (posedge clock or posedge reset) begin
	if (reset)
		state <= INICIO;
	else
	case (state)
			INICIO: if(enable)
				state<= ESCRITA_INTEIRAS;
			ESCRITA_INTEIRAS: if (escrita_finalizada)
					state<=FASE1;
				else begin
					state<=ESCRITA_INTEIRAS;
				end
			FASE1: if (fase1_finalizada)
				state<=FASE2p1;
				else begin
				state<=FASE1;
				end
			FASE2p1: state<=FASE2p2;
			FASE2p2: state<=FASE2p3;
			FASE2p3: if (fase2p3_finalizada)
				state<=FASE3;
				else begin
					state<=FASE2p3;
				end
			FASE3:  if (fase3_finalizada)
				state<=POS_INTERPOLACAO_1;
				else begin
					state<=FASE3;
				end
			POS_INTERPOLACAO_1: state <=POS_INTERPOLACAO_2;
			POS_INTERPOLACAO_2: state <=POS_INTERPOLACAO_3;
			POS_INTERPOLACAO_3: if (pos_interpolacao_finalizada)
				state<=INICIO;
				else begin
					state<=POS_INTERPOLACAO_3;
				end
	endcase
end

endmodule