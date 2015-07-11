#manual merge to hexfile:
#make bl_cjmcu_hex
#make fw_cjmcu_hex
#head -n -2 build/bl_cjmcu/bl_cjmcu.hex  > merged.hex
#tail -n +2 build/fw_cjmcu/fw_cjmcu.hex >> merged.hex 
#stm32flash -w  merged.hex -v -g 0x0 -b 115200 /dev/ttyUSB0 

#all in one
make ef_cjmcu
stm32flash -w build/ef_cjmcu/ef_cjmcu.bin -v -g 0x0 -b 115200 /dev/ttyUSB0 

