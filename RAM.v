module RAM(
    input Read, Write, clock,
    input wire [31:0] DataIn, 
    input wire [8:0] address,
    output wire [31:0] DataOut
); 

    reg [31:0] ram[0:511];
	 reg [31:0] temp;

    initial begin
	    $readmemh("C:/Users/21is8/Documents/CPUDesignProject/MemContents.mem", ram); 
	end

    always @(*) begin
        if(Write) begin
            ram[address] <= DataIn;
        end
        if(Read) begin
            temp <= ram[address];
        end
    end
	 
	 assign DataOut = temp;

	 
endmodule

