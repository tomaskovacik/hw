NanoPB is an almost drop-in replacement for Arduino Nano boards. Almost because it has two more pins compared to the original Nano board, it is more capable thanks to upgraded ATmega328PB chip, check out this [pdf](http://ww1.microchip.com/downloads/en/AppNotes/Atmel-42559-Differences-between-ATmega328P-and-ATmega328PB_ApplicationNote_AT15007.pdf) from Microchip to learn more about the difference between the classic and the PB version of ATmega328.

While I was playing with this new/upgraded chips and overall Arduino boards,  I designed more then what I need (one breadboard adapter :) ).

I designed this set of boards:

 - [ Atmega328P/PA/PB board compatible with Arduino nano ](https://www.tindie.com/products/tomaskovacik/nanopb/)
 - [ Atmega328P/PA/PB board compatible with Arduino Uno ](https://www.tindie.com/products/tomaskovacik/unopb/)
 - [ Atmega324P/PA/PB board compatible with Arduino nano ](https://www.tindie.com/products/tomaskovacik/nanoxx4px/)
 - [ Atmega324P/PA board compatible with Arduino mega ](https://www.tindie.com/products/tomaskovacik/mega324/)(PB version not produced yet, only designed, check github)
 - [ Atmega2560 board compatible with Arduino mega with all pins routed to pinheaders ](https://www.tindie.com/products/tomaskovacik/megaallpins/)

![](https://raw.githubusercontent.com/tomaskovacik/hw/master/kicad/arduino_nanoPB/pics/20190513_124704.jpg "")

#### Arduino support

To use the PB version of the ATmega328 chip in the Arduino software you need to install MiniCore from MCUdude: [https://github.com/MCUdude/MiniCore](https://github.com/MCUdude/MiniCore).

#### PB/nonPB version selection

On the board are three jumpers:
 - two are 3-pins, these are used to select which MCU version is installed, clearly marked as PA|PB
 - 3rd one is a 2-pin jumper used to connect the DTR pin of the CP2102 chip to reset line of the ATmega MCU over 100nF capacitors used for the auto-reset feature.
 
![](https://raw.githubusercontent.com/tomaskovacik/hw/master/kicad/arduino_nanoPB/pics/solder_jumpers.jpg "")

#### Tindie

Boards that I did not need are on sale on Tindie, 1$ for board + shipping, as always all components can be added for an additional $$.

[ link to store ] (https://www.tindie.com/products/tomaskovacik/nanopb/)

#### Why not RX/TX leds?

Boards that I sell in my Tindie store did not have RX/TX LEDs.

There is the place for the RX/TX LEDs on PCB (unpopulated R8, R9, D3, D4), but I made an error in design and routed them to the ground. They should connect to 5V rail. I was about to run new PCBs when I realize this will only work with a more expensive CP2102N chip, as this one uses separate pins for the LEDs. Legacy CP2102 chip did not have this function (LEDs in case of CP2102 are tied directly to the RX/TX lines). And as I want to use the CP2102 chip, I decide that these LEDs are not so important, and rolling new PCB is just a waste of money, and it's not ecological.

But this can be hacked. 

If the CP2102N chip is used, cut traces around D4 and D3. Solder these LEDs in reverse and connect anodes (pins closer to ISCP header) to 5V rail. Then solder resistors R8 and R9.

If the CP2102 chip is used, do the same as for CP2102N chip, but also you must cut traces around R8 and R9.   the resistor R8 must be connected to the RX line and R9 to the TX line.

 Check the next picture:


![MODS](https://raw.githubusercontent.com/tomaskovacik/hw/master/kicad/arduino_nanoPB/pics/fixies.jpg "Mods")

[![License: CC BY-SA 4.0](https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-sa/4.0/)
