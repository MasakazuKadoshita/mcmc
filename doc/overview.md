# Overview
---
This document describes overview of MCMC.

## Outline
---
Let's get started MCMC.
We'll build a MCMC system that simulates RISC architecture.
We'll design MCMC devices in top-down way, and implement them in bottom-up way.
We suppose simple RISC architecture that has 5 pipeline stages MPU which execute instructions.

### von Neumann architecture
We are generally using Computers of von Neumann architecture.

| Parts of von Neumann architecture | Roles                           |
|-----------------------------------|---------------------------------|
| Control Units                     | control other parts of computer |
| MPUs(Micro Processing Units)            | process programs                |
| Memory Units                      | memorize programs and data      |
| Input devices                     | input from outside(form IoT)    |
| Output devices                    | output to outside(to IoT)       |

### MPU architecture
We show parts of MPUs(Micro Processing Units) below.

| Parts of MPU architecture | Roles                           |
|-----------------------------------|------------------------------------------|
| Patrts of Pipeline Stages         | including PC, IR, ALU, flags, registers  |
| Data Bus                          | carry data(machine wards)                |
| Control Logic                     | handle control signal from Control Units |
| Buffers                           | Buffers of addresses and data that communicate with memory units and I/O devices |



### 5 papeline stages RISC
We show 5 papeline stages below.

| Stage Code	| Stage Name        	| text	|
|-----------	|-------------------	|-----	|
| IF        	| Instruction  Fetch 	|     	|
| D         	| Instruction  Decode	|     	|
| EX        	| Execute           	|     	|
| MEM       	| Memory Access     	|     	|
| WB        	| Writeback         	|     	|

### MCMC Net

MCMC devices communicate on a network called MCMC Net in its machine language.
MCMC Net's topology will be any type, that will be bus, star, ring, MST(Minimum Spanning Tree), or other innovative one.

### MCMC devices and equipped the pipeline stage parts

MPU devices are equipped MPU execute instractions.
If possible, some MCMC devices have parts of MPU, in that
they have logic circuit corresponding to one or more pipeline stage.
In this case, there is advantage to communication because each devices represents its pipeline stage.
This means that there addresses can be used as a part of machine language.

### MCMC devices and equipped RISC architecture parts

A RISC's CPU consists of control, buffer, data bus and MPU.
Control devices are equipped controllers on CPU, that receive signals from control devices.
Buffer devices are equipped buffers, that store data to and from IO devices and memory devices.
Bus devices are equipped data buses, that carry data among CPU.

### MCMC devices and equipped von Neumann architecture parts

| MCMC devices         | equipped RISC parts | roles                                                           | Issues                                    |
|----------------------|---------------------|-----------------------------------------------------------------|-------------------------------------------|
| Control unit devices | control unit        | control I/Os, memory units, CPUs                                | How the devices control them?             |
| I/O unit devices     | I/O unit            | communication with IoT                                          | How the devices communicate them?         |
| Memory unit devices  | memory unit         | store prgram and data (especially data ob blockchain's ledgers) | how the devices guarantee data integrity? |
| CPU devices          | CPU                 | work as a multiple core                                         | How the devices synchronize each other?   |

## Related works
---

Here is a list of related work that affects to MCMC.
We'll follow these ICT activities.

| Specified Domain    	| Technology Element                            	| Affects to                 	|
|---------------------	|-----------------------------------------------	|----------------------------	|
| Blockchain Platform 	| Programming Language                          	| Interpreter                	|
| Blockchain Platform 	| Operating System                               	| Controller Unit            	|
| Miner Platform      	| FPGA Implementation                           	| MPU Parts / Machine Language 	|
| Ledger              	| Memory Architecture                           	| Buffer Unit                	|
| M2M/Sensor Network  	| IEEE802.15.4                                  	| Inside Communication Protocol	|
| IoT                 	| Low Power Wide Area Communication Protocol    	| Outside Communication Protocol	|
| IoT                 	| Power Supply                                  	| Power Supply               	|
| IoT                 	| Security                                      	| Security                   	|

