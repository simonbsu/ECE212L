# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

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
In this lab, we learned how to implement t-flipflops, d-flipflops, and our full adder into a modulo and ripple counter. One counts up and one counts down every clock cycle. We also learned how to add a reset signal that immidiately resets the outputs.

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
Because each flipflop is actually outputting half the frequency, so it keeps halving the more flipflops you have.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
Because all 1's is the next value in a "ring". The values "loop" around the ring from all zeros to all ones. 

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
You would need a width of 10 to have a frequency that high.
