The Term Project Report is the extended description of the digital piano project on VHDL.
Code of the project is available for further investigation and assistance.
Additional YouTube link is also available for visual demonstration and introduction of the project:
https://www.youtube.com/watch?v=VHD2iQPSBws

Description: 
A simple digital piano design implemented on the Basys 3 FPGA using VHDL.  
The design generates square-wave audio for different notes and displays the selected note/octave on the 7-segment display.

** Features
- Note selection via inputs (`note[7:0]`)
- Octave selection via switches (`oct[3:0]`)
- Audio output as square wave (`n_out`)
- 7-segment display output (`sgmt`, `anode`) with persistence-of-vision multiplexing

** Project Structure
```text
Digital-Piano/
├── src/
│   └── bethoweenDigital.vhd
├── constraints/
│   └── xdc.xdc
└── sim/
    └── tb_bethoweenDigital.vhd
