# CheapAudio


## Introduction

The purpose of this project is to create a set of hardware and software that allows you to do your own speakers that involve active crossovers.

Software is extremely rough, mostly used for my own purposes. Use at your own risk, what contributions are welcome. 

## Components

### Hardware

  * CheapDSP - ADAU1701 based DSP board
  * CheapAMP - TI TAS 5754M Amp

One thing that I've done uniquely with these is that I have used skidl to design the circuit using python script. This has the downside that there is no hardware schematic, only a PCB layout.

### Software
  * dspserver - A server that runs on a esp8266 that allows you to upload new firmwares for your DSP, control volume, etc. It also implements Sigma Studio TCP/IP interface so you can use the Sigma Studio tools w/o the USB interface
  * React - The start of an interface for manipulating the DSP through the web
  * Tools - Utility scripts to convert various SigmaStudio 
  * Measuring - NumPy script that can measure response curve from calibrated Microphone


Apache header:

    Copyright 2022 Andrew Selle

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
