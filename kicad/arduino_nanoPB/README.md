I was in need for drop in replacement for some arduino compatible boards with more functionality (pins, UARTs, I2C...) , so I made few boards for few different/updated chips and while I was playing with is I designed more then what i need (breadboard adapter). I designed this set of boards:

 - [ Atmega328P/PA/PB board compatible with Arduino nano ](https://www.tindie.com/products/tomaskovacik/nanopb/)
 - [ Atmega328P/PA/PB board compatible with Arduino Uno ](https://www.tindie.com/products/tomaskovacik/unopb/)
 - [ Atmega324P/PA board compatible with Arduino nano ](https://www.tindie.com/products/tomaskovacik/nano324/) (PB version not produced yet, only designed, check github)
 - [ Atmega324P/PA board compatible with Arduino mega ](https://www.tindie.com/products/tomaskovacik/mega324/)(PB version not produced yet, only designed, check 
github)
 - [ Atmega2560 board compatible with Arduino mega with all pins routed to pinheaders ](https://www.tindie.com/products/tomaskovacik/megaallpins/)

#### Arduino support

To use PB version of ATmega328 chip in arduino you need to install MiniCore from MCUdude: [https://github.com/MCUdude/MiniCore](https://github.com/MCUdude/MiniCore).

![](https://raw.githubusercontent.com/tomaskovacik/hw/master/kicad/arduino_nanoPB/pics/20190513_124704.jpg "")

#### PB/nonPB version selection

On board are 3jumpers 2 are 3pins, these are used to select which MCU version is insraled, clearly marked as PA|PB, 3th one is 2pin jumper used to connect DTR pin of cp2102 to reset line of atmega MCU over 100nF capacitors used as autoreset fetature.

![](https://raw.githubusercontent.com/tomaskovacik/hw/master/kicad/arduino_nanoPB/pics/solder_jumpers.jpg "")

#### Tindie

Boards which I did not need are on sale on tinfie, 1$ for board + shipping, as always all components can be added for aditional $$.

[ link to store ] (https://www.tindie.com/products/tomaskovacik/nanopb/)

#### Why not RX/TX leds?

board which is on sale on tindie has no RX/TX leds.
There is place for RX/TX leds on PC (unpopulated R8,R9,D3 and D4), but I made error in design and route them to ground, they should be connected to 5V rail. I was about to run new PCBs when I realize this will only works with more expensive CP2102N chip, as this one use separate pins for leds. Legacy CP2102 did not has this function (leds in case of CP2102 are tied directly to RX/TX lines). And as I want to use CP2102 chip I decide that these leds are not so important, that rolling new PCB is just waste of money and also I did not like to ecological side of just throwing these PCBs to bin.

But this can be hacked, you just need to cut traces around D4,D3 and R8 and R9. Then solder resistors, leds in revers, and few jumper wires. resistors goes to RX/TX pin and common pin of leds to 5V:

![MODS](https://raw.githubusercontent.com/tomaskovacik/hw/master/kicad/arduino_nanoPB/pics/fixies.jpg "Mods")
