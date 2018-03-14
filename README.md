# Analog Frontend PCB
This folder contains the design files for the analog circuitry required for a single channel of an ultrasound imaging system. 

Schematic:  
![Schematic](drawings/schematic_v1.3.png)  
See the `drawings` folder for a high-resolution PDF version.

PCB:  
![PCB](drawings/PCB_v1.3.png)  
See the `drawings` folder for a full resolution PDF version, including each layer individually.

### Bill of Materials
See `Analog_Frontend.html`.

### Changelog
* `v1.0` Initial design
* `v1.1` 
* `v1.2` 
* `v1.3` Added a row of header pins and silkscreened labels
* `v1.3-doc` Added documentation
* `v2.0` Minitiarized design
* `v2.1b` Single transistor transmitter
* `v2.2_op1` Single transistor transmitter with higher output power
* `v2.2_op2` Push-pull transmitter using DMN2004K and DMP2004K MOSFETs
* `v2.2_op3` (Work in Progress) Transmitter using the MD1213 and TC6320 ultrasound transmitter chips

Each version can be accessed in this repository through the git tag system. 

### Credits
Designed by William Meng, Cindy Xiao, and Ruoyu Sheng.

The VGA subcircuit design was adapted from the [AD8331 evaluation board](http://www.analog.com/media/en/technical-documentation/evaluation-documentation/154207235AD8331EB_a.pdf). 

Community-developed KiCAD symbols and models:

* [SMA footprint](https://github.com/rascalmicro/rascalmicro-kicad-footprints.pretty/blob/master/SMA.kicad_mod)
* [SOT-523 footprint](https://github.com/cpavlina/kicad-pcblib/blob/master/smd-semi.pretty/SOT-523.kicad_mod)
* [Teensy symbols](https://github.com/XenGi/teensy_library) and [Teensy footprints](https://github.com/XenGi/teensy.pretty)


