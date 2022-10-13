// Code your testbench here
// or browse Examples
class transaction;
 
  //declaring the transaction items
  rand bit [1:0] addr;
  rand bit wr_en;
  rand bit rd_en;
  rand bit [7:0] wdata;
       bit [7:0] rdata;
       bit [1:0] cnt;
   
  //constaint, to generate any one among write and read
  constraint wr_rd_c { wr_en != rd_en; };
   
endclass
