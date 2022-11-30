module counter(cnt,clk,rst);

output reg [7:0] cnt;
input clk,rst; //active low reset

always @(posedge clk or negedge rst) begin
    
        if(!rst) 
                cnt <= 0;
        else 
                cnt <= cnt + 1 ;
                
    end
    
endmodule