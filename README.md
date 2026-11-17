# PicoRV32 Formal Verification: Bug Injection and Counterexample

Demonstrates that the riscv-formal checks detect a real RTL bug in PicoRV32.

## Experiment
- Baseline: all 87 riscv-formal jobs PASS (rv32imc, BMC, Boolector).
- Injected bug: bit 31 of the ADD result is cleared in the ALU adder
  (`(reg_op1 + reg_op2) & 32'h7FFFFFFF`, both TWO_CYCLE_ALU and combinational copies).
  See `bug_injection.patch`.
- Result with bug: `insn_add_ch0` FAILS, with a counterexample waveform in
  `evidence_fail/trace.vcd` (open with GTKWave).
- Result after restoring the RTL: `insn_add_ch0` PASSES (`evidence_pass/logfile.txt`).

## Tools
See `tool_versions.txt` (OSS CAD Suite: Yosys, SymbiYosys, Boolector).

## Notes
- Results are bounded model checking (depth 20 for instruction checks), not unbounded proofs.
- PicoRV32 and riscv-formal are third-party ISC-licensed projects and are not copied here,
  only a patch against PicoRV32.
