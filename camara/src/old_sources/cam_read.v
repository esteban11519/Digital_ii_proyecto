`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:14:22 12/02/2019 
// Design Name: 
// Module Name:    cam_read 
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
module cam_read #(
		parameter AW = 15,  // Cantidad de bits  de la direcci�n
		parameter DW = 12 
		)
		(
		CAM_px_data,
		CAM_pclk,
		CAM_vsync,
		CAM_href,
		rst,
		DP_RAM_regW, 
		DP_RAM_addr_in,
		DP_RAM_data_in
   );
	
		input [7:0] CAM_px_data;
		input CAM_pclk;
		input CAM_vsync;
		input CAM_href;
		input rst;
		
		output reg DP_RAM_regW; //enable
		output reg [AW-1:0] DP_RAM_addr_in;
		output reg [DW-1:0] DP_RAM_data_in;
		
reg [1:0] cont = 1'b0;  // Contador inicializado en 0.

  always @ (posedge CAM_pclk)
  begin
    if(rst)
    begin
        DP_RAM_regW=0;
        DP_RAM_addr_in=0;
        DP_RAM_data_in=0;
    end
  
  end
 
      always @ (posedge CAM_pclk)
        begin
          if(CAM_href & ~CAM_vsync)
            begin
              if(cont == 0)
                begin
                  DP_RAM_data_in <= {CAM_px_data[3:0], DP_RAM_data_in[7:0]};
              	  DP_RAM_regW = 0;
                end
              else
            	begin
                  DP_RAM_data_in <= {DP_RAM_data_in[11:8], CAM_px_data[7:0]};
                  DP_RAM_regW = 1;
            	end
          	  cont = cont + 1;
        	end
       	end
       	
       	

      always @ (negedge CAM_pclk)
        begin
          if(CAM_href & ~CAM_vsync & (cont == 1))
            begin
              DP_RAM_addr_in = DP_RAM_addr_in + 1; 
            end
            
             if(DP_RAM_addr_in == 19199)
             begin
               DP_RAM_addr_in = 0;
             end
        end


/********************************************************************************

Por favor colocar en este archivo el desarrollo realizado por el grupo para la 
captura de datos de la cámara 

debe tener en cuenta el nombre de las entradas  y salidad propuestas 

********************************************************************************/

endmodule
