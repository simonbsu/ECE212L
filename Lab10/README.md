# Sequential Circuits: Latches

In this lab, you’ve learned about edge sensitive circuits and explored some of the power therein.

## Rubric

|Item|Description|Value|
|-|-|-|
|Summary Answers|Your writings about what you learned in this lab.|25%|
|Question 1|Your answers to the question|25%|
|Question 2|Your answers to the question|25%|
|Question 3|Your answers to the question|25%|

## Names
Simon Wilch
Sebastian Delgado


## Summary
In this lab we learned D, JK, and T, flipflops and how to implement them in Vivado. We also learned the difference between level sensitive and edge sensitive circuits and a practical implementation of them.

## Lab Questions

### What is difference between edge and level sensitive circuits?
The difference between edge and level sensitive circuits is that level sensitive updates the whole time that the clock signal is high, while edge sensitive updates only on the positive or negative clock edge. 

### Why is it important to declare initial state?
It's important to declare an initial state because when you first program the FPGA, it has no way of knowing which state to use for the D latches, etc. until something is set.

### What do edge sensitive circuits let us build?
Edge sensitive ciruits let you build synchronous circuits like counters or registers.
