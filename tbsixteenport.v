
`define IHL_ENABLE
`define WAVE_DUMP


module tbsixteenport; 
	reg  rstn0;
	reg  clk0;
          wire [7:0] data_out1;
          wire [7:0] data_out2;
          wire [7:0] data_out3;
          wire [7:0] data_out4;
          wire [7:0] data_out5, data_out6, data_out7, data_out8, data_out9, data_out10, data_out11, data_out12, data_out13, data_out14, data_out15,data_out16;
    reg [7:0] data1;
    reg [7:0] data2;
    reg [7:0] data3;
    reg [7:0] data4;
    reg [7:0] data5,data6,data7,data8,data9,data10,data11,data12,data13,data14,data15,data16;
    reg wr1;
    reg wr2;
    reg wr3;
    reg wr4,wr5,wr6,wr7,wr8,wr9,wr10,wr11,wr12,wr13,wr14,wr15,wr16;
   
  
  
 
   




wire data_op;

initial
begin
  rstn0 = 1'b1;
  #100;
  rstn0 = 1'b0;
  #100;
  @(posedge clk0);
  rstn0 = 1'b1;
end

initial
begin
 
  data1 = 8'd0;
  data2 = 8'd0;
  data3 = 8'd0;
  data4 = 8'd0;
  data5 = 8'd0;
  data6 = 8'd0;
  data7 = 8'd0;
  data8 = 8'd0;
  data9 = 8'd0;
  data10 = 8'd0;
  data11 = 8'd0;
  data12 = 8'd0;
  data13 = 8'd0;
  data14 = 8'd0;
  data15 = 8'd0;
  data16 = 8'd0;
  wr1  = 1'd0;
  wr2  = 1'd0;
  wr3  = 1'd0;
  wr4  = 1'd0;
  wr5  = 1'd0;
  wr6  = 1'd0;
  wr7  = 1'd0;
  wr8  = 1'd0;
  wr9  = 1'd0;
  wr10  = 1'd0;
  wr11  = 1'd0;
  wr12  = 1'd0;
  wr13  = 1'd0;
  wr14  = 1'd0;
  wr15  = 1'd0;
  wr16  = 1'd0;

  
  #800;
 
  #800;
  @(posedge clk0);
  #1;
  wr1  = 1'd1;
   data1 = 8'h17;
  #10

  @(posedge clk0);
  #1;
 wr1  = 1'd0; 
 data1 = 8'd0;
  wr2  = 1'd1; 
 data2 = 8'h13;

  #10
;
  @(posedge clk0);
  #1;
   wr2  = 1'd0; 
 data2 = 8'd0;
  wr3  = 1'd1; 
 data3 = 8'hd4;
   #10
  
  @(posedge clk0);
  #1;
   wr3  = 1'd0; 
 data3 = 8'd0;
  wr4  = 1'd1; 
 data4 = 8'h31;
  #10
  
  @(posedge clk0);
  #1;
   wr4  = 1'd0; 
 data4 = 8'd0;
  wr5  = 1'd1; 
 data5 = 8'h32;
  #10
  
  @(posedge clk0);
  #1;
   wr5  = 1'd0; 
 data5 = 8'd0;
  wr4  = 1'd1; 
 data4 = 8'h30;
 #10
  
  @(posedge clk0);
  #1;
   wr4  = 1'd0; 
 data4 = 8'd0;

   #10
  
  @(posedge clk0);
  #1;
   wr5  = 1'd0; 
 data5 = 8'd0;
  wr6  = 1'd1; 
 data6 = 8'h37;

   #10
  
  @(posedge clk0);
  #1;
   wr6  = 1'd0; 
 data6 = 8'd0;
  wr7  = 1'd1; 
 data7 = 8'h21;

  #10
  
  @(posedge clk0);
  #1;
   wr7  = 1'd0; 
 data7 = 8'd0;
  wr8  = 1'd1; 
 data8 = 8'h39;
  #10
  
  @(posedge clk0);
  #1;
   wr8  = 1'd0; 
 data8 = 8'd0;
  wr9  = 1'd1; 
 data9 = 8'h14;
   #10
  
  @(posedge clk0);
  #1;
   wr9  = 1'd0; 
 data9 = 8'd0;
  wr10  = 1'd1; 
 data10 = 8'h27;
   
   #10
  
  @(posedge clk0);
  #1;
   wr10  = 1'd0; 
 data10 = 8'd0;
  wr11  = 1'd1; 
 data11 = 8'h1C; 
   #10
  
  @(posedge clk0);
  #1;
   wr11  = 1'd0; 
 data11 = 8'd0;
  wr12  = 1'd1; 
 data12 = 8'h2A;

   #10
  
  @(posedge clk0);
  #1;
   wr12  = 1'd0; 
 data12 = 8'd0;
  wr13  = 1'd1; 
 data13 = 8'h1E;

   #10
  
  @(posedge clk0);
  #1;
   wr13  = 1'd0; 
 data13 = 8'd0;
  wr14  = 1'd1; 
 data14 = 8'h2B;

  #10
  
  @(posedge clk0);
  #1;
   wr14  = 1'd0; 
 data14 = 8'd0;
  wr15  = 1'd1; 
 data15 = 8'h7D;
 #10
  
  @(posedge clk0);
  #1;
   wr15  = 1'd0; 
 data15 = 8'd0;
  wr16  = 1'd1; 
 data16 = 8'h9F;
   #10
  
  @(posedge clk0);
  #1;
   wr16  = 1'd0; 
 data16 = 8'd0;

   #160
   #100
   
      #100
   
      #100
  
      #100
   
    #100
   
   #160
  #3000
  $finish;

end

/*
initial
begin
  data_in = 1'b0;
  #8000;
  data_in = 1'b0;
  #8000;
  @(posedge clk0);
  #1;
   data_in = 1'b1;
  #100
   data_in = 1'b0;
   #30000;
$finish;
end
*/


initial
begin
  clk0 = 1'b0;
  forever #10 clk0 = ~clk0;
end

final_top i_final_top 
(
.clk  (clk0    ),
.reset  (rstn0 ),
.data1  (data1 ),
.data2 (data2 ),
.data3 (data3 ),
.data4 ( data4),
.data5 ( data5),
.data6 ( data6),
.data7 ( data7),
.data8 ( data8),
.data9 ( data9),
.data10 ( data10),
.data11 ( data11),
.data12 ( data12),
.data13 ( data13),
.data14 ( data14),
.data15 ( data15),
.data16 ( data16),

.wr1 (wr1 ),
.wr2 (wr2 ),
.wr3 (wr3 ),
.wr4 ( wr4),
.wr5 (wr5 ),
.wr6 (wr6 ),
.wr7 (wr7 ),
.wr8 (wr8 ),
.wr9 (wr9 ),
.wr10 (wr10 ),
.wr11 (wr11 ),
.wr12 (wr12 ),
.wr13 (wr13 ),
.wr14 (wr14 ),
.wr15 (wr15 ),
.wr16 (wr16 ),


.datao1 (data_out1 ),
.datao2 ( data_out2),
.datao3 (data_out3 ),
.datao4 (data_out4 ),
.datao5 (data_out5 ),
.datao6 (data_out6 ),
.datao7 (data_out7 ),
.datao8 (data_out8 ),
.datao9 (data_out9 ),
.datao10 (data_out10 ),
.datao11 (data_out11 ),
.datao12 (data_out12 ),
.datao13 (data_out13 ),
.datao14 (data_out14 ),
.datao15 (data_out15 ),
.datao16 (data_out16 )

);


 
   /*
  ////////////////////////////////////////////////////////////////////////
  `ifdef WAVE_DUMP
  initial
    begin
      $vcdplusautoflushon;
      $printtimescale(tb_hamtop);
      $vcdpluson(0,tb_hamtop);
      $vcdplusmemon();
    end
  `endif
*/
endmodule







