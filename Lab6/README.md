# Number Theory: Addition
In this lab you've learned the basics of number theory as it relates to addition.
## Rubric
| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary
In this lab, we implemented an adder using XOR (the stairway lightbulb), then learned how to implement a full adder with carry in and carry out. Then we wired two adders together to make a two-bit adder using the `top.v` file.

## Lab Questions
### 1 - How might you add more than two bits together?
To add more than two bits together, link another adder to the output of the second adder. The carry out bit on the seccond adder will be the carry in bit for the third.

### 2 - What is the importance of the XOR gate in an adder?
The XOR gate provides the SUM value, making it zero if there's a carry and it's output is 1 only when one of the inputs is high. 


### 3 - What is the largest number a two bit adder can handle? What happens when you go over?
The largest number it can handle is a a 110 bit (6 decimal) and what would happen is if it went over would be to just carry the bit over, which is called an overflow and that new bit would become the most significant bit. 

