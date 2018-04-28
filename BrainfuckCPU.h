//
// Created by Marte Montipo' on 27/04/2018.
//

#ifndef CPP_BRAINFUCK_BRAINFUCKCPU_H
#define CPP_BRAINFUCK_BRAINFUCKCPU_H

#include <stdint.h>

class BrainfuckCPU {
private:
    uint32_t memsize;
    uint32_t pointer;
    uint32_t* memory;
    uint32_t codePointer;
    int8_t cycleState = -1;
    bool inaloop = false;
    int8_t state = 0; // 0 = idle, -1 = left, +1 = right
    uint8_t openBrackets = 0;

    char *srcCode;
    void printPtrByte();



public:
    BrainfuckCPU();
    BrainfuckCPU(uint32_t memory_size);
    uint8_t setMemsize(uint32_t memory_size);
    void setPointer(uint32_t ptr);
    uint32_t getCell();
    void load(char code[]);
    void incByte();
    void decByte();

    void runCode(char code[]);
    void executeCommand(char cmd);
    void run();

    uint32_t* machineState();


};


#endif //CPP_BRAINFUCK_BRAINFUCKCPU_H
