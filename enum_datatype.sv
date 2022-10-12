// Code your testbench here
// or browse Examples
module enum_datatype;
 // enum{red,green,blue,yellow,white,black} colors;
  //enum{red=0,green,blue=4,yellow,white=10,black} colors;
  enum{red=0,green=1,blue=4,yellow,white=5,black} colors;
  initial begin
    colors=colors.first;
    for(int i=0;i<6;i++)begin
      $display("colours::value of%0s\t is=%0d",colors.name,colors);
      colors=colors.next;
    end 
  end
  endmodule
