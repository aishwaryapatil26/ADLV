// Code your testbench here
// or browse Examples
class packet;
  bit[31:0]addr;
  bit[31:0]data;
  bit write;
  string pkt_type;
  function new();
    addr=32'h10;
    data=32'hFF;
   write=1;
    pkt_type="GOOD_PKT";
  endfunction
  function void display();
    $display("---------------");
    $display("\taddr=%0h",addr);
    $display("\tdata=%0h",data);
    $display("\twrite=%0h",write);
    $display("\tpkt_type=%0s",pkt_type);
    $display("-------------------");
             endfunction
             endclass
             module sv_constructor;
               packet pkt;
               initial begin
                 pkt=new(32'h10,32'hFF,1,"GOOD_PKT");
                 pkt.display();
               end
             endmodule
               module class_assignment;
                 packet pkt_1;
                 packet pkt_2;
                 initial begin
                   pkt_1=new();
                   $display("\t***** calling pkt_1 display****");
                   pkt_1.display();
                   pkt_2=pkt_1;
                   $display("\t***** calling pkt_2 dispaly****");
                   pkt_2.display();
                   pkt_2.addr=32'hAB;
                   pkt_2.pkt_type="BAD_PKT";
                   $display("\t****calling pkt_1 display****");
                   pkt_1.display();
                            end
                            endmodule
           
