`ifndef __REGFILE_HEADER__
    `define __REGFILE_HEADER__

    `define HIGH 1'b1 //high level
    `define LOW  1'b0 //low level

    `define ENABLE_ 1'b0 //valid
    `define DISABLE_ 1'b1 //invalid

    `define DATA_W 32 //data width
    `define DataBus 31:0 //data bus
    `define DATA_D 32 //data depth

    `define ADDR_W 5 //addr witdth
    `define AddrBus 4:0 //addr bus

`endif
