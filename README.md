##  HACK CPU ENTITY & INTERFACE TOPOLOGY

```text


       ================================================= CPU BOUNDARY =================================================
       |                                                                                                              |
       |  [ INPUT PINS ]                                                                         [ OUTPUT PINS ]      |
       |  --------------                                                                         ---------------      |
       |                                                                                                              |
=======|===> instruction[16]                                                                                          |
       |     |                                                                                                        |
       |     |        sel = instruction[15]                                                                           |
       |     |        (0 = A-Instruction, 1 = C-Instruction)                                                          |
       |     |                 |                                                                                      |
       |     +------------>[ Mux16 (A) ]<----- A [in] [outALU]                                                        |
       |                      |                                                                                       |
       |                      | inA[16]                                                                               |
       |                      v                                                                                       |
       |      load = NOT(instruction[15]) OR instruction[5]                                                           |
       |                      |                                                                                       |
       |                      v                                                                                       |
       |               +-------------+                                                                                |
       |               | ARegister   |----+                                                                           |
       |               +-------------+    |                                                                           |
       |                                  |                                                                           |
       |                                  +--------> RA[16] ----------+------------> addressM[15] ===================|===> addressM[15]
       |                                                              |              (Memory Address)                 |
       |                                                              +-----> PC [in]                                 |
       |                                                              |                                               |
       |                                    sel = instruction[12]     v                                               |
=======|===> inM[16] -------------------------------------------->[ Mux16 (M) ]                                       |
       |     (Memory Input)                                           |                                               |
       |                                                              | RAorM[16]                                     |
       |                                                              v                                               |
       |               load = instruction[15] AND instruction[4] +--------------+                                     |
       |               |                                         |  x        y  |                                     |
       |               v                                         |              |                                     |
       |        +-------------+                                  |     ALU      |                                     |
       |        | DRegister   |--------------------------------->|              |                                     |
       |        +-------------+                                  +-------+------+                                     |
       |              ^                                                  |                                            |
       |              |                                                  v                                            |
       |              +--------------------------------------------------+ -----------> outM[16] =====================|==> outM[16]
       |                                                                 |                                            |
       |                                                                 +------------> A [in]                        |
       |                                                                                                              |
       |                                                                                                              |
       |                                                                                                              |
       |   writeM = instruction[15] AND instruction[3] ===============================================================|===> writeM
       |                                                                                                              |     (Memory Write Enable)
       |                                                                                                              |
       |   isJump = instruction[15] AND ( (inst[2] AND ng) OR (inst[1] AND zr) OR (inst[0] AND po) )                  |
       |                                                            |                                                 |
=======|===> reset -------------------------------------------------|-----+                                           |
       |     (Reset)                                                |     |                                           |
       |                                                            |     v                                           |
       |                                             PC [in] [RA] --+-> pc[15] =======================================|===> pc[15]
       |                                                                                                              |     (Program Counter)
       ================================================================================================================
```


## Core Control Signals & Algebraic Mapping Table

---

### 1. ALU Control Bus
*(Directly driven by C-instruction bits c1~c6)*

* **`[zx, nx, zy, ny, f, no]`** = `instruction[6..11]`

---

### 2. Registers & Memory Write Enable
*(Controlled by instruction type `bit[15]` & destination bits `bit[3..5]`)*

* **`ARegister.load`** = `NOT(instruction[15]) OR instruction[5]`  
  *(Writes to A if A-Instruction OR d1=1)*
* **`DRegister.load`** = `instruction[15] AND instruction[4]`  
  *(Writes to D if C-Instruction AND d2=1)*
* **`writeM`** = `instruction[15] AND instruction[3]`  
  *(Enables RAM write if C-Instruction AND d3=1)*

---

### 3. Program Counter (PC) Jump Logic
*(Determined by instruction `bit[15]`, jump bits `j1, j2, j3`, & ALU status flags `zr`, `ng`)*

* **Auxiliary Flag:**  
  `po` = `NOT(zr) AND NOT(ng)` *(ALU output > 0)*

* **Jump Evaluation:**  
  ```text
  isJump = instruction[15] AND (
               (instruction[2] AND ng) OR    (j1: Jump if Less Than 0)
               (instruction[1] AND zr) OR    (j2: Jump if Equal to 0)
               (instruction[0] AND po)       (j3: Jump if Greater Than 0)
           )
  ```

* **PC Pin Configuration:**
  * `PC.in` = `RA`
  * `PC.load` = `isJump`
  * `PC.inc` = `true`
  * `PC.reset` = `reset`
  * `PC.out` = `pc[15]` *(Next instruction address output)*
