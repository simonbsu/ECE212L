# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

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
In this lab, we learned how to implement a D Latch to store a bit, with set and reset inputs. We learned how to combine D Latches to store multiple bytes. We also learned how to use demux and mux to point data to different memory addresses, and later select them for output.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
Using structural Verliog to implement latches can cause poor timing analysis and if we did use this form, the outputs of the circuit would react immediatly to the changes of the input which would cause a huge limiting constraint. 

### What is the meaning of always @(*) in a sensitivity block?
The always@(*) means that whenever _any_ of the inputs within the block change, it makes sure the block triggers. 

### What importance is memory to digital circuits?
The importance of memory in digital circuits is its able to store data in binary (1 and 0). It lets us store information for a later time, and combined can store large amounts of data for computers, etc.
