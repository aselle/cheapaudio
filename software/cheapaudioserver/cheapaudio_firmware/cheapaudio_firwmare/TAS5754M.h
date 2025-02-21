#ifndef _TAS5754M_h_
#define _TAS5754M_h_

#include "I2CMaster.h"

class I2CMaster;


class TAS5754M {
    I2CMaster& master_;
    uint8_t chip_addr_;

public:
    TAS5754M(I2CMaster& master, uint8_t addr_2bit):
        master_(master), chip_addr_(addr_2bit | 0x4c) 
    {
    }

    void writePreamble(uint16_t addr) {
        master_.startWrite(chip_addr_);
        //master_.write(addr >> 8);
        master_.write(addr & 0xff);
    }

    bool write(uint16_t addr, uint16_t size, uint8_t *data) {
        writePreamble(addr);
        for(; size > 0; --size, data++) master_.write(*data);
        master_.endWrite();
        return true;
    }

    bool read(uint16_t addr, uint16_t size, uint8_t *data) {
        writePreamble(addr);
        master_.startRead(chip_addr_, size);
        for(; size > 0; --size, data++) *data = master_.read();
        return true;
    }
};

#endif