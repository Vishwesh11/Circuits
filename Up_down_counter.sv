//Counter design:  
// 
//Specs ::  
//    1. Basic 3 bit counter counting value from 000 to 111 in default mode and a special input signal named down is at zero in default mode. 
//    2. When the special signal gets triggered its considered out of default mode and starts decrementing from 111 to 000 as down counter.  
//
//I-O Signals used for the design counter :  
//              1.  input signals - clk, rst
//              2.  output count value for verifying



module counter
  (
	input clk, rst, down,
    output logic [2:0] count
  );
  
  logic [2:0]  count_nxt;
  
  always @ (posedge clk , negedge rst) begin 
    
    if(!rst) count <= 3'h0;
    else count <= count_nxt;
    
  end
  
  assign count_nxt = (down) ? count-1 : count+1 ;
  
endmodule 
