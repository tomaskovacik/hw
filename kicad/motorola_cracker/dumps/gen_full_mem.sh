eeprom=$1
rom=$2
out=`echo $2|sed 's/\....//g'`
sym=${out}_full_mem.sym
out=${out}_full_mem.bin
#
# 0x0000-0x001F I/O
# 0x0020-0x004F reserver
# 0x0050-0x00BF RAM1
# 0x00C0-0x00FF STACK(in RAM1)
dd if=/dev/zero of=${out} bs=1 count=256
# EEPROM 256B
# 0x0100-0x010F Option Register (OPTR,in EEPROM)
# 0x0101-0x01FF EEPROM
dd if=${eeprom} of=${out} bs=1 count=256 obs=1 seek=256
# 0x0200-0x024F Bootloader ROMI
# 0x0250-0x03Cf RAMII
# 0x03B0 Bootloader ROMII
dd if=/dev/zero of=${out} bs=1 count=512 obs=1 seek=512
# $0400 User ROM 
#dd if=${rom} of=${out} bs=1 obs=1 seek=1024
dd if=${2} of=${out} bs=1 count=31232 obs=1 seek=1024
# $7E00 Bootloader ROMIII
# $7FDE reserved
# $7FE0 Bootloader ROM vectors
# $7FF0 reserved 
# User vectors:
# $7FF2–3 SCI
# $7FF4–5 Timer overflow
# $7FF6–7 Timer output compare 1& 2
# $7FF8–9 Timer input capture 1 & 2
# $7FFA–B External IRQ
# $7FFC–D SWI
# $7FFE–F Reset/power-on reset
dd if=/dev/null of=${out} bs=1 count=512 obs=1 seek=32256
cp  Motorola_68HC05B32.sym ${sym}
sed -i 's/org\ 0x0400/;org\ 0x0400/g' ${sym}
sed -i 's/;org\ 0x0000/org\ 0x0000/g' ${sym}
