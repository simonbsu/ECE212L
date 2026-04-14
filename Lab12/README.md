# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name
Simon Wilch, Sebastian Delgado 

## Summary

This lab utilized a One Hot and Binary encoding, using 5 bit and 3 bit formats. We used kmap to simplify the logic and equations. Also, we learned how to create and add state machines in different ways. Finally, we understood how the state machine updates by using D-FlipFlops.

## Lab Questions

### Compare and contrast One Hot and Binary encodings
One hot has only one D-FF active at a time, representing the five values using five bits. Binary represents five values using three bits and counting up in binary.

### Which method did your team find easier, and why?
We found one hot easier because you only have to worry about programming one DFF to be on at a time. We could just look at the "Lab Assignment State Table" and program the logic and didn't have to mess with K-Maps as much.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
One hot would be better to use when we want simpler logic that is easier to debug while binary encoding is better when we want a more hardware efficent design and that uses less flip-flops but is more complex. 
