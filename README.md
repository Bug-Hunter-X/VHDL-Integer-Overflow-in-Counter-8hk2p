# VHDL Integer Overflow Bug
This repository demonstrates a common error in VHDL: integer overflow in a counter.  The provided VHDL code implements a simple counter, but lacks error handling for when the counter reaches its maximum value. This can lead to unexpected behavior and potential system instability.

## Bug Description
The counter is implemented using an integer type with a range of 0 to 15. When the counter reaches 15, it should stop incrementing.  However, the provided code silently wraps around to 0 without any indication of the overflow condition. This is a potential source of bugs in a larger design.

## Solution
The solution involves adding a check within the counter's process to detect when the counter reaches its maximum value and handle this condition appropriately.  This could involve stopping the counter, asserting an error signal, or resetting the counter.  The solution also demonstrates better coding practices by adding comments to the code.

## How to reproduce the bug
1. Synthesize the `bug.vhdl` code.
2. Simulate the design.
3. Observe that the counter wraps around from 15 to 0 without any indication of overflow.

## How to fix the bug
1. Examine the `bugSolution.vhdl` code.
2. Observe that the solution explicitly checks for the maximum value (15) and handles the condition.
