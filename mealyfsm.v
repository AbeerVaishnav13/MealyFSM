module mealyfsm (
	input clk,    // Clock
	input rst,  // Asynchronous reset active low
	input x,
	output y
);

reg y;
reg [1:0]ps;
reg [1:0]ns;
parameter a = 2'b00, b = 2'b01, c = 2'b10;

always @(posedge clk or negedge rst) 
begin 
	if(~rst) 
	begin
		ps = a;
	end 

	else 
	begin
		ps = ns;
	end
end


always @(ps or x) 
begin 
	if(ps == a && x == 0) 
	begin
		ns = a;
	end 

	else if(ps == a && x == 1)
	begin
		ns = b;
	end

	else if(ps == b && x == 0) 
	begin
		ns = a;
	end 

	else if(ps == b && x == 1)
	begin
		ns = c;
	end

	else if(ps == c && x == 0) 
	begin
		ns = a;
	end 

	else if(ps == c && x == 1)
	begin
		ns = c;
	end
end


always @(ps or x) 
begin 
	if(ps == c && x == 1) 
	begin
		y = 1;
	end 

	else 
	begin
		y = 0;
	end
end

endmodule