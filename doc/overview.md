# Overview
---
This document describes overview of MCMC.

## Outline
---
Let's get started MCMC.
We'll build a MCMC system that simulates RISC architecture.
We'll design MCMC devices in top-down way, and implement them in bottom-up way.
We suppose simple RISC architecture that has 5 pipeline stages.

### Table of pipeline stages

| Stage Code	| Stage Name        	| text	|
|-----------	|-------------------	|-----	|
| IF        	| Instruction  Fetch 	|     	|
| D         	| Instruction  Decode	|     	|
| EX        	| Execute           	|     	|
| MEM       	| Memory Access     	|     	|
| WB        	| Writeback         	|     	|

MCMC devices communicate on a network called MCMC Net in its machine language.
MCMC Net's topology will be any type, that will be bus, star, ring, MST(Minimum Spanning Tree), or other innovative one.

Those who equipped IO unit communicate with IoT.
Those who equipped memory unit communicate with IoT.
Those who equipped CPU unit work as a core of a multiple core machine.

A RISC's CPU consists of control unit, buffer unit, data bus and MPU.
Those who equipped control unit act controller.
Those who equipped buffer unit store data to IO devices and memory devices.
Those who equipped data bus carry data among CPU.
Those who equipped MPU execute instractions.
If possible, some MCMC devices have parts of MPU, in that
they have logic circuit corresponding to one or more pipeline stage.
In this case, there is advantage to communication because each devices represents its pipeline stage.
This means that there addresses can be used as a part of machine language.

## Related works
---

Here is a list of related work that affects to MCMC.
We'll follow these ICTs.

| Specified Domain    	| Technology Element                            	| Affects to                 	|
|---------------------	|-----------------------------------------------	|----------------------------	|
| Blockchain Platform 	| Programming Language                          	| Interpreter                	|
| Blockchain Platform 	| Operating System                               	| Controller Unit            	|
| Miner Platform      	| FPGA Implementation                           	| MPU Parts / Machine Language 	|
| Ledger              	| Memory Architecture                           	| Buffer Unit                	|
| M2M/Senser Network  	| IEEE802.15.4                                  	| Inside Communication Protocol	|
| IoT                 	| Low Power Wide Area Communication Protocol    	| Outside Communication Protocol	|
| IoT                 	| Power Supply                                  	| Power Supply               	|
| IoT                 	| Security                                      	| Security                   	|


