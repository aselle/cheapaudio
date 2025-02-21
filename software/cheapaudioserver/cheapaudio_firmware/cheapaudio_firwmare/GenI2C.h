#ifndef _GENI2C_h_
#define _GENI2C_h_

#include "I2CMaster.h"

class I2CMaster;


class GenI2C {
    I2CMaster& master_;

public:
    GenI2C(I2CMaster& master):
        master_(master)
    {
    }

    template<int addrbytes>
    void writePreamble(uint16_t chip_addr, uint16_t addr) {
        master_.startWrite(chip_addr);
        static_assert(addrbytes == 1 || addrbytes == 2, "Only support addrbytes 2 and 1.");
        if(addrbytes == 2) {
          master_.write(addr >> 8);
          master_.write(addr & 0xff);        
        } else if (addrbytes == 1) {
          master_.write(addr & 0xff);
        } 
    }

    template<int addrbytes>
    bool write(uint16_t chip_addr, uint16_t addr, uint16_t size, uint8_t *data) {
        writePreamble<addrbytes>(addr);
        for(; size > 0; --size, data++) master_.write(*data);
        master_.endWrite();
        return true;
    }

    template<int addrbytes>
    bool read(uint16_t chip_addr, uint16_t addr, uint16_t size, uint8_t *data) {
        writePreamble<addrbytes>(addr);
        master_.startRead(chip_addr, size);
        for(; size > 0; --size, data++) *data = master_.read();
        return true;
    }

    bool probe(uint16_t chip_addr) {
      master_.startWrite(chip_addr);
      return master_.endWrite();
    }
};

#endif