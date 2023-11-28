/*************************************************************************
*
* Copyright � Microsoft Corporation. All rights reserved.
* Copyright � Broadcom Inc. All rights reserved.
* Licensed under the MIT License.
*
*************************************************************************/
`include "cr_global_params.vh"

`define FSDB_PATH zipline_tb

module zipline_tb;
    string testname;
    string seed;
    reg[31:0] initial_seed;
    int  error_cntr;

    string file_path;
    int input_length;
    int input_start_pos;

    string fsdbFilename;


    logic clk;
    logic rst_n;

    logic ib_tready;
    logic [`AXI_S_TID_WIDTH-1:0]  ib_tid;
    logic [`AXI_S_DP_DWIDTH-1:0]  ib_tdata;
    logic [`AXI_S_TSTRB_WIDTH-1:0] ib_tstrb;
    logic [`AXI_S_USER_WIDTH-1:0] ib_tuser;
    logic                         ib_tvalid;
    logic                         ib_tlast;

    logic ob_tready;
    logic [`AXI_S_TID_WIDTH-1:0]  ob_tid;
    logic [`AXI_S_DP_DWIDTH-1:0]  ob_tdata;
    logic [`AXI_S_TSTRB_WIDTH-1:0] ob_tstrb;
    logic [`AXI_S_USER_WIDTH-1:0] ob_tuser;
    logic                         ob_tvalid;
    logic                         ob_tlast;

    logic                         sch_update_tready;
    logic [7:0]                   sch_update_tdata;
    logic                         sch_update_tvalid;
    logic                         sch_update_tlast;
    logic [1:0]                   sch_update_tuser;

    logic [`N_RBUS_ADDR_BITS-1:0] apb_paddr;
    logic                         apb_psel;
    logic                         apb_penable;
    logic                         apb_pwrite;
    logic [`N_RBUS_DATA_BITS-1:0] apb_pwdata;
    logic [`N_RBUS_DATA_BITS-1:0] apb_prdata;
    logic                         apb_pready;
    logic                         apb_pslverr;
    logic                         engine_int;
    logic                         engine_idle;
    logic                         key_mode;
    logic                         dbg_cmd_disable;
    logic                         xp9_disable;



    initial begin
        clk = 1'b0;
        forever begin
            #0.625;
            clk = ~clk;
        end
    end

    string head_stimulus [0:6];
    string tail_stimulus [0:1];
    initial begin
        head_stimulus[0] = "0x400000000a000400  SoT      0xff";
        head_stimulus[1] = "0x0000000000000000  EoT      0xff";
        head_stimulus[2] = "0x800000000a000601  SoT      0xff";
        head_stimulus[3] = "0x000000000780b000           0xff";
        head_stimulus[4] = "0x3a00000000200654  EoT      0xff";
        head_stimulus[5] = "0xc00000000a00020b  SoT-EoT  0xff";
        head_stimulus[6] = "0xa00000000a000005  SoT      0xff";

        tail_stimulus[0] = "0x800000000a000409  SoT      0xff";
        tail_stimulus[1] = "0x0000000000000000  EoT      0xff";
    end


    apb_xactor #(.ADDR_WIDTH(`N_RBUS_ADDR_BITS),.DATA_WIDTH(`N_RBUS_DATA_BITS)) apb_xactor(
                   .clk(clk),
                   .reset_n(rst_n),
                   .prdata(apb_prdata),
                   .pready(apb_pready),
                   .pslverr(apb_pslverr),
                   .psel(apb_psel),
                   .penable(apb_penable),
                   .paddr(apb_paddr),
                   .pwdata(apb_pwdata),
                   .pwrite(apb_pwrite)
               );

    cr_cceip_64
        #(
        )
        dut(
            .ib_tready(ib_tready),
            .ib_tvalid(ib_tvalid),
            .ib_tlast(ib_tlast),
            .ib_tid(ib_tid),
            .ib_tstrb(ib_tstrb),
            .ib_tuser(ib_tuser),
            .ib_tdata(ib_tdata),

            .ob_tready(ob_tready),
            .ob_tvalid(ob_tvalid),
            .ob_tlast(ob_tlast),
            .ob_tid(ob_tid),
            .ob_tstrb(ob_tstrb),
            .ob_tuser(ob_tuser),
            .ob_tdata(ob_tdata),

            .sch_update_tready(sch_update_tready),
            .sch_update_tvalid(sch_update_tvalid),
            .sch_update_tlast(sch_update_tlast),
            .sch_update_tuser(sch_update_tuser),
            .sch_update_tdata(sch_update_tdata),

            .apb_paddr(apb_paddr),
            .apb_psel(apb_psel),
            .apb_penable(apb_penable),
            .apb_pwrite(apb_pwrite),
            .apb_pwdata(apb_pwdata),
            .apb_prdata(apb_prdata),
            .apb_pready(apb_pready),
            .apb_pslverr(apb_pslverr),

            .clk(clk),
            .rst_n(rst_n),
            .key_mode (key_mode),
            .dbg_cmd_disable (dbg_cmd_disable),
            .xp9_disable (xp9_disable),
            .cceip_int (engine_int),
            .cceip_idle (engine_idle),
            .scan_en(1'b0),
            .scan_mode(1'b0),
            .scan_rst_n(1'b0),

            .ovstb(1'b1),
            .lvm(1'b0),
            .mlvm(1'b0)
        );

    initial begin

        error_cntr = 0;

        key_mode = 1'b0;
        dbg_cmd_disable = 1'b0;
        xp9_disable = 1'b0;
        rst_n = 1'b0;

        testname = "xp10";

        if( $test$plusargs("SEED") ) begin
            $value$plusargs("SEED=%d", seed);
        end
        else begin
            seed="1";
        end

        if( $test$plusargs("FILEPATH") ) begin
            $value$plusargs("FILEPATH=%s", file_path);
            $display("FILEPATH=%s", file_path);
        end
        else begin
            $fatal("FILEPATH not specified");
        end

        if( $test$plusargs("INPUT_LENGTH") ) begin
            $value$plusargs("INPUT_LENGTH=%d", input_length);
            $display("INPUT_LENGTH=%d", input_length);
        end
        else begin
            $fatal("INPUT_LENGTH not specified");
        end

        if( $test$plusargs("INPUT_START_POS") ) begin
            $value$plusargs("INPUT_START_POS=%d", input_start_pos);
            $display("INPUT_START_POS=%d", input_start_pos);
        end
        else begin
            $fatal("INPUT_START_POS not specified");
        end

        if ( $test$plusargs("waves") ) begin
            if( $test$plusargs("dump_fsdb") ) begin
                $value$plusargs("fsdbfile+%s", fsdbFilename);
                $fsdbDumpfile(fsdbFilename);
                $fsdbDumpvars(0, `FSDB_PATH);
                $fsdbDumpMDA(0, `FSDB_PATH);
                $fsdbDumpvars(0, "+all", `FSDB_PATH);
            end
            else begin
                $vcdpluson();
                $vcdplusmemon();
            end
        end

        $display("--- \"rst_n\" is being ASSERTED for 100ns ---");

        #100;

        sch_update_tready <= 1'b1;
        ib_tid <= 0;
        ib_tvalid <= 0;
        ib_tlast <= 0;
        ib_tdata <= 0;
        ib_tstrb <= 0;
        ib_tuser <= 0;
        ob_tready <= 1;

        #50;

        $display("--- \"rst_n\" has been DE-ASSERTED! ---");

        rst_n = 1'b1;

        #100;

        @(posedge clk);

        do_engine_config();

        fork
            begin
                service_ib_interface();
            end
            begin
                service_ob_interface();
            end
        join


        if ( error_cntr ) begin
            $display("\nTest %s FAILED!\n", testname);
        end
        else begin
            $display("\nTest %s PASSED!\n", testname);
        end

        #10ns;
        $finish;

    end // initial

    task service_ib_interface();
        reg[7:0]       tstrb;
        reg[63:0]      tdata;
        string         tuser_string;
        string         vector;
        integer        str_get;
        integer        file_descriptor;
        logic          saw_cqe;
        integer        p;
        integer        remaining_length;
        integer        read_count;



        file_descriptor = $fopen(file_path, "r");
        if ( file_descriptor == 0 ) begin
            $display ("INBOUND_FATAL:  @time:%-d File %s NOT found!", $time, file_path );
            $finish;
        end
        else begin
            $display ("INBOUND_INFO:  @time:%-d Openned test file -->  %s", $time, file_path );
        end
        read_count = $fseek(file_descriptor, input_start_pos, 0);

        ib_tlast <= 1'b0;
        // feed head into engine
        while(p < 7) begin
            if (ib_tready === 1'b1) begin
                $display ("INBOUND_INFO:  @time:%-d vector --> %s", $time, head_stimulus[p] );
                str_get = $sscanf(head_stimulus[p], "0x%h %s 0x%h", tdata, tuser_string, tstrb);
                if ( str_get == 3 ) begin
                    ib_tuser <= translate_tuser( tuser_string );
                end
                else begin
                    ib_tuser <= 8'h00;
                end
                ib_tvalid <= 1'b1;
                ib_tdata <= tdata;
                ib_tstrb <= tstrb;
                p += 1;
            end
            @(posedge clk);
        end

        // feed file into engine
        remaining_length = input_length;
        while(remaining_length > 0) begin
            if ( ib_tready === 1'b1 ) begin
                ib_tlast <= 1'b0;
                read_count = $fread(tdata, file_descriptor);
                if(read_count > 0) begin
                    ib_tvalid <= 1'b1;
                    ib_tdata <= tdata;
                    ib_tstrb <= (9'b1 << read_count) - 1;
                    if(remaining_length <= 8) begin
                        ib_tuser <= translate_tuser("EoT");
                        $display("EoT");
                    end
                    else begin
                        ib_tuser <= 8'h00;
                    end
                    remaining_length -= read_count;
                    $display("remaining_length=%d", remaining_length);
                end else begin
                    $fatal(2, "Requested input file length out of boundary");
                end
            end
            @(posedge clk);
        end

        // feed tail into engine
        p = 0;
        while(p < 2) begin
            if (ib_tready === 1'b1) begin
                $display ("INBOUND_INFO:  @time:%-d vector --> %s", $time, head_stimulus[p] );
                str_get = $sscanf(head_stimulus[p], "0x%h %s 0x%h", tdata, tuser_string, tstrb);
                if ( str_get == 3 ) begin
                    ib_tuser <= translate_tuser( tuser_string );
                end
                else begin
                    ib_tuser <= 8'h00;
                end
                ib_tvalid <= 1'b1;
                ib_tdata <= tdata;
                ib_tstrb <= tstrb;
                ib_tlast <= (tuser_string == "EoT");
                p += 1;
            end
            @(posedge clk);
        end

        ib_tvalid <= 1'b0;
        ib_tlast <= 1'b0;

        @(posedge clk);

        $display ("INBOUND_INFO:  @time:%-d Exiting INBOUND thread...", $time );

    endtask // service_ib_interface




    task service_ob_interface();
        reg[7:0]       tstrb;
        reg[7:0]       tuser;
        reg[63:0]      tdata;
        reg            tlast;
        logic          saw_data_sot;
        logic          saw_data_eot;
        integer        compressed_length;
        integer        i;

        compressed_length = 0;
        saw_data_sot = 0;
        saw_data_eot = 0;
        $display("start service ob interface");
        while( !saw_data_eot ) begin
            if(ob_tvalid) begin
                $display("outdata = 0x%h", ob_tdata);
                if(saw_data_sot) begin
                    for(i = 0; i < 8; i += 1) begin
                        if (ob_tstrb[i] == 1'b1) begin
                            compressed_length += 1;
                        end
                    end
                    if(ob_tuser == 8'h02) begin
                        saw_data_eot = 1;
                    end
                end
                else if(ob_tdata[7:0]==8'h05 && ob_tuser == 8'h01) begin
                    saw_data_sot = 1;
                end
            end
            @(posedge clk);
        end

        @(posedge clk);

        $display ("OUTBOUND_INFO:  @time:%-d Exiting OUTBOUND thread...", $time );
        $display ("compressed_length=%d", compressed_length);
        $finish();

    endtask // service_ob_interface



    task do_engine_config();
        reg[31:0]      address;
        reg[31:0]      data;
        reg[31:0]      returned_data;
        string         operation;
        string         file_name;
        string         vector;
        integer        str_get;
        integer        file_descriptor;
        reg            response;


        file_name = $psprintf("../tests/%s.config", testname);
        file_descriptor = $fopen(file_name, "r");
        if ( file_descriptor == 0 ) begin
            $display ("\nAPB_INFO:  @time:%-d File %s NOT found!\n", $time, file_name );
            return;
        end
        else begin
            $display ("APB_INFO:  @time:%-d Openned test file -->  %s", $time, file_name );
        end

        while( !$feof(file_descriptor) ) begin
            if ( $fgets(vector,file_descriptor) ) begin
                $display ("APB_INFO:  @time:%-d vector --> %s", $time, vector );
                str_get = $sscanf(vector, "%s 0x%h 0x%h", operation, address, data);
                //      $display ("APB_INFO:  @time:%-d parsed vector --> %s 0x%h 0x%h    %d", $time, operation, address, data, str_get );
                if ( str_get == 3 && (operation == "r" || operation == "R" || operation == "w" || operation == "W") ) begin
                    if ( operation == "r" || operation == "R" ) begin
                        apb_xactor.read(address, returned_data, response);
                        if ( response !== 0 ) begin
                            $display ("\n\nAPB_FATAL:  @time:%-d   Slave ERROR and/or TIMEOUT on the READ operation to address 0x%h\n\n",
                                      $time, address );
                            $finish;
                        end
                        if ( returned_data !== data ) begin
                            $display ("APB_ERROR:  @time:%-d   Data MISMATCH --> Actual: 0x%h  Expect: 0x%h", $time, returned_data, data );
                            ++error_cntr;
                            if ( error_cntr > 10 ) begin
                                $finish;
                            end
                        end
                    end
                    else begin
                        apb_xactor.write(address, data, response);
                        if ( response !== 0 ) begin
                            $display ("\n\nAPB_FATAL:  @time:%-d   Slave ERROR and/or TIMEOUT on the WRITE operation to address 0x%h\n\n",
                                      $time, address );
                            $finish;
                        end
                    end
                    @(posedge clk);
                end
                else if ( operation !== "#" ) begin
                    $display ("APB_FATAL:  @time:%-d vector --> %s NOT valid!", $time, vector );
                    $finish;
                end
            end
        end

        @(posedge clk);

        $display ("APB_INFO:  @time:%-d Exiting APB engine config ...", $time );

    endtask // do_engine_config



    function logic[7:0] translate_tuser (string tuser);
        if ( tuser == "SoT" ) begin
            return 8'h01;
        end
        else if ( tuser == "EoT" ) begin
            return 8'h02;
        end
        else begin
            return 8'h03;
        end
    endfunction
    :
        translate_tuser


    endmodule
    :
    zipline_tb
