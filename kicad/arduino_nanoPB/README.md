I was in need for a drop in replacement for some arduino boards with more functionality (pins, UARTs, I2C...) , so I made few boards for few different/updated chips and while I was playing with is I designed more then what I need (one breadboard adapter : :) ). I designed this set of boards:

 - [ Atmega328P/PA/PB board compatible with Arduino nano ](https://www.tindie.com/products/tomaskovacik/nanopb/)
 - [ Atmega328P/PA/PB board compatible with Arduino Uno ](https://www.tindie.com/products/tomaskovacik/unopb/)
 - [ Atmega324P/PA/PB board compatible with Arduino nano ](https://www.tindie.com/products/tomaskovacik/nanoxx4px/)
 - [ Atmega324P/PA board compatible with Arduino mega ](https://www.tindie.com/products/tomaskovacik/mega324/)(PB version not produced yet, only designed, check github)
 - [ Atmega2560 board compatible with Arduino mega with all pins routed to pinheaders ](https://www.tindie.com/products/tomaskovacik/megaallpins/)

![](https://raw.githubusercontent.com/tomaskovacik/hw/master/kicad/arduino_nanoPB/pics/20190513_124704.jpg "")

#### Arduino support

To use PB version of ATmega328 chip in the Arduino software you need to install MiniCore from MCUdude: [https://github.com/MCUdude/MiniCore](https://github.com/MCUdude/MiniCore).

#### PB/nonPB version selection

On board are 3 jumpers:
 - 2 are 3pins, these are used to select which MCU version is instaled, clearly marked as PA|PB
 - 3th one is 2pin jumper used to connect DTR pin of cp2102 to reset line of atmega MCU over 100nF capacitors used for auto-reset feature.
 
![](https://raw.githubusercontent.com/tomaskovacik/hw/master/kicad/arduino_nanoPB/pics/solder_jumpers.jpg "")

#### Tindie

Boards which I did not need are on sale on Tindie, 1$ for board + shipping, as always all components can be added for aditional $$.

[ link to store ] (https://www.tindie.com/products/tomaskovacik/nanopb/)

#### Why not RX/TX leds?

Boards that I sell in my Tindie store did not have RX/TX LEDs.
There is the place for the RX/TX LEDs on PCB (unpopulated R8, R9, D3 and D4), but I made an error in design and route them to ground, they should be connected to 5V rail. I was about to run new PCBs when I realize this will only work with a more expensive CP2102N chip, as this one uses separate pins for the LEDs. Legacy CP2102 chip did not have this function (LEDs in case of CP2102 are tied directly to the RX/TX lines). And as I want to use CP2102 chip I decide that these LEDs are not so important, and rolling new PCB is just a waste of money and it's not ecological.

But this can be hacked, you just need to cut traces around D4, D3 and R8 and R9. Then solder resistors, LEDs in revers and few jumper wires, resistors what go to RX/TX pin and common pin of LEDs to 5V:

![MODS](https://raw.githubusercontent.com/tomaskovacik/hw/master/kicad/arduino_nanoPB/pics/fixies.jpg "Mods")

[![License: CC BY-SA 4.0](https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-sa/4.0/)
