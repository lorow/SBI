#include "CommandHandler.h"
#include "Compiler.h"
#include <algorithm>
#include <iostream>

void showHelp() {
    std::cout << "Here's how to use this compiler : ./BFCompiler  args\n";
    std::cout << "-h  : shows this menu\n";
    std::cout << "-c  : this is the path to your gcc compiler, no option means default path\n";
    std::cout << "-bf : your brainfuck file or path to it\n";
    std::cout << "-s  : sets the compiler to output assembler only code, no binary\n";
    std::cout << "-o  : the name of your binary, default is 'a'\n";

    std::cout << "if you encoutered any problems, please, consider opening an issue" << std::endl;
}

int main(int argc, char *argv[]) {

    CommandHandler commandHandler;
    Compiler compiler{};


    bool asmOnly = false;
    std::string outputName = "a";
    std::string bfFile = "./main.bf";
    std::string compilerPath = "gcc";
    if (argc > 1) {
        if (commandHandler.cmdOptionExists(argv, argv + argc, "-h")) {
            showHelp();
        }
        if (commandHandler.cmdOptionExists(argv, argv + argc, "-c")) {
            compilerPath = commandHandler.getCmdOption(argv, argv + argc, "-c");
            std::cout << "path to gcc is: " << compilerPath << "\n";
        }
        if (commandHandler.cmdOptionExists(argv, argv + argc, "-bf")) {
            bfFile = commandHandler.getCmdOption(argv, argv + argc, "-bf");
        }
        if (commandHandler.cmdOptionExists(argv, argv + argc, "-s")) {
            asmOnly = true;
        }
        if (commandHandler.cmdOptionExists(argv, argv + argc, "-o")) {
            outputName = commandHandler.getCmdOption(argv, argv + argc, "-o");
        }
    } else
        showHelp();

    compiler.compile(bfFile, asmOnly, compilerPath);


    return 0;
}