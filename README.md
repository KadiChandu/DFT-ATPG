# Manual ATPG for 4-bit Adder
## Objective
To manually generate ATPG vectors for a 4-bit ripple carry adder and detect common stuck-at faults like:
- Cout stuck-at-0
- Cout stuck-at-1
## Design
- Module: adder.v
- Performs: A + B + Cin → Sum + Cout
## Fault Model
Simulated stuck-at faults:
- Cout SA0 or SA1
- Manual test vector application in testbench
## Output
The testbench compares the expected result with faulty behavior to demonstrate fault detectability.
