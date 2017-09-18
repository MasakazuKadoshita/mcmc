# Overview
---
This document describes overview of MCMC.

## Outline
---
Let's get started MCMC.
We'll build a MCMC system that simulates RISC architecture.
We'll design MCMC devices in top-down way, and implement them in bottom-up way.
We suppose simple RISC architecture that has 5 pipeline stages MPU which execute instructions.

### General Computer architecture
To be described general computer architecture.

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

### MCMC devices implemented parts of RISC.

A RISC's CPU consists of control, buffer, data bus and MPU.
Control devices are equipped controllers on CPU, that receive signals from control devices.
Buffer devices are equipped buffers, that store data to and from IO devices and memory devices.
Bus devices are equipped data buses, that carry data among CPU.

MPU devices are equipped MPU execute instractions.
If possible, some MCMC devices have parts of MPU, in that
they have logic circuit corresponding to one or more pipeline stage.
In this case, there is advantage to communication because each devices represents its pipeline stage.
This means that there addresses can be used as a part of machine language.

### MCMC devices implemented the pipeline stages

Control unit are equipped control units, that control CPUs, memory units, and I/Os.
The problem is how to control mass devices that implemented CPUs, memory units, and I/Os.
I/O unit devices are equipped IO units, that communicate with IoT.
Memory unit devices are equipped memory units, that store program and data (especialy data of ledger).
CPU devices equipped CPU units, that work as a core of a multiple core machine.

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

