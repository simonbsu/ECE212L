# Lab 05 - Combinatorial Logic

In this lab, you’ve learned real world applications of digital logic, as well
as how to assemble your own Verilog modules. In addition, you’ve learned how
the constraints file maps your inputs and outputs to real pins on the FPGA.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name
Simon Wilch, Sebastian Delgado

## Lab Summary
In this lab, we learned how to write the circuit files from scratch. We also learned how to write a top file from scratch, including adding a wire to map the outputs and inputs. We also learned how to enable pins on the FPGA in the constraints file.

## Lab Questions

### 1 - Explain the role of the Top Level file.
The top level file sets up the inputs and outputs like switches and LEDs. It also maps the I/O like switches and LEDs to the I/O for the different circuit files. It also sets up the wire that connects the output of circuit A to circuit B. 

### 2 - Explain the function of the Constraints file.
The constraints file enables different pins on the FPGA, like switches and LEDS.

### 3 - Was the selection of Minterm and Maxterm correct for each circuit? What would you have chosen?
Yes, the Minterm and Maxterm were correct because the output on the Basys matched with the truth table given to us in the lab instructions. The selection for Circuit A and B worked out smoothly because it gave us the simplest, minimized formula for the circuit. 


