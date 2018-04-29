//
// Created by Marte Montipo' on 27/04/2018.
//

//#include "BrainfuckCPU.h"
#include <iostream>
#include <vector>

class BrainfuckCPU {

private:
    uint32_t pointer;
    std::vector<uint32_t> *memory;
    uint32_t codePointer{};
    int8_t cycleState = -1;
    bool inaloop = false;
    int8_t state = 0; // 0 = idle, -1 = left, +1 = right
    uint8_t openBrackets = 0;
    std::string srcCode;

    void executeCommand(char cmd) {
        switch (cmd) {
            case '>': incPointer(); break;
            case '<': decPointer(); break;
            case '+': incByte(); break;
            case '-': decByte(); break;
            case '.': printPtrByte(); break;
            case ',': break;
            case '[': if (memory->at(pointer) == 0) state = +1; break;
            case ']': if (memory->at(pointer) != 0) state = -1; break;
        }
    }

public:
    BrainfuckCPU() {
        codePointer = 0;
        pointer = 0;
        memory = new std::vector<uint32_t>(1);
        std::cout << memory->at(0) << std::endl;
    }

    void setPointer(uint32_t ptr) {
        pointer = ptr;
    }

    uint32_t getCell() {
        return memory->at(pointer);
    }

    void load(std::string code) {
        srcCode = code;
    }

    void incByte() {
        memory->at(pointer) += 1;
    }

    void decByte() {
        memory->at(pointer) -= 1;
    }

    void incPointer() {
        pointer++;
        if (pointer == memory->size()) {
            memory->emplace_back(0);
        }
    }

    void decPointer() {
        if (pointer == 0) {
            pointer = static_cast<uint32_t>(memory->size() - 1);
        } else {
            pointer--;
        }
    }

    void runCode(std::string code) {
        uint i = 0;
        while (i < code.length()) {
            switch (state) {
                case 0:
                    executeCommand(code.at(i));
                    break;
                case -1:
                    switch (code.at(i)) {
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
                    switch (code.at(i)) {
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
        std::cout << char(memory->at(pointer));
    }


    std::vector<uint32_t> * machineState() {
        return memory;
    }

};
