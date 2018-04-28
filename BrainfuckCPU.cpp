//
// Created by Marte Montipo' on 27/04/2018.
//

//#include "BrainfuckCPU.h"
#include <iostream>

class BrainfuckCPU {

private:
    uint32_t memsize;
    uint32_t pointer;
    uint32_t* memory = (uint32_t*) malloc(memsize * sizeof(uint32_t));
    uint32_t codePointer;
    int8_t cycleState = -1;
    bool inaloop = false;
    int8_t state = 0; // 0 = idle, -1 = left, +1 = right
    uint8_t openBrackets = 0;
    char *srcCode;

    void executeCommand(char cmd) {
        switch (cmd) {
            case '>': pointer++; break;
            case '<': pointer--; break;
            case '+': incByte(); break;
            case '-': decByte(); break;
            case '.': printPtrByte(); break;
            case ',': break;
            case '[': if (memory[pointer] == 0) state = +1; break;
            case ']': if (memory[pointer] != 0) state = -1; break;
        }
    }

public:
    BrainfuckCPU() {
        setMemsize(10000);
        memory = new uint32_t[memsize];
    }

    BrainfuckCPU(uint32_t memory_size) {
        setMemsize(memory_size);
    }

    uint8_t setMemsize(uint32_t memory_size) {
        memsize = memory_size;
        return 0;
    }

    void setPointer(uint32_t ptr) {
        pointer = ptr;
    }

    uint32_t getCell() {
        return memory[pointer];
    }

    void load(char code[]) {
        srcCode = code;
    }

    void incByte() {
        memory[pointer]++;
    }

    void decByte() {
        memory[pointer]--;
    }

    void runCode(char code[]) {
        uint i = 0;
        while (i < strlen(code)) {
            switch (state) {
                case 0:
                    executeCommand(code[i]);
                    break;
                case -1:
                    switch (code[i]) {
                        case ']':
                            openBrackets++;
                            break;
                        case '[':
                            if (openBrackets > 0) openBrackets--;
                            else state = 0;
                            break;
                        default:
                            break;
                    }
                    break;
                case +1:
                    switch (code[i]) {
                        case '[':
                            openBrackets++;
                            break;
                        case ']':
                            if (openBrackets > 0) openBrackets--;
                            else state = 0;
                            break;
                        default:
                            break;
                    }
                    break;
            }
            switch (state) {
                case 0:
                    i++;
                    break;
                case -1:
                    i--;
                    break;
                case +1:
                    i++;
                    break;
            }
        }
    }

    void run() {
        runCode(srcCode);
    }

    void printPtrByte() {
        std::cout << getCell();
    }


    uint32_t* machineState() {
        return memory;
    }

};
