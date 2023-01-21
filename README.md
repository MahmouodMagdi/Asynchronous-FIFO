# Asynchronous-FIFO
A verilog implementation of an aynchronous FIFO (First In First Out).

# INTRODUCTION
An Asynchronous FIFO Design refers to a FIFO Design where in the data values are written to the FIFO memory from one clock domain 
and the data values are read from a different clock domain, where in the two clock domains are Asynchronous to each other.
FIFO’s are widely used to safely pass the data from one clock domain to another clock domain


![image](https://user-images.githubusercontent.com/72949261/213868606-11b3938e-f526-491e-90dc-d7e63132037b.png)


# DESCRIPTION OF FIFO DESIGNED
The above figure’s refers of an Asynchronous FIFO, it will be better if each block is explained

**1. FIFO MEMROY**: 
    This is the heart of the FIFO, the depth of memory is 16 bits and width is 8 bits,
    It has an the following inputs
    Write Data (8 bit), Write Enable, Read Enable, Write Clock, Write address (4 bit), 
    Read Address (4 bit) And an output i.e. Read Data (8 bit)
    Data which is to be written and the address where it has to be written is supplied at the input port write data and write address. 
    At the positive edge of the clock when Write enable is enabled so now the data is been written into the FIFO memory, now it has to be Read out,
    for that to happen Read enable should be Enabled and the address from which the data has to be read should be specified at the input port Read address.
    This is the Memory operation in brief .now we have to control the memory in such a way that it meets the requirements of the FIFO.

**2. BINARY & GRAY COUNTE**: 
    We need to design a counter which can give Binary and Gray output’s, the need for Binary counter is to address the FIFO MEMORY i.e. Write and Read address. 
    And the need of Gray counter is for addressing Read and Write pointers.
    Once the counter with binary and Gray code output is designed it is then Port mapped with Memory’s Read address, write address, Read pointer, Write Pointer.
    The Use Full and Empty logic for addressing the memor: | Empty | The counter takes Empty signal and increments the Read address depending on this |
    |-------|----------------------------------------------------------------------------------| | Full  | When ever the Full signal is high the counter should not increment write address |
    |       If (~EMPTY)             |         If (~FULL)            |                  
    |-------------------------------|-------------------------------|
    |Increment Read Address         |    Increment Write Address    |                
    |Else                           |           Else                |                 
    |No Increment                   |         No increment          |                 
    
    
