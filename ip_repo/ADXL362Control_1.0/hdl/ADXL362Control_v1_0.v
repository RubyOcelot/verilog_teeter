
`timescale 1 ns / 1 ps

	module ADXL362Control_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface ADXL362Ctrl_Interface
		parameter integer C_ADXL362Ctrl_Interface_DATA_WIDTH	= 32,
		parameter integer C_ADXL362Ctrl_Interface_ADDR_WIDTH	= 5
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface ADXL362Ctrl_Interface
		input wire  adxl362ctrl_interface_aclk,
		input wire  adxl362ctrl_interface_aresetn,
		input wire [C_ADXL362Ctrl_Interface_ADDR_WIDTH-1 : 0] adxl362ctrl_interface_awaddr,
		input wire [2 : 0] adxl362ctrl_interface_awprot,
		input wire  adxl362ctrl_interface_awvalid,
		output wire  adxl362ctrl_interface_awready,
		input wire [C_ADXL362Ctrl_Interface_DATA_WIDTH-1 : 0] adxl362ctrl_interface_wdata,
		input wire [(C_ADXL362Ctrl_Interface_DATA_WIDTH/8)-1 : 0] adxl362ctrl_interface_wstrb,
		input wire  adxl362ctrl_interface_wvalid,
		output wire  adxl362ctrl_interface_wready,
		output wire [1 : 0] adxl362ctrl_interface_bresp,
		output wire  adxl362ctrl_interface_bvalid,
		input wire  adxl362ctrl_interface_bready,
		input wire [C_ADXL362Ctrl_Interface_ADDR_WIDTH-1 : 0] adxl362ctrl_interface_araddr,
		input wire [2 : 0] adxl362ctrl_interface_arprot,
		input wire  adxl362ctrl_interface_arvalid,
		output wire  adxl362ctrl_interface_arready,
		output wire [C_ADXL362Ctrl_Interface_DATA_WIDTH-1 : 0] adxl362ctrl_interface_rdata,
		output wire [1 : 0] adxl362ctrl_interface_rresp,
		output wire  adxl362ctrl_interface_rvalid,
		input wire  adxl362ctrl_interface_rready
	);
// Instantiation of Axi Bus Interface ADXL362Ctrl_Interface
	ADXL362Control_v1_0_ADXL362Ctrl_Interface # ( 
		.C_S_AXI_DATA_WIDTH(C_ADXL362Ctrl_Interface_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_ADXL362Ctrl_Interface_ADDR_WIDTH)
	) ADXL362Control_v1_0_ADXL362Ctrl_Interface_inst (
		.S_AXI_ACLK(adxl362ctrl_interface_aclk),
		.S_AXI_ARESETN(adxl362ctrl_interface_aresetn),
		.S_AXI_AWADDR(adxl362ctrl_interface_awaddr),
		.S_AXI_AWPROT(adxl362ctrl_interface_awprot),
		.S_AXI_AWVALID(adxl362ctrl_interface_awvalid),
		.S_AXI_AWREADY(adxl362ctrl_interface_awready),
		.S_AXI_WDATA(adxl362ctrl_interface_wdata),
		.S_AXI_WSTRB(adxl362ctrl_interface_wstrb),
		.S_AXI_WVALID(adxl362ctrl_interface_wvalid),
		.S_AXI_WREADY(adxl362ctrl_interface_wready),
		.S_AXI_BRESP(adxl362ctrl_interface_bresp),
		.S_AXI_BVALID(adxl362ctrl_interface_bvalid),
		.S_AXI_BREADY(adxl362ctrl_interface_bready),
		.S_AXI_ARADDR(adxl362ctrl_interface_araddr),
		.S_AXI_ARPROT(adxl362ctrl_interface_arprot),
		.S_AXI_ARVALID(adxl362ctrl_interface_arvalid),
		.S_AXI_ARREADY(adxl362ctrl_interface_arready),
		.S_AXI_RDATA(adxl362ctrl_interface_rdata),
		.S_AXI_RRESP(adxl362ctrl_interface_rresp),
		.S_AXI_RVALID(adxl362ctrl_interface_rvalid),
		.S_AXI_RREADY(adxl362ctrl_interface_rready)
	);

	// Add user logic here

	// User logic ends

	endmodule
