`ifndef VERILATOR
module testbench;
  reg [4095:0] vcdfile;
  reg clock;
`else
module testbench(input clock, output reg genclock);
  initial genclock = 1;
`endif
  reg genclock = 1;
  reg [31:0] cycle = 0;
  wire [0:0] PI_clock = clock;
  reg [0:0] PI_reset;
  rvfi_testbench UUT (
    .clock(PI_clock),
    .reset(PI_reset)
  );
`ifndef VERILATOR
  initial begin
    if ($value$plusargs("vcd=%s", vcdfile)) begin
      $dumpfile(vcdfile);
      $dumpvars(0, testbench);
    end
    #5 clock = 0;
    while (genclock) begin
      #5 clock = 0;
      #5 clock = 1;
    end
  end
`endif
  initial begin
`ifndef VERILATOR
    #1;
`endif
    UUT.cycle_reg = 8'b00000000;
    UUT.wrapper.uut.alu_out_q = 32'b00000000000000000000000000000000;
    UUT.wrapper.uut.cached_ascii_instr = 64'b0000000000000000000000000000000000000000000000000000000000000000;
    UUT.wrapper.uut.cached_insn_imm = 32'b00000000000000000000000000000000;
    UUT.wrapper.uut.cached_insn_opcode = 32'b00000000000000001000000001111100;
    UUT.wrapper.uut.cached_insn_rd = 5'b00000;
    UUT.wrapper.uut.cached_insn_rs1 = 5'b11000;
    UUT.wrapper.uut.cached_insn_rs2 = 5'b00000;
    UUT.wrapper.uut.clear_prefetched_high_word_q = 1'b0;
    UUT.wrapper.uut.compressed_instr = 1'b0;
    UUT.wrapper.uut.count_cycle = 64'b0000000000000000000000000000000000000000000000000000000000000000;
    UUT.wrapper.uut.count_instr = 64'b0000000000000000000000000000000000000000000000000000000000000000;
    UUT.wrapper.uut.cpu_state = 8'b00000000;
    UUT.wrapper.uut.dbg_insn_addr = 32'b00000000000000000000000000000000;
    UUT.wrapper.uut.dbg_irq_call = 1'b0;
    UUT.wrapper.uut.dbg_irq_enter = 1'b0;
    UUT.wrapper.uut.dbg_irq_ret = 32'b00000000000000000000000000000000;
    UUT.wrapper.uut.dbg_next = 1'b0;
    UUT.wrapper.uut.dbg_rs1val = 32'b10000000000000000000000001000000;
    UUT.wrapper.uut.dbg_rs1val_valid = 1'b0;
    UUT.wrapper.uut.dbg_rs2val = 32'b00000000000000000000000000000000;
    UUT.wrapper.uut.dbg_rs2val_valid = 1'b0;
    UUT.wrapper.uut.dbg_valid_insn = 1'b0;
    UUT.wrapper.uut.decoded_imm = 32'b00000000000000000000000010000010;
    UUT.wrapper.uut.decoded_imm_j = 32'b00000000000010000111000000001000;
    UUT.wrapper.uut.decoded_rd = 5'b00010;
    UUT.wrapper.uut.decoded_rs1 = 5'b10000;
    UUT.wrapper.uut.decoded_rs2 = 5'b01000;
    UUT.wrapper.uut.decoder_pseudo_trigger = 1'b1;
    UUT.wrapper.uut.decoder_pseudo_trigger_q = 1'b1;
    UUT.wrapper.uut.decoder_trigger = 1'b1;
    UUT.wrapper.uut.decoder_trigger_q = 1'b0;
    UUT.wrapper.uut.do_waitirq = 1'b0;
    UUT.wrapper.uut.genblk1.pcpi_mul.active = 4'b0000;
    UUT.wrapper.uut.genblk2.pcpi_div.instr_div = 1'b0;
    UUT.wrapper.uut.genblk2.pcpi_div.instr_divu = 1'b0;
    UUT.wrapper.uut.genblk2.pcpi_div.instr_rem = 1'b0;
    UUT.wrapper.uut.genblk2.pcpi_div.instr_remu = 1'b0;
    UUT.wrapper.uut.genblk2.pcpi_div.pcpi_rd = 32'b00000000000000000000000000000000;
    UUT.wrapper.uut.genblk2.pcpi_div.pcpi_ready = 1'b0;
    UUT.wrapper.uut.genblk2.pcpi_div.pcpi_wait = 1'b0;
    UUT.wrapper.uut.genblk2.pcpi_div.pcpi_wait_q = 1'b0;
    UUT.wrapper.uut.genblk2.pcpi_div.pcpi_wr = 1'b0;
    UUT.wrapper.uut.genblk2.pcpi_div.quotient_msk = 32'b00000000000000000000000000000000;
    UUT.wrapper.uut.genblk2.pcpi_div.running = 1'b0;
    UUT.wrapper.uut.instr_add = 1'b0;
    UUT.wrapper.uut.instr_addi = 1'b0;
    UUT.wrapper.uut.instr_and = 1'b0;
    UUT.wrapper.uut.instr_andi = 1'b0;
    UUT.wrapper.uut.instr_auipc = 1'b0;
    UUT.wrapper.uut.instr_beq = 1'b0;
    UUT.wrapper.uut.instr_bge = 1'b0;
    UUT.wrapper.uut.instr_bgeu = 1'b0;
    UUT.wrapper.uut.instr_blt = 1'b0;
    UUT.wrapper.uut.instr_bltu = 1'b0;
    UUT.wrapper.uut.instr_bne = 1'b0;
    UUT.wrapper.uut.instr_ecall_ebreak = 1'b0;
    UUT.wrapper.uut.instr_fence = 1'b0;
    UUT.wrapper.uut.instr_getq = 1'b1;
    UUT.wrapper.uut.instr_jal = 1'b0;
    UUT.wrapper.uut.instr_jalr = 1'b0;
    UUT.wrapper.uut.instr_lb = 1'b0;
    UUT.wrapper.uut.instr_lbu = 1'b0;
    UUT.wrapper.uut.instr_lh = 1'b0;
    UUT.wrapper.uut.instr_lhu = 1'b0;
    UUT.wrapper.uut.instr_lui = 1'b0;
    UUT.wrapper.uut.instr_lw = 1'b0;
    UUT.wrapper.uut.instr_maskirq = 1'b0;
    UUT.wrapper.uut.instr_or = 1'b0;
    UUT.wrapper.uut.instr_ori = 1'b0;
    UUT.wrapper.uut.instr_rdcycle = 1'b0;
    UUT.wrapper.uut.instr_rdcycleh = 1'b0;
    UUT.wrapper.uut.instr_rdinstr = 1'b1;
    UUT.wrapper.uut.instr_rdinstrh = 1'b0;
    UUT.wrapper.uut.instr_retirq = 1'b0;
    UUT.wrapper.uut.instr_sb = 1'b0;
    UUT.wrapper.uut.instr_setq = 1'b0;
    UUT.wrapper.uut.instr_sh = 1'b0;
    UUT.wrapper.uut.instr_sll = 1'b0;
    UUT.wrapper.uut.instr_slli = 1'b0;
    UUT.wrapper.uut.instr_slt = 1'b0;
    UUT.wrapper.uut.instr_slti = 1'b0;
    UUT.wrapper.uut.instr_sltiu = 1'b0;
    UUT.wrapper.uut.instr_sltu = 1'b0;
    UUT.wrapper.uut.instr_sra = 1'b0;
    UUT.wrapper.uut.instr_srai = 1'b0;
    UUT.wrapper.uut.instr_srl = 1'b0;
    UUT.wrapper.uut.instr_srli = 1'b0;
    UUT.wrapper.uut.instr_sub = 1'b0;
    UUT.wrapper.uut.instr_sw = 1'b0;
    UUT.wrapper.uut.instr_timer = 1'b0;
    UUT.wrapper.uut.instr_waitirq = 1'b0;
    UUT.wrapper.uut.instr_xor = 1'b0;
    UUT.wrapper.uut.instr_xori = 1'b0;
    UUT.wrapper.uut.irq_state = 2'b00;
    UUT.wrapper.uut.is_alu_reg_imm = 1'b1;
    UUT.wrapper.uut.is_alu_reg_reg = 1'b0;
    UUT.wrapper.uut.is_beq_bne_blt_bge_bltu_bgeu = 1'b0;
    UUT.wrapper.uut.is_compare = 1'b0;
    UUT.wrapper.uut.is_jalr_addi_slti_sltiu_xori_ori_andi = 1'b0;
    UUT.wrapper.uut.is_lb_lh_lw_lbu_lhu = 1'b0;
    UUT.wrapper.uut.is_lbu_lhu_lw = 1'b0;
    UUT.wrapper.uut.is_lui_auipc_jal = 1'b0;
    UUT.wrapper.uut.is_lui_auipc_jal_jalr_addi_add_sub = 1'b0;
    UUT.wrapper.uut.is_sb_sh_sw = 1'b1;
    UUT.wrapper.uut.is_slli_srli_srai = 1'b0;
    UUT.wrapper.uut.is_slti_blt_slt = 1'b0;
    UUT.wrapper.uut.is_sltiu_bltu_sltu = 1'b0;
    UUT.wrapper.uut.last_mem_valid = 1'b0;
    UUT.wrapper.uut.latched_branch = 1'b0;
    UUT.wrapper.uut.latched_compr = 1'b0;
    UUT.wrapper.uut.latched_is_lb = 1'b0;
    UUT.wrapper.uut.latched_is_lh = 1'b0;
    UUT.wrapper.uut.latched_is_lu = 1'b0;
    UUT.wrapper.uut.latched_rd = 5'b00000;
    UUT.wrapper.uut.latched_stalu = 1'b0;
    UUT.wrapper.uut.latched_store = 1'b0;
    UUT.wrapper.uut.mem_16bit_buffer = 16'b1100001100110001;
    UUT.wrapper.uut.mem_addr = 32'b00000000000000000000000000000000;
    UUT.wrapper.uut.mem_do_prefetch = 1'b0;
    UUT.wrapper.uut.mem_do_rdata = 1'b0;
    UUT.wrapper.uut.mem_do_rinst = 1'b0;
    UUT.wrapper.uut.mem_do_wdata = 1'b0;
    UUT.wrapper.uut.mem_instr = 1'b0;
    UUT.wrapper.uut.mem_la_firstword_reg = 1'b0;
    UUT.wrapper.uut.mem_la_secondword = 1'b0;
    UUT.wrapper.uut.mem_rdata_q = 32'b00000000100010000001000101100011;
    UUT.wrapper.uut.mem_state = 2'b00;
    UUT.wrapper.uut.mem_valid = 1'b0;
    UUT.wrapper.uut.mem_wdata = 32'b00001001100101010101101100010101;
    UUT.wrapper.uut.mem_wordsize = 2'b00;
    UUT.wrapper.uut.mem_wstrb = 4'b0000;
    UUT.wrapper.uut.next_insn_opcode = 32'b01001000000000000111000101100011;
    UUT.wrapper.uut.pcpi_insn = 32'b00000000100010000111000101100011;
    UUT.wrapper.uut.pcpi_timeout = 1'b0;
    UUT.wrapper.uut.pcpi_timeout_counter = 4'b0000;
    UUT.wrapper.uut.pcpi_valid = 1'b0;
    UUT.wrapper.uut.prefetched_high_word = 1'b0;
    UUT.wrapper.uut.q_ascii_instr = 64'b0000000000000000000000000000000000000000000000000000000000000000;
    UUT.wrapper.uut.q_insn_imm = 32'b00000000000000000000000000000000;
    UUT.wrapper.uut.q_insn_opcode = 32'b00000000100010000111000101100011;
    UUT.wrapper.uut.q_insn_rd = 5'b00000;
    UUT.wrapper.uut.q_insn_rs1 = 5'b10000;
    UUT.wrapper.uut.q_insn_rs2 = 5'b01000;
    UUT.wrapper.uut.reg_next_pc = 32'b11111111111111111111111111111100;
    UUT.wrapper.uut.reg_op1 = 32'b01100100000001110000010001111000;
    UUT.wrapper.uut.reg_op2 = 32'b01100100000101010010100011011101;
    UUT.wrapper.uut.reg_out = 32'b00000000000000000000000000000000;
    UUT.wrapper.uut.reg_pc = 32'b00000000000000000000000000000000;
    UUT.wrapper.uut.reg_sh = 5'b00000;
    UUT.wrapper.uut.rvfi_halt = 1'b0;
    UUT.wrapper.uut.rvfi_insn = 32'b00000000000000000000000000000000;
    UUT.wrapper.uut.rvfi_intr = 1'b0;
    UUT.wrapper.uut.rvfi_ixl = 2'b00;
    UUT.wrapper.uut.rvfi_mem_addr = 32'b00000000000000000000000000000000;
    UUT.wrapper.uut.rvfi_mem_rdata = 32'b00000000000000000000000000000000;
    UUT.wrapper.uut.rvfi_mem_rmask = 4'b0000;
    UUT.wrapper.uut.rvfi_mem_wdata = 32'b00000000000000000000000000000000;
    UUT.wrapper.uut.rvfi_mem_wmask = 4'b0000;
    UUT.wrapper.uut.rvfi_mode = 2'b00;
    UUT.wrapper.uut.rvfi_order = 64'b0000000000000000000000000000000000000000000000000000000000000000;
    UUT.wrapper.uut.rvfi_pc_rdata = 32'b00000000000000000000000000000000;
    UUT.wrapper.uut.rvfi_rd_addr = 5'b00000;
    UUT.wrapper.uut.rvfi_rd_wdata = 32'b00000000000000000000000000000000;
    UUT.wrapper.uut.rvfi_rs1_addr = 5'b00000;
    UUT.wrapper.uut.rvfi_rs1_rdata = 32'b00000000000000000000000000000000;
    UUT.wrapper.uut.rvfi_rs2_addr = 5'b00000;
    UUT.wrapper.uut.rvfi_rs2_rdata = 32'b00000000000000000000000000000000;
    UUT.wrapper.uut.rvfi_trap = 1'b0;
    UUT.wrapper.uut.rvfi_valid = 1'b0;
    UUT.wrapper.uut.trap = 1'b0;
    UUT.wrapper.uut.cpuregs[5'b10000] = 32'b00000000000000000000000000000000;
    UUT.wrapper.uut.cpuregs[5'b01000] = 32'b00000000000000000000000000000000;
    UUT.wrapper.uut.cpuregs[5'b00011] = 32'b01001000000001100000000100111001;
    UUT.wrapper.uut.cpuregs[5'b10111] = 32'b10001000110010100001010110001000;
    UUT.wrapper.uut.cpuregs[5'b11000] = 32'b01111111111111111111111110010000;
    UUT.wrapper.uut.cpuregs[5'b00000] = 32'b10001000110010100001010110001000;
    UUT.wrapper.uut.cpuregs[5'b01001] = 32'b01111111111111111111111110100000;
    UUT.wrapper.uut.cpuregs[5'b01100] = 32'b00000000000000000000000010000100;
    UUT.wrapper.uut.cpuregs[5'b00010] = 32'b10001000110010100001010110001000;

    // state 0
    PI_reset = 1'b1;
    UUT.mem_rdata = 32'b01000000000010111100100000000000;
    UUT.mem_ready = 1'b1;
  end
  always @(posedge clock) begin
    // state 1
    if (cycle == 0) begin
      PI_reset <= 1'b0;
      UUT.mem_rdata <= 32'b00000000000000000000000000000000;
      UUT.mem_ready <= 1'b0;
    end

    // state 2
    if (cycle == 1) begin
      PI_reset <= 1'b0;
      UUT.mem_rdata <= 32'b00000000000000000000000000000000;
      UUT.mem_ready <= 1'b0;
    end

    // state 3
    if (cycle == 2) begin
      PI_reset <= 1'b0;
      UUT.mem_rdata <= 32'b11110101011100011100000000000011;
      UUT.mem_ready <= 1'b1;
    end

    // state 4
    if (cycle == 3) begin
      PI_reset <= 1'b0;
      UUT.mem_rdata <= 32'b10001110100000100100000010000011;
      UUT.mem_ready <= 1'b0;
    end

    // state 5
    if (cycle == 4) begin
      PI_reset <= 1'b0;
      UUT.mem_rdata <= 32'b11111010100000110010000101110011;
      UUT.mem_ready <= 1'b1;
    end

    // state 6
    if (cycle == 5) begin
      PI_reset <= 1'b0;
      UUT.mem_rdata <= 32'b11101110000011000110001101101111;
      UUT.mem_ready <= 1'b1;
    end

    // state 7
    if (cycle == 6) begin
      PI_reset <= 1'b0;
      UUT.mem_rdata <= 32'b00000111001111111010000000000001;
      UUT.mem_ready <= 1'b0;
    end

    // state 8
    if (cycle == 7) begin
      PI_reset <= 1'b0;
      UUT.mem_rdata <= 32'b00000010001100110001001000110111;
      UUT.mem_ready <= 1'b0;
    end

    // state 9
    if (cycle == 8) begin
      PI_reset <= 1'b0;
      UUT.mem_rdata <= 32'b00000001000100111000110100110001;
      UUT.mem_ready <= 1'b0;
    end

    // state 10
    if (cycle == 9) begin
      PI_reset <= 1'b0;
      UUT.mem_rdata <= 32'b00000000000000001000001001101111;
      UUT.mem_ready <= 1'b1;
    end

    // state 11
    if (cycle == 10) begin
      PI_reset <= 1'b0;
      UUT.mem_rdata <= 32'b00000000001100110000000000110011;
      UUT.mem_ready <= 1'b1;
    end

    // state 12
    if (cycle == 11) begin
      PI_reset <= 1'b0;
      UUT.mem_rdata <= 32'b00000000010010110000000000110011;
      UUT.mem_ready <= 1'b0;
    end

    // state 13
    if (cycle == 12) begin
      PI_reset <= 1'b0;
      UUT.mem_rdata <= 32'b10000000001100111000001100110010;
      UUT.mem_ready <= 1'b0;
    end

    // state 14
    if (cycle == 13) begin
      PI_reset <= 1'b0;
      UUT.mem_rdata <= 32'b00000000110001000000000010000111;
      UUT.mem_ready <= 1'b0;
    end

    // state 15
    if (cycle == 14) begin
      PI_reset <= 1'b0;
      UUT.mem_rdata <= 32'b00000000110001001000001000110011;
      UUT.mem_ready <= 1'b1;
    end

    // state 16
    if (cycle == 15) begin
      PI_reset <= 1'b0;
      UUT.mem_rdata <= 32'b00000000001100100000000001101101;
      UUT.mem_ready <= 1'b0;
    end

    // state 17
    if (cycle == 16) begin
      PI_reset <= 1'b0;
      UUT.mem_rdata <= 32'b11111111111111110000000001100001;
      UUT.mem_ready <= 1'b0;
    end

    // state 18
    if (cycle == 17) begin
      PI_reset <= 1'b0;
      UUT.mem_rdata <= 32'b00000000000000000000000000000000;
      UUT.mem_ready <= 1'b1;
    end

    // state 19
    if (cycle == 18) begin
      PI_reset <= 1'b0;
      UUT.mem_rdata <= 32'b00000000000000000000000000000000;
      UUT.mem_ready <= 1'b0;
    end

    // state 20
    if (cycle == 19) begin
      PI_reset <= 1'b0;
      UUT.mem_rdata <= 32'b00000000000000000000000000000000;
      UUT.mem_ready <= 1'b0;
    end

    genclock <= cycle < 20;
    cycle <= cycle + 1;
  end
endmodule
