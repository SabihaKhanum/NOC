module final_top (clk,reset,data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11,data12,data13,data14,data15,data16,wr1,wr2,wr3,wr4,wr5,wr6,wr7,wr8,wr9,wr10,wr11,wr12,wr13,wr14,wr15,wr16,datao1,datao2,datao3,datao4,datao5,datao6,datao7,datao8,datao9,datao10,datao11,datao12,datao13,datao14,datao15,datao16);

input clk,reset;
input [7:0] data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11,data12,data13,data14,data15,data16;
input wr1,wr2,wr3,wr4,wr5,wr6,wr7,wr8,wr9,wr10,wr11,wr12,wr13,wr14,wr15,wr16;
output [7:0] datao1,datao2,datao3,datao4,datao5,datao6,datao7,datao8,datao9,datao10,datao11,datao12,datao13,datao14,datao15,datao16;
wire [7:0] datao1,datao2,datao3,datao4,datao5,datao6,datao7,datao8,datao9,datao10,datao11,datao12,datao13,datao14,datao15,datao16;
/*
wire [7:0] data1_regmux1,data1_regmux2,data1_regmux3,data1_regmux4,data1_regmux5;

wire [7:0] data2_regmux1,data2_regmux2,data2_regmux3,data2_regmux4,data2_regmux5;
wire [7:0] data3_regmux1,data3_regmux2,data3_regmux3,data3_regmux4,data3_regmux5;
wire [7:0] data4_regmux1,data4_regmux2,data4_regmux3,data4_regmux4,data4_regmux5;
wire [7:0] data5_regmux1,data5_regmux2,data5_regmux3,data5_regmux4,data5_regmux5;
wire data1_we1,data1_we2,data1_we3,data1_we4,data1_we5;
wire data2_we1,data2_we2,data2_we3,data2_we4,data2_we5;
wire data3_we1,data3_we2,data3_we3,data3_we4,data3_we5;
wire data4_we1,data4_we2,data4_we3,data4_we4,data4_we5;
wire data5_we1,data5_we2,data5_we3,data5_we4,data5_we5;
wire [7:0] data_fifo1_out,data_fifo2_out,data_fifo3_out,data_fifo4_out,data_fifo5_out;
wire [7:0] scheduler_11_input, scheduler_21_input, scheduler_31_input, scheduler_41_input, scheduler_51_input;
wire [7:0] scheduler_12_input, scheduler_22_input, scheduler_32_input, scheduler_42_input, scheduler_52_input;
wire [7:0] scheduler_13_input, scheduler_23_input, scheduler_33_input, scheduler_43_input, scheduler_53_input;
wire [7:0] scheduler_14_input, scheduler_24_input, scheduler_34_input, scheduler_44_input, scheduler_54_input;
wire [7:0] scheduler_15_input, scheduler_25_input, scheduler_35_input, scheduler_45_input, scheduler_55_input;

wire rr1_scehdule1,rr1_scehdule2,rr1_scehdule3,rr1_scehdule4,rr1_scehdule5;
wire rr2_scehdule1,rr2_scehdule2,rr2_scehdule3,rr2_scehdule4,rr2_scehdule5;
wire rr3_scehdule1,rr3_scehdule2,rr3_scehdule3,rr3_scehdule4,rr3_scehdule5;
wire rr4_scehdule1,rr4_scehdule2,rr4_scehdule3,rr4_scehdule4,rr4_scehdule5;
wire rr5_scehdule1,rr5_scehdule2,rr5_scehdule3,rr5_scehdule4,rr5_scehdule5; 

wire  [39:0] data1_fifo;
wire  [39:0] data2_fifo;
wire  [39:0] data3_fifo;
wire  [39:0] data4_fifo;
wire  [39:0] data5_fifo;

wire  [4:0] rden_fifo1;
wire  [4:0] rden_fifo2;
wire  [4:0] rden_fifo3;
wire  [4:0] rden_fifo4;
wire  [4:0] rden_fifo5;


wire  [4:0] wren_fifo1;
wire  [4:0] wren_fifo2;
wire  [4:0] wren_fifo3;
wire  [4:0] wren_fifo4;
wire  [4:0] wren_fifo5;
*/

wire rr1,rr2,rr3,rr4,rr5,rr6,rr7,rr8,rr9,rr10,rr11,rr12,rr13,rr14,rr15,rr16;
wire [7:0] data_fifo1_out,data_fifo2_out,data_fifo3_out,data_fifo4_out,data_fifo5_out,data_fifo6_out,data_fifo7_out,data_fifo8_out,data_fifo9_out,data_fifo10_out,data_fifo11_out,data_fifo12_out,data_fifo13_out,data_fifo14_out,data_fifo15_out,data_fifo16_out;
wire output_avail1,output_avail2,output_avail3,output_avail4,output_avail5,output_avail6,output_avail7,output_avail8,output_avail9,output_avail10,output_avail11,output_avail12,output_avail13,output_avail14,output_avail15,output_avail16;
wire schedulerenable;
wire rd_en1,rd_en2,rd_en3,rd_en4,rd_en5,rd_en6,rd_en7,rd_en8,rd_en9,rd_en10,rd_en11,rd_en12,rd_en13,rd_en14,rd_en15,rd_en16;

//assign  schedulerenable  = (wr1|wr2|wr3|wr4|wr5);
/*
assign data1_fifo   = {data1_regmux5,data1_regmux4,data1_regmux3,data1_regmux2,data1_regmux1};
assign data2_fifo   = {data2_regmux5,data2_regmux4,data2_regmux3,data2_regmux2,data2_regmux1};
assign data3_fifo   = {data3_regmux5,data3_regmux4,data3_regmux3,data3_regmux2,data3_regmux1};
assign data4_fifo   = {data4_regmux5,data4_regmux4,data4_regmux3,data4_regmux2,data4_regmux1};
assign data5_fifo   = {data5_regmux5,data5_regmux4,data5_regmux3,data5_regmux2,data5_regmux1};

assign rden_fifo1  = {rr1_scehdule5,rr1_scehdule4,rr1_scehdule3,rr1_scehdule2,rr1_scehdule1};
assign rden_fifo2  = {rr2_scehdule5,rr2_scehdule4,rr2_scehdule3,rr2_scehdule2,rr2_scehdule1};
assign rden_fifo3  = {rr3_scehdule5,rr3_scehdule4,rr3_scehdule3,rr3_scehdule2,rr3_scehdule1};
assign rden_fifo4  = {rr4_scehdule5,rr4_scehdule4,rr4_scehdule3,rr4_scehdule2,rr4_scehdule1};
assign rden_fifo5  = {rr5_scehdule5,rr5_scehdule4,rr5_scehdule3,rr5_scehdule2,rr5_scehdule1};

assign wren_fifo1  = {data1_we5,data1_we4,data1_we3,data1_we2,data1_we1 };
assign wren_fifo2  = {data2_we5,data2_we4,data2_we3,data2_we2,data2_we1 };
assign wren_fifo3  = {data3_we5,data3_we4,data3_we3,data3_we2,data3_we1 };
assign wren_fifo4  = {data4_we5,data4_we4,data4_we3,data4_we2,data4_we1 };
assign wren_fifo5  = {data5_we5,data5_we4,data5_we3,data5_we2,data5_we1 };

assign scheduler_11_input = data_fifo1_out;
assign scheduler_21_input = data_fifo1_out;
assign scheduler_31_input = data_fifo1_out;
assign scheduler_41_input = data_fifo1_out;
assign scheduler_51_input = data_fifo1_out;


assign scheduler_12_input = data_fifo2_out;
assign scheduler_22_input = data_fifo2_out;
assign scheduler_32_input = data_fifo2_out;
assign scheduler_42_input = data_fifo2_out;
assign scheduler_52_input = data_fifo2_out;




assign scheduler_13_input = data_fifo3_out;
assign scheduler_23_input = data_fifo3_out;
assign scheduler_33_input = data_fifo3_out;
assign scheduler_43_input = data_fifo3_out;
assign scheduler_53_input = data_fifo3_out;




assign scheduler_14_input = data_fifo4_out;
assign scheduler_24_input = data_fifo4_out;
assign scheduler_34_input = data_fifo4_out;
assign scheduler_44_input = data_fifo4_out;
assign scheduler_54_input = data_fifo4_out;


assign scheduler_15_input = data_fifo5_out;
assign scheduler_25_input = data_fifo5_out;
assign scheduler_35_input = data_fifo5_out;
assign scheduler_45_input = data_fifo5_out;
assign scheduler_55_input = data_fifo5_out;




);*/
///fifo instntiation
fifo i_fifo1 (
.clk (clk),
.reset (reset),
.iput_data (data1),
.rd_en (rd_en1),
.wr_en (wr1),
.output_avail (output_avail1),
.output_data (data_fifo1_out)

);


fifo i_fifo2 (
.clk (clk),
.reset (reset),
.iput_data (data2),
.rd_en (rd_en2),
.wr_en (wr2),
.output_avail (output_avail2),
.output_data (data_fifo2_out)

);

fifo i_fifo3 (
.clk (clk),
.reset (reset),
.iput_data (data3),
.rd_en (rd_en3),
.wr_en (wr3),
.output_avail (output_avail3),
.output_data (data_fifo3_out)

);

fifo i_fifo4 (
.clk (clk),
.reset (reset),
.iput_data (data4),
.rd_en (rd_en4),
.wr_en (wr4),
.output_avail (output_avail4),
.output_data (data_fifo4_out)

);

fifo i_fifo5 (
.clk (clk),
.reset (reset),
.iput_data (data5),
.rd_en (rd_en5),
.wr_en (wr5),
.output_avail (output_avail5),
.output_data (data_fifo5_out)

);

fifo i_fifo6 (
.clk (clk),
.reset (reset),
.iput_data (data6),
.rd_en (rd_en6),
.wr_en (wr6),
.output_avail (output_avail6),
.output_data (data_fifo6_out)

);

fifo i_fifo7 (
.clk (clk),
.reset (reset),
.iput_data (data7),
.rd_en (rd_en7),
.wr_en (wr7),
.output_avail (output_avail7),
.output_data (data_fifo7_out)

);

fifo i_fifo8 (
.clk (clk),
.reset (reset),
.iput_data (data8),
.rd_en (rd_en8),
.wr_en (wr8),
.output_avail (output_avail8),
.output_data (data_fifo8_out)

);

fifo i_fifo9 (
.clk (clk),
.reset (reset),
.iput_data (data9),
.rd_en (rd_en9),
.wr_en (wr9),
.output_avail (output_avail9),
.output_data (data_fifo9_out)

);

fifo i_fifo10 (
.clk (clk),
.reset (reset),
.iput_data (data10),
.rd_en (rd_en10),
.wr_en (wr10),
.output_avail (output_avail10),
.output_data (data_fifo10_out)

);


fifo i_fifo11 (
.clk (clk),
.reset (reset),
.iput_data (data11),
.rd_en (rd_en11),
.wr_en (wr11),
.output_avail (output_avail11),
.output_data (data_fifo11_out)

);


fifo i_fifo12 (
.clk (clk),
.reset (reset),
.iput_data (data12),
.rd_en (rd_en12),
.wr_en (wr12),
.output_avail (output_avail12),
.output_data (data_fifo12_out)

);

fifo i_fifo13 (
.clk (clk),
.reset (reset),
.iput_data (data13),
.rd_en (rd_en13),
.wr_en (wr13),
.output_avail (output_avail13),
.output_data (data_fifo13_out)

);

fifo i_fifo14 (
.clk (clk),
.reset (reset),
.iput_data (data14),
.rd_en (rd_en14),
.wr_en (wr14),
.output_avail (output_avail14),
.output_data (data_fifo14_out)

);

fifo i_fifo15 (
.clk (clk),
.reset (reset),
.iput_data (data15),
.rd_en (rd_en15),
.wr_en (wr15),
.output_avail (output_avail15),
.output_data (data_fifo15_out)

);


fifo i_fifo16 (
.clk (clk),
.reset (reset),
.iput_data (data16),
.rd_en (rd_en16),
.wr_en (wr16),
.output_avail (output_avail16),
.output_data (data_fifo16_out)

);




///sceduler
//
scheduler i_scheduler1 (
	.clk (clk),
	.reset (reset),
	.enable (1) ,
	.in_en1 (output_avail1) ,
	.in_en2 (output_avail2) ,
	.in_en3 (output_avail3) ,
	.in_en4 (output_avail4) ,
	.in_en5 (output_avail5) ,
	.in_en6 (output_avail6) ,
	.in_en7 (output_avail7) ,
	.in_en8 (output_avail8) ,
	.in_en9 (output_avail9) ,
	.in_en10 (output_avail10) ,
	.in_en11 (output_avail11) ,
	.in_en12 (output_avail12) ,
	.in_en13 (output_avail13) ,
	.in_en14 (output_avail14) ,
	.in_en15 (output_avail15) ,
	.in_en16 (output_avail16) ,
	.rr1    (rr1) ,
	.rr2    (rr2) ,
	.rr3    (rr3) ,
	.rr4    (rr4) ,
	.rr5    (rr5) ,
	.rr6    (rr6) ,
	.rr7    (rr7) ,
	.rr8    (rr8) ,
	.rr9    (rr9) ,
	.rr10    (rr10),
	.rr11    (rr11),
	.rr12    (rr12),
	.rr13    (rr13),
	.rr14    (rr14),
	.rr15    (rr15),
	.rr16    (rr16)
);


crossbar i_crossbar (
	.clk (clk),
	.reset (reset),
	.rr1(rr1),
	.rr2(rr2),
	.rr3(rr3),
	.rr4(rr4),
	.rr5(rr5),
	.rr6(rr6),
	.rr7(rr7),
	.rr8(rr8),
	.rr9(rr9),
	.rr10(rr10),
	.rr11    (rr11),
	.rr12    (rr12),
	.rr13    (rr13),
	.rr14    (rr14),
	.rr15    (rr15),
	.rr16    (rr16),
	.iput_data1(data_fifo1_out),
	.iput_data2(data_fifo2_out),
	.iput_data3(data_fifo3_out),
	.iput_data4(data_fifo4_out),
	.iput_data5(data_fifo5_out),
        .iput_data6(data_fifo6_out),
	.iput_data7(data_fifo7_out),
	.iput_data8(data_fifo8_out),
	.iput_data9(data_fifo9_out),
	.iput_data10(data_fifo10_out),
	.iput_data11(data_fifo11_out),
	.iput_data12(data_fifo12_out),
	.iput_data13(data_fifo13_out),
	.iput_data14(data_fifo14_out),
	.iput_data15(data_fifo15_out),
	.iput_data16(data_fifo16_out),
	.datao1(datao1),
	.datao2(datao2),
	.datao3(datao3),
	.datao4(datao4),
	.datao5(datao5),
	.datao6(datao6),
	.datao7(datao7),
	.datao8(datao8),
	.datao9(datao9),
	.datao10(datao10),
	.datao11(datao11),
	.datao12(datao12),
	.datao13(datao13),
	.datao14(datao14),
	.datao15(datao15),
	.datao16(datao16),
	.rd_en1(rd_en1),
	.rd_en2(rd_en2),
	.rd_en3(rd_en3),
	.rd_en4(rd_en4),
	.rd_en5(rd_en5),
	.rd_en6(rd_en6),
	.rd_en7(rd_en7),
	.rd_en8(rd_en8),
	.rd_en9(rd_en9),
	.rd_en10(rd_en10),
	.rd_en11(rd_en11),
	.rd_en12(rd_en12),
	.rd_en13(rd_en13),
	.rd_en14(rd_en14),
	.rd_en15(rd_en15),
	.rd_en16(rd_en16),
	.in_en1 (output_avail1) ,
	.in_en2 (output_avail2) ,
	.in_en3 (output_avail3) ,
	.in_en4 (output_avail4) ,
	.in_en5 (output_avail5) ,
	.in_en6 (output_avail6) ,
	.in_en7 (output_avail7) ,
	.in_en8 (output_avail8) ,
	.in_en9 (output_avail9) ,
	.in_en10 (output_avail10), 
	.in_en11 (output_avail11), 
	.in_en12 (output_avail12), 
	.in_en13 (output_avail13), 
	.in_en14 (output_avail14), 
	.in_en15 (output_avail15), 
	.in_en16 (output_avail16) 

   );

endmodule



module fifo (clk,reset,iput_data,rd_en,wr_en,wr_addr,rd_addr,output_data,output_avail);
input clk;
input reset;
input  [7:0] iput_data;
output [7:0] output_data; 
input [2:0]  wr_addr;
input [2:0]  rd_addr;
input   rd_en;
input  wr_en;
output output_avail;
wire cs_0;
wire we_0;
wire oe_0;
wire [2:0] address_0;
wire [2:0] address_0rd;
wire [7:0] data_0;
reg [7:0] data_0_out;
reg [7:0] mem [4:0];
reg  [2:0] wr_addr_int;
reg  [2:0] rd_addr_int;
wire  [7:0] iput_data_int;
integer             i;

always @ (posedge clk or negedge reset)
begin
  if(!reset)
   begin
     wr_addr_int <= 3'd0;
    end
   else if  (wr_en)
   begin
    
     wr_addr_int  <= wr_addr_int+1;
   end
  
end

always @ (posedge clk or negedge reset)
begin
  if(!reset)
   begin
     rd_addr_int <= 3'd0;
    end
   else if  (rd_en)
   begin
    
     rd_addr_int  <= rd_addr_int+1;
   end
  
end
//assign wr_addr_int  =  wr_en [0] ? 0: wr_en [1] ? 1: wr_en [2] ? 2:
//	                 wr_en [3] ? 3: wr_en [4] ? 4:0;
//assign iput_data_int   =  wr_en [0] ? iput_data[7:0] :wr_en [1] ? iput_data[15:8]:
	           //        wr_en [2] ? iput_data[23:16]: wr_en [3] ? iput_data[31:24]:
		//	   wr_en [4] ? iput_data[39:32]:0 ;
	assign iput_data_int = iput_data;

//assign rd_addr_int  =  rd_en [0] ? 0:rd_en [1] ? 1: rd_en [2] ? 2:
//	                 rd_en [3] ? 3: rd_en [4] ? 4:0;

assign output_avail = (wr_addr_int != rd_addr_int);

assign cs_0 =1'b1;
assign we_0 = |wr_en;
assign oe_0 = |rd_en;
assign address_0 = wr_addr_int;
assign address_0rd = rd_addr_int;
assign data_0 = iput_data_int;
//assign output_data = data_0_out;


// Write Operation : When we_0 = 1, cs_0 = 1
always @ (posedge clk or negedge reset)
begin : MEM_WRITE
 if(!reset)
   begin
    for (i =0; i< 5;i= i+1 )
     mem[i] <= 8'd0;
  end
   

 else  if ( cs_0 && we_0 ) begin
     mem[address_0] <= data_0;
  end
end

// Read Operation : When we_0 = 0, oe_0 = 1, cs_0 = 1
//always @ (posedge clk)
//begin : MEM_READ_0
//  if (cs_0 && !we_0 && oe_0) begin
//    data_0_out <= mem[address_0rd]; 
//  end else begin
//    data_0_out <= 0; 
//  end  
//end 

assign output_data = mem[address_0rd];

//
endmodule



module scheduler (clk,reset,enable,in_en1,in_en2,in_en3,in_en4,in_en5,in_en6,in_en7,in_en8,in_en9,in_en10,in_en11,in_en12,in_en13,in_en14,in_en15,in_en16, rr1,rr2,rr3,rr4,rr5,rr6,rr7,rr8,rr9,rr10,rr11,rr12,rr13,rr14,rr15,rr16);
input clk;
input reset;

input  in_en1,in_en2,in_en3,in_en4,in_en5,in_en6,in_en7,in_en8,in_en9,in_en10,in_en11,in_en12,in_en13,in_en14,in_en15,in_en16;
output rr1,rr2,rr3,rr4,rr5,rr6,rr7,rr8,rr9,rr10,rr11,rr12,rr13,rr14,rr15,rr16;

input        enable;


reg  rr1,rr2,rr3,rr4,rr5,rr6,rr7,rr8,rr9,rr10,rr11,rr12,rr13,rr14,rr15,rr16;
reg  [3:0] count;
reg   enableff;


always @ (posedge clk or negedge reset)
begin
  if(!reset)
   begin
  
    count  <= 4'd0;
    end
   else if  (count==15)
   begin
    
     count   <= 0;
   end
   else if (enable)
   begin
    
     count   <= count+1;
   end
  
end




always @ (posedge clk or negedge reset)
begin
  if(!reset)
   begin
  
    enableff  <= 1'd0;
    end
   
   else if (enable)
   begin
     enableff  <= 1'd1;
      
   end
   else
   begin
     enableff  <= 1'd0;
      
   end
  
end

always @ (*)
begin
     rr1         = 1'd0;
     rr2         = 1'd0;
     rr3         = 1'd0;
     rr4         = 1'd0;
     rr5         = 1'd0;
     rr6         = 1'd0;
     rr7         = 1'd0;
     rr8         = 1'd0;
     rr9         = 1'd0;
     rr10        = 1'd0;
     rr11        = 1'd0;
     rr12        = 1'd0;
     rr13        = 1'd0;
     rr14        = 1'd0;
     rr15        = 1'd0;
     rr16        = 1'd0;
    if ( (enable) & (count==0))
   begin
     rr1         = 1'd1;    
   end
   else if ( (enable) & (count==1))
   begin
     rr2         = 1'd1;    
   end
   else if ( (enable) & (count==2))
   begin
     rr3         = 1'd1;    
   end
   else if ( (enable) & (count==3))
   begin
     rr4         = 1'd1;    
   end
   else if ( (enable) & (count==4))
   begin
     rr5         = 1'd1;    
   end
     else if ( (enable) & (count==5))
   begin
     rr6         = 1'd1;    
   end
    else if ( (enable) & (count==6))
   begin
     rr7         = 1'd1;    
   end
    else if ( (enable) & (count==7))
   begin
     rr8         = 1'd1;    
   end
    else if ( (enable) & (count==8))
   begin
     rr9         = 1'd1;    
   end
    else if ( (enable) & (count==9))
   begin
     rr10         = 1'd1;    
   end
    else if ( (enable) & (count==10))
   begin
     rr11         = 1'd1;    
   end
    else if ( (enable) & (count==11))
   begin
     rr12         = 1'd1;    
   end
    else if ( (enable) & (count==12))
   begin
     rr13         = 1'd1;    
   end
    else if ( (enable) & (count==13))
   begin
     rr14         = 1'd1;    
   end
    else if ( (enable) & (count==14))
   begin
     rr15         = 1'd1;    
   end
    else if ( (enable) & (count==15))
   begin
     rr16         = 1'd1;    
   end
   else
   begin
     rr1         = 1'd0;
     rr2         = 1'd0;
     rr3         = 1'd0;
     rr4         = 1'd0;
     rr5         = 1'd0;
     rr6         = 1'd0;
     rr7         = 1'd0;
     rr8         = 1'd0;
     rr9         = 1'd0;
     rr10        = 1'd0;
     rr11        = 1'd0;
     rr12        = 1'd0;
     rr13        = 1'd0;
     rr14        = 1'd0;
     rr15        = 1'd0;
      
    end
end


endmodule



module crossbar (clk,reset,rr1,rr2,rr3,rr4,rr5,rr6,rr7,rr8,rr9,rr10,rr11,rr12,rr13,rr14,rr15,rr16,iput_data1,iput_data2,iput_data3,iput_data4,iput_data5,iput_data6,iput_data7,iput_data8,iput_data9,iput_data10,iput_data11,iput_data12,iput_data13,iput_data14,iput_data15,iput_data16,datao1,datao2,datao3,datao4,datao5,datao6,datao7,datao8,datao9,datao10,datao11,datao12,datao13,datao14,datao15,datao16,
	        rd_en1,rd_en2,rd_en3,rd_en4,rd_en5,rd_en6,rd_en7,rd_en8,rd_en9,rd_en10,rd_en11,rd_en12,rd_en13,rd_en14,rd_en15,rd_en16,in_en1,in_en2,in_en3,in_en4,in_en5,in_en6,in_en7,in_en8,in_en9,in_en10,in_en11,in_en12,in_en13,in_en14,in_en15,in_en16);
input clk;
input reset;

input[7:0]  iput_data1,iput_data2,iput_data3,iput_data4,iput_data5, iput_data6,iput_data7,iput_data8,iput_data9,iput_data10,iput_data11,iput_data12,iput_data13,iput_data14,iput_data15,iput_data16;

input rr1,rr2,rr3,rr4,rr5,rr6,rr7,rr8,rr9,rr10,rr11,rr12,rr13,rr14,rr15,rr16;
input in_en1,in_en2,in_en3,in_en4,in_en5,in_en6,in_en7,in_en8,in_en9,in_en10,in_en11,in_en12,in_en13,in_en14,in_en15,in_en16;
output [7:0] datao1,datao2,datao3,datao4,datao5,datao6,datao7,datao8,datao9,datao10,datao11,datao12,datao13,datao14,datao15,datao16;
output  rd_en1,rd_en2,rd_en3,rd_en4,rd_en5,rd_en6,rd_en7,rd_en8,rd_en9,rd_en10,rd_en11,rd_en12,rd_en13,rd_en14,rd_en15,rd_en16;


wire [3:0] port1_addr,port2_addr,port3_addr,port4_addr,port5_addr,port6_addr,port7_addr,port8_addr,port9_addr,port10_addr,port11_addr,port12_addr,port13_addr,port14_addr,port15_addr,port16_addr;


assign port1_addr = iput_data1[3:0];
assign port2_addr = iput_data2[3:0];
assign port3_addr = iput_data3[3:0];
assign port4_addr = iput_data4[3:0];
assign port5_addr = iput_data5[3:0];
assign port6_addr = iput_data6[3:0];
assign port7_addr = iput_data7[3:0];
assign port8_addr = iput_data8[3:0];
assign port9_addr = iput_data9[3:0];
assign port10_addr = iput_data10[3:0];
assign port11_addr = iput_data11[3:0];
assign port12_addr = iput_data12[3:0];
assign port13_addr = iput_data13[3:0];
assign port14_addr = iput_data14[3:0];
assign port15_addr = iput_data15[3:0];
assign port16_addr = iput_data16[3:0];


//input        enable;

assign   datao1 = (rr1 & in_en1 & (port1_addr ==0 ) ) ? iput_data1 :
	          (rr2 & in_en2 & (port2_addr ==0 )) ? iput_data2 :
		   (rr3 & in_en3  & (port3_addr ==0 )) ? iput_data3 :
		    (rr4 & in_en4 & (port4_addr ==0 )) ? iput_data4 :
		   (rr5 & in_en5 &  (port5_addr ==0 )) ? iput_data5 :
		  (rr6 & in_en6 & (port6_addr ==0 )) ? iput_data6 :
		 (rr7 & in_en7 & (port7_addr ==0 )) ? iput_data7 :
	          (rr8 & in_en8 & (port8_addr ==0 )) ? iput_data8 :
	          (rr9 & in_en9 & (port9_addr ==0 )) ? iput_data9 :
	          (rr10 & in_en10 & (port10_addr ==0 )) ? iput_data10 : 
	          (rr11 & in_en11 & (port11_addr ==0 )) ? iput_data11 : 
	          (rr12 & in_en12 & (port12_addr ==0 )) ? iput_data12 : 
	          (rr13 & in_en13 & (port13_addr ==0 )) ? iput_data13 : 
	          (rr14 & in_en14 & (port14_addr ==0 )) ? iput_data14 : 
	          (rr15 & in_en15 & (port15_addr ==0 )) ? iput_data15 : 
	          (rr16 & in_en16 & (port16_addr ==0 )) ? iput_data16 : 
		  '0;
	           


assign   datao2 = (rr2 & in_en1 & (port1_addr ==1 ) ) ? iput_data1 :
	          (rr3 & in_en2 & (port2_addr ==1 )) ? iput_data2 :
		   (rr4 & in_en3  & (port3_addr ==1 )) ? iput_data3 :
		    (rr5 & in_en4 & (port4_addr ==1 )) ? iput_data4 :
		   (rr6 & in_en5 &  (port5_addr ==1 )) ? iput_data5 :
		  (rr7 & in_en6 & (port6_addr ==1 )) ? iput_data6 :
		 (rr8 & in_en7 & (port7_addr ==1 )) ? iput_data7 :
	          (rr9 & in_en8 & (port8_addr ==1 )) ? iput_data8 :
	          (rr10 & in_en9 & (port9_addr ==1 )) ? iput_data9 :
	          (rr11 & in_en10 & (port10_addr ==1 )) ? iput_data10 :
	          (rr12 & in_en11 & (port11_addr ==1 )) ? iput_data11 :
	          (rr13 & in_en12 & (port12_addr ==1 )) ? iput_data12 :
	          (rr14 & in_en13 & (port13_addr ==1 )) ? iput_data13 :
	          (rr15 & in_en14 & (port14_addr ==1 )) ? iput_data14 :
	          (rr16 & in_en15 & (port15_addr ==1 )) ? iput_data15 : 
	          (rr1 & in_en16 & (port16_addr ==1 )) ? iput_data16 : 
		  '0;

	  
assign   datao3 = (rr3 & in_en1 & (port1_addr ==2 ) ) ? iput_data1 :
	          (rr4 & in_en2 & (port2_addr ==2 )) ? iput_data2 :
		   (rr5 & in_en3  & (port3_addr ==2 )) ? iput_data3 :
		    (rr6 & in_en4 & (port4_addr ==2 )) ? iput_data4 :
		   (rr7 & in_en5 &  (port5_addr ==2 )) ? iput_data5 :
		  (rr8 & in_en6 & (port6_addr ==2 )) ? iput_data6 :
		 (rr9 & in_en7 & (port7_addr ==2 )) ? iput_data7 :
	          (rr10 & in_en8 & (port8_addr ==2 )) ? iput_data8 :
	          (rr11 & in_en9 & (port9_addr ==2 )) ? iput_data9 :
	          (rr12 & in_en10 & (port10_addr ==2 )) ? iput_data10 :
	          (rr13 & in_en11 & (port11_addr ==2 )) ? iput_data11 :
	          (rr14 & in_en12 & (port12_addr ==2 )) ? iput_data12 :
	          (rr15 & in_en13 & (port13_addr ==2 )) ? iput_data13 :
	          (rr16 & in_en14 & (port14_addr ==2 )) ? iput_data14 :
	          (rr1 & in_en15 & (port15_addr ==2 )) ? iput_data15 :
	          (rr2 & in_en16 & (port16_addr ==2 )) ? iput_data16 : '0;


	  
assign   datao4 = (rr4 & in_en1 & (port1_addr ==3 ) ) ? iput_data1 :
	          (rr5 & in_en2 & (port2_addr ==3 )) ? iput_data2 :
		   (rr6 & in_en3  & (port3_addr ==3 )) ? iput_data3 :
		    (rr7 & in_en4 & (port4_addr ==3 )) ? iput_data4 :
		   (rr8 & in_en5 &  (port5_addr ==3 )) ? iput_data5 :
		  (rr9 & in_en6 & (port6_addr ==3 )) ? iput_data6 :
		 (rr10 & in_en7 & (port7_addr ==3 )) ? iput_data7 :
		 (rr11 & in_en8 & (port8_addr ==3 )) ? iput_data8 :
		 (rr12 & in_en9 & (port9_addr ==3 )) ? iput_data9 :
		 (rr13 & in_en10 & (port10_addr ==3 )) ? iput_data10 :
		 (rr14 & in_en11 & (port11_addr ==3 )) ? iput_data11 :
		 (rr15 & in_en12 & (port12_addr ==3 )) ? iput_data12 :
	         (rr16 & in_en13 & (port13_addr ==3 )) ? iput_data13 :
	          (rr1 & in_en14 & (port14_addr ==3 )) ? iput_data14 :
	          (rr2 & in_en15 & (port15_addr ==3 )) ? iput_data15 :
	          (rr3 & in_en16 & (port16_addr ==3)) ? iput_data16 : '0;


	  
assign   datao5 = (rr5 & in_en1 & (port1_addr ==4 ) ) ? iput_data1 :
	          (rr6 & in_en2 & (port2_addr ==4 )) ? iput_data2 :
		   (rr7 & in_en3  & (port3_addr ==4 )) ? iput_data3 :
		    (rr8 & in_en4 & (port4_addr ==4 )) ? iput_data4 :
		   (rr9 & in_en5 &  (port5_addr ==4 )) ? iput_data5 :
		  (rr10 & in_en6 & (port6_addr ==4 )) ? iput_data6 :
		  (rr11 & in_en7 & (port7_addr ==4 )) ? iput_data7 :
		  (rr12 & in_en8 & (port8_addr ==4 )) ? iput_data8 :
		  (rr13 & in_en9 & (port9_addr ==4 )) ? iput_data9 :
		  (rr14 & in_en10 & (port10_addr ==4 )) ? iput_data10 :
		  (rr15 & in_en11 & (port11_addr ==4 )) ? iput_data11 :
		 (rr16 & in_en12 & (port12_addr ==4 )) ? iput_data12 :
		 (rr1 & in_en13 & (port13_addr ==4 )) ? iput_data13 :
	          (rr2 & in_en14 & (port14_addr ==4 )) ? iput_data14 :
	          (rr3 & in_en15 & (port15_addr ==4 )) ? iput_data15 :
	          (rr4 & in_en16 & (port16_addr ==4 )) ? iput_data16 : '0;


	  
assign   datao6 = (rr6 & in_en1 & (port1_addr ==5 ) ) ? iput_data1 :
	          (rr7 & in_en2 & (port2_addr ==5 )) ? iput_data2 :
		   (rr8 & in_en3  & (port3_addr ==5 )) ? iput_data3 :
		    (rr8 & in_en4 & (port4_addr ==5 )) ? iput_data4 :
		   (rr9 & in_en5 &  (port5_addr ==5 )) ? iput_data5 :
		  (rr10 & in_en6 & (port6_addr ==5 )) ? iput_data6 :
		  (rr11 & in_en7 & (port7_addr ==5 )) ? iput_data7 :
		  (rr12 & in_en8 & (port8_addr ==5 )) ? iput_data8 :
		  (rr13 & in_en9 & (port9_addr ==5 )) ? iput_data9 :
		  (rr14 & in_en10 & (port10_addr ==5 )) ? iput_data10 :
		  (rr15 & in_en11 & (port11_addr ==5 )) ? iput_data11 :
		 (rr16 & in_en12 & (port12_addr ==5 )) ? iput_data12 :
		 (rr1 & in_en13 & (port13_addr ==5 )) ? iput_data13 :
	          (rr2 & in_en14 & (port14_addr ==5 )) ? iput_data14 :
	          (rr3 & in_en15 & (port15_addr ==5 )) ? iput_data15 :
	          (rr4 & in_en16 & (port16_addr ==5 )) ? iput_data16 : '0;


	  
assign   datao7 = (rr7 & in_en1 & (port1_addr ==6 ) ) ? iput_data1 :
	          (rr8 & in_en2 & (port2_addr ==6 )) ? iput_data2 :
		   (rr9 & in_en3  & (port3_addr ==6 )) ? iput_data3 :
		    (rr10 & in_en4 & (port4_addr ==6 )) ? iput_data4 :
		    (rr11 & in_en5 & (port5_addr ==6 )) ? iput_data5 :
		    (rr12 & in_en6 & (port6_addr ==6 )) ? iput_data6 :
		    (rr13 & in_en7 & (port7_addr ==6 )) ? iput_data7 :
		    (rr14 & in_en8 & (port8_addr ==6 )) ? iput_data8 :
		    (rr15 & in_en9 & (port9_addr ==6 )) ? iput_data9 :
		   (rr16 & in_en10 &  (port10_addr ==6 )) ? iput_data10 :
		   (rr1 & in_en11 &  (port11_addr ==6 )) ? iput_data11 :
		  (rr2 & in_en12 & (port12_addr ==6 )) ? iput_data12 :
		 (rr3 & in_en13 & (port13_addr ==6 )) ? iput_data13 :
	          (rr4 & in_en14 & (port14_addr ==6 )) ? iput_data14 :
	          (rr5 & in_en15 & (port15_addr ==6 )) ? iput_data15 :
	          (rr6 & in_en16 & (port16_addr ==6 )) ? iput_data16 : '0;


	  
assign   datao8 = (rr8 & in_en1 & (port1_addr ==7 ) ) ? iput_data1 :
	          (rr9 & in_en2 & (port2_addr ==7 )) ? iput_data2 :
		   (rr10 & in_en3  & (port3_addr ==7 )) ? iput_data3 :
		   (rr11 & in_en4  & (port4_addr ==7 )) ? iput_data4 :
		   (rr12 & in_en5  & (port5_addr ==7 )) ? iput_data5 :
		   (rr13 & in_en6  & (port6_addr ==7 )) ? iput_data6 :
		   (rr14 & in_en7  & (port7_addr ==7 )) ? iput_data7 :
		   (rr15 & in_en8  & (port8_addr ==7 )) ? iput_data8 :
		    (rr16 & in_en9 & (port9_addr ==7 )) ? iput_data9 :
		    (rr1 & in_en10 & (port10_addr ==7 )) ? iput_data10 :
		   (rr2 & in_en11 &  (port11_addr ==7 )) ? iput_data11 :
		  (rr3 & in_en12 & (port12_addr ==7 )) ? iput_data12 :
		 (rr4 & in_en13 & (port13_addr ==7 )) ? iput_data13 :
	          (rr5 & in_en14 & (port14_addr ==7 )) ? iput_data14 :
	          (rr6 & in_en15 & (port15_addr ==7 )) ? iput_data15 :
	          (rr7 & in_en16 & (port16_addr ==7 )) ? iput_data16 : '0;


	  
assign   datao9 = (rr9 & in_en1 & (port1_addr ==8 ) ) ? iput_data1 :
	          (rr10 & in_en2 & (port2_addr ==8 )) ? iput_data2 :
	          (rr11 & in_en3 & (port3_addr ==8 )) ? iput_data3 :
	          (rr12 & in_en4 & (port4_addr ==8 )) ? iput_data4 :
	          (rr13 & in_en5 & (port5_addr ==8 )) ? iput_data5 :
	          (rr14 & in_en6 & (port6_addr ==8 )) ? iput_data6 :
	          (rr15 & in_en7 & (port7_addr ==8 )) ? iput_data7 :
		   (rr16 & in_en8  & (port8_addr ==8 )) ? iput_data8 :
		   (rr1 & in_en9  & (port9_addr ==8 )) ? iput_data9 :
		    (rr2 & in_en10 & (port10_addr ==8 )) ? iput_data10 :
		   (rr3 & in_en11 &  (port11_addr ==8 )) ? iput_data11 :
		  (rr4 & in_en12 & (port12_addr ==8 )) ? iput_data12 :
		 (rr5 & in_en13 & (port13_addr ==8 )) ? iput_data13 :
	          (rr6 & in_en14 & (port14_addr ==8 )) ? iput_data14 :
	          (rr7 & in_en15 & (port15_addr ==8 )) ? iput_data15 :
	          (rr8 & in_en16 & (port16_addr ==8 )) ? iput_data16 : '0;

	  
assign   datao10 = (rr10 & in_en1 &  (port1_addr ==9 )) ? iput_data1 :
                   (rr11 & in_en2 &  (port2_addr ==9 )) ? iput_data2 :
                   (rr12 & in_en3 &  (port3_addr ==9 )) ? iput_data3 :
                   (rr13 & in_en4 &  (port4_addr ==9 )) ? iput_data4 :
                   (rr14 & in_en5 &  (port5_addr ==9 )) ? iput_data5 :
                   (rr15 & in_en6 &  (port6_addr ==9 )) ? iput_data6 :
	          (rr16 & in_en7 &  (port7_addr ==9 )   ) ? iput_data7 :
	          (rr1 & in_en8 &  (port8_addr ==9 )   ) ? iput_data8 :
		   (rr2 & in_en9  &  (port9_addr ==9 )   ) ? iput_data9 :
		    (rr3 & in_en10 &   (port10_addr ==9 )  ) ? iput_data10 :
		   (rr4 & in_en11 &    (port11_addr ==9 ) ) ? iput_data11 :
		  (rr5 & in_en12 &   (port12_addr ==9 ) ) ? iput_data12 :
		 (rr6 & in_en13 &  (port13_addr ==9 )  ) ? iput_data13 :
	          (rr7 & in_en14 &   (port14_addr ==9 ) ) ? iput_data14 :
	          (rr8 & in_en15 &   (port15_addr ==9 ) ) ? iput_data15 :
	          (rr9 & in_en16 &  (port16_addr ==9 )  ) ? iput_data16 : '0;

  assign   datao11 = (rr11 & in_en1 &  (port1_addr ==10 )) ? iput_data1 :
                   (rr12 & in_en2 &  (port2_addr ==10 )) ? iput_data2 :
                   (rr13 & in_en3 &  (port3_addr ==10 )) ? iput_data3 :
                   (rr14 & in_en4 &  (port4_addr ==10 )) ? iput_data4 :
                   (rr15 & in_en5 &  (port5_addr ==10 )) ? iput_data5 :
                   (rr16 & in_en6 &  (port6_addr ==10 )) ? iput_data6 :
                   (rr1 & in_en7 &  (port7_addr ==10 )) ? iput_data7 :
	          (rr2 & in_en8 &  (port8_addr ==10 )   ) ? iput_data8 :
		   (rr3 & in_en9  &  (port9_addr ==10 )   ) ? iput_data9 :
		    (rr4 & in_en10 &   (port10_addr ==10 )  ) ? iput_data10 :
		   (rr5 & in_en11 &    (port11_addr ==10 ) ) ? iput_data11 :
		  (rr6 & in_en12 &   (port12_addr ==10 ) ) ? iput_data12 :
		 (rr7 & in_en13 &  (port13_addr ==10 )  ) ? iput_data13 :
	          (rr8 & in_en14 &   (port14_addr ==10 ) ) ? iput_data14 :
	          (rr9 & in_en15 &   (port15_addr ==10 ) ) ? iput_data15 :
	          (rr10 & in_en16 &  (port16_addr ==10 )  ) ? iput_data16 : '0;
	  

  assign   datao12 = (rr12 & in_en1 &  (port1_addr ==11 )) ? iput_data1 :
                   (rr13 & in_en2 &  (port2_addr ==11 )) ? iput_data2 :
                   (rr14 & in_en3 &  (port3_addr ==11 )) ? iput_data3 :
                   (rr15 & in_en4 &  (port4_addr ==11 )) ? iput_data4 :
                   (rr16 & in_en5 &  (port5_addr ==11 )) ? iput_data5 :
                   (rr1 & in_en6 &  (port6_addr ==11 )) ? iput_data6 :
                   (rr2 & in_en7 &  (port7_addr ==11 )) ? iput_data7 :
	          (rr3 & in_en8 &  (port8_addr ==11 )   ) ? iput_data8 :
		   (rr4 & in_en9  &  (port9_addr ==11 )   ) ? iput_data9 :
		    (rr5 & in_en10 &   (port10_addr ==11 )  ) ? iput_data10 :
		   (rr6 & in_en11 &    (port11_addr ==11 ) ) ? iput_data11 :
		  (rr7 & in_en12 &   (port12_addr ==11 ) ) ? iput_data12 :
		 (rr8 & in_en13 &  (port13_addr ==11 )  ) ? iput_data13 :
	          (rr9 & in_en14 &   (port14_addr ==11 ) ) ? iput_data14 :
	          (rr10 & in_en15 &   (port15_addr ==11 ) ) ? iput_data15 :
	          (rr11 & in_en16 &  (port16_addr ==11 )  ) ? iput_data16 : '0;

	  
  assign   datao13 = (rr13 & in_en1 &  (port1_addr ==12 )) ? iput_data1 :
                   (rr14 & in_en2 &  (port2_addr ==12 )) ? iput_data2 :
                   (rr15 & in_en3 &  (port3_addr ==12 )) ? iput_data3 :
                   (rr16 & in_en4 &  (port4_addr ==12 )) ? iput_data4 :
                   (rr1 & in_en5 &  (port5_addr ==12 )) ? iput_data5 :
                   (rr2 & in_en6 &  (port6_addr ==12 )) ? iput_data6 :
                   (rr3 & in_en7 &  (port7_addr ==12 )) ? iput_data7 :
	          (rr4 & in_en8 &  (port8_addr ==12 )   ) ? iput_data8 :
		   (rr5 & in_en9  &  (port9_addr ==12 )   ) ? iput_data9 :
		    (rr6 & in_en10 &   (port10_addr ==12 )  ) ? iput_data10 :
		   (rr7 & in_en11 &    (port11_addr ==12 ) ) ? iput_data11 :
		  (rr8 & in_en12 &   (port12_addr ==12 ) ) ? iput_data12 :
		 (rr9 & in_en13 &  (port13_addr ==12 )  ) ? iput_data13 :
	          (rr10 & in_en14 &   (port14_addr ==12 ) ) ? iput_data14 :
	          (rr11 & in_en15 &   (port15_addr ==12 ) ) ? iput_data15 :
	          (rr12 & in_en16 &  (port16_addr ==12 )  ) ? iput_data16 : '0;

  assign   datao14 = (rr14 & in_en1 &  (port1_addr ==13 )) ? iput_data1 :
                   (rr15 & in_en2 &  (port2_addr ==13 )) ? iput_data2 :
                   (rr16 & in_en3 &  (port3_addr ==13 )) ? iput_data3 :
                   (rr1 & in_en4 &  (port4_addr ==13 )) ? iput_data4 :
                   (rr2 & in_en5 &  (port5_addr ==13 )) ? iput_data5 :
                   (rr3 & in_en6 &  (port6_addr ==13 )) ? iput_data6 :
                   (rr4 & in_en7 &  (port7_addr ==13 )) ? iput_data7 :
	          (rr5 & in_en8 &  (port8_addr ==13 )   ) ? iput_data8 :
		   (rr6 & in_en9  &  (port9_addr ==13 )   ) ? iput_data9 :
		    (rr7 & in_en10 &   (port10_addr ==13 )  ) ? iput_data10 :
		   (rr8 & in_en11 &    (port11_addr ==13 ) ) ? iput_data11 :
		  (rr9 & in_en12 &   (port12_addr ==13 ) ) ? iput_data12 :
		 (rr10 & in_en13 &  (port13_addr ==13 )  ) ? iput_data13 :
	          (rr11 & in_en14 &   (port14_addr ==13 ) ) ? iput_data14 :
	          (rr12 & in_en15 &   (port15_addr ==13 ) ) ? iput_data15 :
	          (rr13 & in_en16 &  (port16_addr ==13 )  ) ? iput_data16 : '0;

  assign   datao15 = (rr15 & in_en1 &  (port1_addr ==14 )) ? iput_data1 :
                   (rr16 & in_en2 &  (port2_addr ==14 )) ? iput_data2 :
                   (rr1 & in_en3 &  (port3_addr ==14 )) ? iput_data3 :
                   (rr2 & in_en4 &  (port4_addr ==14 )) ? iput_data4 :
                   (rr3 & in_en5 &  (port5_addr ==14 )) ? iput_data5 :
                   (rr4 & in_en6 &  (port6_addr ==14 )) ? iput_data6 :
                   (rr5 & in_en7 &  (port7_addr ==14 )) ? iput_data7 :
	          (rr6 & in_en8 &  (port8_addr ==14 )   ) ? iput_data8 :
		   (rr7 & in_en9  &  (port9_addr ==14 )   ) ? iput_data9 :
		    (rr8 & in_en10 &   (port10_addr ==14 )  ) ? iput_data10 :
		   (rr9 & in_en11 &    (port11_addr ==14 ) ) ? iput_data11 :
		  (rr10 & in_en12 &   (port12_addr ==14 ) ) ? iput_data12 :
		 (rr11 & in_en13 &  (port13_addr ==14 )  ) ? iput_data13 :
	          (rr12 & in_en14 &   (port14_addr ==14 ) ) ? iput_data14 :
	          (rr13 & in_en15 &   (port15_addr ==14 ) ) ? iput_data15 :
	          (rr14 & in_en16 &  (port16_addr ==14 )  ) ? iput_data16 : '0;

 assign   datao16 = (rr16 & in_en1 &  (port1_addr ==15 )) ? iput_data1 :
                   (rr1 & in_en2 &  (port2_addr ==15 )) ? iput_data2 :
                   (rr2 & in_en3 &  (port3_addr ==15 )) ? iput_data3 :
                   (rr3 & in_en4 &  (port4_addr ==15 )) ? iput_data4 :
                   (rr4 & in_en5 &  (port5_addr ==15 )) ? iput_data5 :
                   (rr5 & in_en6 &  (port6_addr ==15 )) ? iput_data6 :
                   (rr6 & in_en7 &  (port7_addr ==15 )) ? iput_data7 :
	          (rr7 & in_en8 &  (port8_addr ==15 )   ) ? iput_data8 :
		   (rr8 & in_en9  &  (port9_addr ==15 )   ) ? iput_data9 :
		    (rr9 & in_en10 &   (port10_addr ==15 )  ) ? iput_data10 :
		   (rr10 & in_en11 &    (port11_addr ==15 ) ) ? iput_data11 :
		  (rr11 & in_en12 &   (port12_addr ==15 ) ) ? iput_data12 :
		 (rr12 & in_en13 &  (port13_addr ==15 )  ) ? iput_data13 :
	          (rr13 & in_en14 &   (port14_addr ==15 ) ) ? iput_data14 :
	          (rr14 & in_en15 &   (port15_addr ==15 ) ) ? iput_data15 :
	          (rr15 & in_en16 &  (port16_addr ==15 )  ) ? iput_data16 : '0;


assign rd_en1 = (  (rr1 & in_en1 & (port1_addr == 0 ) ) | (rr2 & in_en1 & (port1_addr ==1 ) ) |
                   (rr3 & in_en1 & (port1_addr == 2 ) ) | (rr4 & in_en1 & (port1_addr ==3 ) ) |
                   (rr5 & in_en1 & (port1_addr == 4 ) ) | (rr6 & in_en1 & (port1_addr ==5 ) ) |
                   (rr7 & in_en1 & (port1_addr == 6 ) ) | (rr8 & in_en1 & (port1_addr ==7 ) ) |
                   (rr9 & in_en1 & (port1_addr == 8 ) ) | (rr10 & in_en1 & (port1_addr ==9 ) ) |
	           (rr11 & in_en1 & (port1_addr == 10 ) ) | (rr12 & in_en1 & (port1_addr ==11 ) ) |
	           (rr13 & in_en1 & (port1_addr == 12 ) ) | (rr14 & in_en1 & (port1_addr ==13 ) ) |
	           (rr15 & in_en1 & (port1_addr == 14 ) ) | (rr16 & in_en1 & (port1_addr ==15 ) ) 
	   );


assign rd_en2 = (  (rr2 & in_en2 & (port2_addr == 0 ) ) | (rr3 & in_en2 & (port2_addr ==1 ) ) |
                   (rr4 & in_en2 & (port2_addr == 2 ) ) | (rr5 & in_en2 & (port2_addr ==3 ) ) |
                   (rr6 & in_en2 & (port2_addr == 4 ) ) | (rr7 & in_en2 & (port2_addr ==5 ) ) |
                   (rr8 & in_en2 & (port2_addr == 6 ) ) | (rr9 & in_en2 & (port2_addr ==7 ) ) |
                   (rr10 & in_en2 & (port2_addr == 8 ) ) | (rr11 & in_en2 & (port2_addr ==9 ) ) | 
                   (rr12 & in_en2 & (port2_addr == 10 ) ) | (rr13 & in_en2 & (port2_addr ==11 ) ) | 
                   (rr14 & in_en2 & (port2_addr == 12 ) ) | (rr15 & in_en2 & (port2_addr ==13 ) ) | 
                   (rr16 & in_en2 & (port2_addr == 14 ) ) | (rr1 & in_en2 & (port2_addr ==15 ) )  
	  
	   );

assign rd_en3 = (  (rr3 & in_en3 & (port3_addr == 0 ) ) | (rr4 & in_en3 & (port3_addr ==1 ) ) |
                   (rr5 & in_en3 & (port3_addr == 2 ) ) | (rr6 & in_en3 & (port3_addr ==3 ) ) |
                   (rr7 & in_en3 & (port3_addr == 4 ) ) | (rr8 & in_en3 & (port3_addr ==5 ) ) |
                   (rr9 & in_en3 & (port3_addr == 6 ) ) | (rr10 & in_en3 & (port3_addr ==7 ) ) |
                   (rr11 & in_en3 & (port3_addr == 8 ) ) | (rr12 & in_en3 & (port3_addr ==9 ) )  |
                   (rr13 & in_en3 & (port3_addr == 10 ) ) | (rr14 & in_en3 & (port3_addr ==11 ) )  |
                   (rr15 & in_en3 & (port3_addr == 12 ) ) | (rr16 & in_en3 & (port3_addr ==13 ) )  |
                   (rr1 & in_en3 & (port3_addr == 14 ) ) | (rr2 & in_en3 & (port3_addr ==15 ) )  
	   );

assign rd_en4 = (  (rr4 & in_en4 & (port4_addr == 0 ) ) | (rr5 & in_en4 & (port4_addr ==1 ) ) |
                   (rr6 & in_en4 & (port4_addr == 2 ) ) | (rr7 & in_en4 & (port4_addr ==3 ) ) |
                   (rr8 & in_en4 & (port4_addr == 4 ) ) | (rr9 & in_en4 & (port4_addr ==5 ) ) |
                   (rr10 & in_en4 & (port4_addr == 6 ) ) | (rr11 & in_en4 & (port4_addr ==7 ) ) |
                   (rr12 & in_en4 & (port4_addr == 8 ) ) | (rr13 & in_en4 & (port4_addr ==9 ) )  |
                   (rr14 & in_en4 & (port4_addr == 10 ) ) | (rr15 & in_en4 & (port4_addr ==11 ) )  |
                   (rr16 & in_en4 & (port4_addr == 12 ) ) | (rr1 & in_en4 & (port4_addr ==13 ) )  |
                   (rr2 & in_en4 & (port4_addr == 14 ) ) | (rr3 & in_en4 & (port4_addr ==15 ) )  
	   );

assign rd_en5 = (  (rr5 & in_en5 & (port5_addr == 0 ) ) | (rr6 & in_en5 & (port5_addr ==1 ) ) |
                   (rr7 & in_en5 & (port5_addr == 2 ) ) | (rr8 & in_en5 & (port5_addr ==3 ) ) |
                   (rr9 & in_en5 & (port5_addr == 4 ) ) | (rr10 & in_en5 & (port5_addr ==5 ) ) |
                   (rr11 & in_en5 & (port5_addr == 6 ) ) | (rr12 & in_en5 & (port5_addr ==7 ) ) |
                   (rr13 & in_en5 & (port5_addr == 8 ) ) | (rr14 & in_en5 & (port5_addr ==9 ) ) | 
                   (rr15 & in_en5 & (port5_addr == 10 ) ) | (rr16 & in_en5 & (port5_addr ==11 ) ) | 
                   (rr1 & in_en5 & (port5_addr == 12 ) ) | (rr2 & in_en5 & (port5_addr ==13 ) ) | 
                   (rr3 & in_en5 & (port5_addr == 14 ) ) | (rr4 & in_en5 & (port5_addr ==15 ) ) 
	   );

assign rd_en6 = (  (rr6 & in_en6 & (port6_addr == 0 ) ) | (rr7 & in_en6 & (port6_addr ==1 ) ) |
                   (rr8 & in_en6 & (port6_addr == 2 ) ) | (rr9 & in_en6 & (port6_addr ==3 ) ) |
                   (rr10 & in_en6 & (port6_addr == 4 ) ) | (rr11 & in_en6 & (port6_addr ==5 ) ) |
                   (rr12 & in_en6 & (port6_addr == 6 ) ) | (rr13 & in_en6 & (port6_addr ==7 ) ) |
                   (rr14 & in_en6 & (port6_addr == 8 ) ) | (rr15 & in_en6 & (port6_addr ==9 ) ) |
                   (rr16 & in_en6 & (port6_addr == 10 ) ) | (rr1 & in_en6 & (port6_addr ==11 ) ) |
                   (rr2 & in_en6 & (port6_addr == 12 ) ) | (rr3 & in_en6 & (port6_addr ==13 ) ) |
                   (rr4 & in_en6 & (port6_addr == 14 ) ) | (rr5 & in_en6 & (port6_addr ==15 ) ) 
	   );

	   
assign rd_en7 = (  (rr7 & in_en7 & (port7_addr == 0 ) ) | (rr8 & in_en7 & (port7_addr ==1 ) ) |
                   (rr9 & in_en7 & (port7_addr == 2 ) ) | (rr10 & in_en7 & (port7_addr ==3 ) ) |
                   (rr11 & in_en7 & (port7_addr == 4 ) ) | (rr12 & in_en7 & (port7_addr ==5 ) ) |
                   (rr13 & in_en7 & (port7_addr == 6 ) ) | (rr14 & in_en7 & (port7_addr ==7 ) ) |
                   (rr15 & in_en7 & (port7_addr == 8 ) ) | (rr16 & in_en7 & (port7_addr ==9 ) ) |
                   (rr1 & in_en7 & (port7_addr == 10 ) ) | (rr2 & in_en7 & (port7_addr ==11 ) ) |
                   (rr3 & in_en7 & (port7_addr == 12 ) ) | (rr4 & in_en7 & (port7_addr ==13 ) ) |
                   (rr5 & in_en7 & (port7_addr == 14 ) ) | (rr6 & in_en7 & (port7_addr ==15 ) ) 
	   );


assign rd_en8 = (  (rr8 & in_en8 & (port8_addr == 0 ) ) | (rr9 & in_en8 & (port8_addr ==1 ) ) |
                   (rr10 & in_en8 & (port8_addr == 2 ) ) | (rr11 & in_en8 & (port8_addr ==3 ) ) |
                   (rr12 & in_en8 & (port8_addr == 4 ) ) | (rr13 & in_en8 & (port8_addr ==5 ) ) |
                   (rr14 & in_en8 & (port8_addr == 6 ) ) | (rr15 & in_en8 & (port8_addr ==7 ) ) |
                   (rr16 & in_en8 & (port8_addr == 8 ) ) | (rr1 & in_en8 & (port8_addr ==9 ) ) |
                   (rr2 & in_en8 & (port8_addr == 10 ) ) | (rr3 & in_en8 & (port8_addr ==11 ) ) |
                   (rr4 & in_en8 & (port8_addr == 12 ) ) | (rr5 & in_en8 & (port8_addr ==13 ) ) |
                   (rr6 & in_en8 & (port8_addr == 14 ) ) | (rr7 & in_en8 & (port8_addr ==15 ) ) 
	   );


assign rd_en9 = (  (rr9 & in_en9 & (port9_addr == 0 ) ) | (rr10 & in_en9 & (port9_addr ==1 ) ) |
                   (rr11 & in_en9 & (port9_addr == 2 ) ) | (rr12 & in_en9 & (port9_addr ==3 ) ) |
                   (rr13 & in_en9 & (port9_addr == 4 ) ) | (rr14 & in_en9 & (port9_addr ==5 ) ) |
                   (rr15 & in_en9 & (port9_addr == 6 ) ) | (rr16 & in_en9 & (port9_addr ==7 ) ) |
                   (rr1 & in_en9 & (port9_addr == 8 ) ) | (rr2 & in_en9 & (port9_addr ==9 ) ) |
                   (rr3 & in_en9 & (port9_addr == 10 ) ) | (rr4 & in_en9 & (port9_addr ==11 ) ) |
                   (rr5 & in_en9 & (port9_addr == 12 ) ) | (rr6 & in_en9 & (port9_addr ==13 ) ) |
                   (rr7 & in_en9 & (port9_addr == 14 ) ) | (rr8 & in_en9 & (port9_addr ==15 ) ) 
	   );

	   
assign rd_en10 = (  (rr10 & in_en10 & (port10_addr == 0 ) ) | (rr11 & in_en10 & (port10_addr ==1 ) ) |
                   (rr12 & in_en10 & (port10_addr == 2 ) ) | (rr13 & in_en10 & (port10_addr ==3 ) ) |
                   (rr14 & in_en10 & (port10_addr == 4 ) ) | (rr15 & in_en10 & (port10_addr ==5 ) ) |
                   (rr16 & in_en10 & (port10_addr == 6 ) ) | (rr1 & in_en10 & (port10_addr ==7 ) ) |
                   (rr2 & in_en10 & (port10_addr == 8 ) ) | (rr3 & in_en10 & (port10_addr ==9 ) ) |
                   (rr4 & in_en10 & (port10_addr == 10 ) ) | (rr5 & in_en10 & (port10_addr ==11 ) ) |
                   (rr6 & in_en10 & (port10_addr == 12 ) ) | (rr7 & in_en10 & (port10_addr ==13 ) ) |
                   (rr8 & in_en10 & (port10_addr == 14 ) ) | (rr9 & in_en10 & (port10_addr ==15 ) ) 
	   );

assign rd_en11 = (  (rr11 & in_en11 & (port11_addr == 0 ) ) | (rr12 & in_en11 & (port11_addr ==1 ) ) |
                   (rr13 & in_en11 & (port11_addr == 2 ) ) | (rr14 & in_en11 & (port11_addr ==3 ) ) |
                   (rr15 & in_en11 & (port11_addr == 4 ) ) | (rr16 & in_en11 & (port11_addr ==5 ) ) |
                   (rr1 & in_en11 & (port11_addr == 6 ) ) | (rr2 & in_en11 & (port11_addr ==7 ) ) |
                   (rr3 & in_en11 & (port11_addr == 8 ) ) | (rr4 & in_en11 & (port11_addr ==9 ) ) |
                   (rr5 & in_en11 & (port11_addr == 10 ) ) | (rr6 & in_en11 & (port11_addr ==11 ) ) |
                   (rr7 & in_en11 & (port11_addr == 12 ) ) | (rr8 & in_en11 & (port11_addr ==13 ) ) |
                   (rr9 & in_en11 & (port11_addr == 14 ) ) | (rr10 & in_en11 & (port11_addr ==15 ) ) 
	   );


assign rd_en12 = (  (rr12 & in_en12 & (port12_addr == 0 ) ) | (rr13 & in_en12 & (port12_addr ==1 ) ) |
                   (rr14 & in_en12 & (port12_addr == 2 ) ) | (rr15 & in_en12 & (port12_addr ==3 ) ) |
                   (rr16 & in_en12 & (port12_addr == 4 ) ) | (rr1 & in_en12 & (port12_addr ==5 ) ) |
                   (rr2 & in_en12 & (port12_addr == 6 ) ) | (rr3 & in_en12 & (port12_addr ==7 ) ) |
                   (rr4 & in_en12 & (port12_addr == 8 ) ) | (rr5 & in_en12 & (port12_addr ==9 ) ) |
                   (rr6 & in_en12 & (port12_addr == 10 ) ) | (rr7 & in_en12 & (port12_addr ==11 ) ) |
                   (rr8 & in_en12 & (port12_addr == 12 ) ) | (rr9 & in_en12 & (port12_addr ==13 ) ) |
                   (rr10 & in_en12 & (port12_addr == 14 ) ) | (rr11 & in_en12 & (port12_addr ==15 ) ) 
	   );

assign rd_en13 = (  (rr13 & in_en13 & (port13_addr == 0 ) ) | (rr14 & in_en13 & (port13_addr ==1 ) ) |
                   (rr15 & in_en13 & (port13_addr == 2 ) ) | (rr16 & in_en13 & (port13_addr ==3 ) ) |
                   (rr1 & in_en13 & (port13_addr == 4 ) ) | (rr2 & in_en13 & (port13_addr ==5 ) ) |
                   (rr3 & in_en13 & (port13_addr == 6 ) ) | (rr4 & in_en13 & (port13_addr ==7 ) ) |
                   (rr5 & in_en13 & (port13_addr == 8 ) ) | (rr6 & in_en13 & (port13_addr ==9 ) ) |
                   (rr7 & in_en13 & (port13_addr == 10 ) ) | (rr8 & in_en13 & (port13_addr ==11 ) ) |
                   (rr9 & in_en13 & (port13_addr == 12 ) ) | (rr10 & in_en13 & (port13_addr ==13 ) ) |
                   (rr11 & in_en13 & (port13_addr == 14 ) ) | (rr12 & in_en13 & (port13_addr ==15 ) ) 
	   );

assign rd_en14 = (  (rr14 & in_en14 & (port14_addr == 0 ) ) | (rr15 & in_en14 & (port14_addr ==1 ) ) |
                   (rr16 & in_en14 & (port14_addr == 2 ) ) | (rr1 & in_en14 & (port14_addr ==3 ) ) |
                   (rr2 & in_en14 & (port14_addr == 4 ) ) | (rr3 & in_en14 & (port14_addr ==5 ) ) |
                   (rr4 & in_en14 & (port14_addr == 6 ) ) | (rr5 & in_en14 & (port14_addr ==7 ) ) |
                   (rr6 & in_en14 & (port14_addr == 8 ) ) | (rr7 & in_en14 & (port14_addr ==9 ) ) |
                   (rr8 & in_en14 & (port14_addr == 10 ) ) | (rr9 & in_en14 & (port14_addr ==11 ) ) |
                   (rr10 & in_en14 & (port14_addr == 12 ) ) | (rr11 & in_en14 & (port14_addr ==13 ) ) |
                   (rr12 & in_en14 & (port14_addr == 14 ) ) | (rr13 & in_en14 & (port14_addr ==15 ) ) 
	   );

assign rd_en15 = (  (rr15 & in_en15 & (port15_addr == 0 ) ) | (rr16 & in_en15 & (port15_addr ==1 ) ) |
                   (rr1 & in_en15 & (port15_addr == 2 ) ) | (rr2 & in_en15 & (port15_addr ==3 ) ) |
                   (rr3 & in_en15 & (port15_addr == 4 ) ) | (rr4 & in_en15 & (port15_addr ==5 ) ) |
                   (rr5 & in_en15 & (port15_addr == 6 ) ) | (rr6 & in_en15 & (port15_addr ==7 ) ) |
                   (rr7 & in_en15 & (port15_addr == 8 ) ) | (rr8 & in_en15 & (port15_addr ==9 ) ) |
                   (rr9 & in_en15 & (port15_addr == 10 ) ) | (rr10 & in_en15 & (port15_addr ==11 ) ) |
                   (rr11 & in_en15 & (port15_addr == 12 ) ) | (rr12 & in_en15 & (port15_addr ==13 ) ) |
                   (rr13 & in_en15 & (port15_addr == 14 ) ) | (rr14 & in_en15 & (port15_addr ==15 ) ) 
	   );

assign rd_en16 = (  (rr16 & in_en16 & (port16_addr == 0 ) ) | (rr1 & in_en16 & (port16_addr ==1 ) ) |
                   (rr2 & in_en16 & (port16_addr == 2 ) ) | (rr3 & in_en16 & (port16_addr ==3 ) ) |
                   (rr4 & in_en16 & (port16_addr == 4 ) ) | (rr5 & in_en16 & (port16_addr ==5 ) ) |
                   (rr6 & in_en16 & (port16_addr == 6 ) ) | (rr7 & in_en16 & (port16_addr ==7 ) ) |
                   (rr8 & in_en16 & (port16_addr == 8 ) ) | (rr9 & in_en16 & (port16_addr ==9 ) ) |
                   (rr10 & in_en16 & (port16_addr == 10 ) ) | (rr11 & in_en16 & (port16_addr ==11 ) ) |
                   (rr12 & in_en16 & (port16_addr == 12 ) ) | (rr13 & in_en16 & (port16_addr ==13 ) ) |
                   (rr14 & in_en16 & (port16_addr == 14 ) ) | (rr15 & in_en16 & (port16_addr ==15 ) ) 
	   );

endmodule
























