----------------- TRANSMISSION -----------------
         tfp_symbolic:
4000000  mov     rax, qword ptr [rcx+rsi] ; {Attacker@rsi, Attacker@rcx} > {Secret@0x4000000}
4000004  cmp     r15, 0x0
4000008  je      tfp1 ; Not Taken   <Bool r15 != 0x0>
         tfp0:
400000a  jmp     rax ; {Secret@0x4000000} > TRANSMISSION

------------------------------------------------
uuid: 238cc9fe-b4fc-4d6e-bd04-ebda75f05047

Secret Address:
  - Expr: <BV64 rcx + rsi>
  - Range: (0x0,0xffffffffffffffff, 0x1) Exact: True
Transmitted Secret:
  - Expr: <BV64 LOAD_64[<BV64 rcx + rsi>]_20>
  - Range: (0x0,0xffffffffffffffff, 0x1) Exact: True
  - Spread: 0 - 63
  - Number of Bits Inferable: 64
Base:
  - Expr: None
  - Range: None
  - Independent Expr: None
  - Independent Range: None
Transmission:
  - Expr: <BV64 LOAD_64[<BV64 rcx + rsi>]_20>
  - Range: (0x0,0xffffffffffffffff, 0x1) Exact: True

Register Requirements: {<BV64 rsi>, <BV64 rcx>}
Constraints: []
Branches: [(67108872, <Bool r15 != 0x0>, 'Not Taken')]
------------------------------------------------
