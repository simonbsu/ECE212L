# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Simon Wilch
Sebastian Delgado

## Summary
In this lab, we learned how to properly implement a full adder into our one and twos complement modules. We learned what to do with the carry out bits for both, and how to prevent looping. 

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
The main difference is that for "borrow", A is inverted. Carry is now borrow, too. This is because, when looking at the truth table, the borrow bit is only 1 when B is 1 and A is 0, meaning it has to borrow a bit.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
The end around carry of one's complement makes it hard to implemenet because the Y component of the MSB depends on the LSB's carry out.  The lsb depending on the msb means our logic "won't ever stabilize" (according to the Loops document provided. It can make an infinite loop.

### 3 - What is the edge case and problem with Two’s Complement number representation?
One problem with two's complement is that the most negative number can't be flipped to positive, which causes overflow.
