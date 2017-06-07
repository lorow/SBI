#include <fstream>
#include <iostream>

#include "brainfuck/Brainfuck.h"
#include "commands/CommandHandler.h"

void help() {
    std::cout << "Welcome to SBI aka Simple Brainfuck Interpreter! \n";
    std::cout << "Here's how to use the program : ./SBI <arg> <file> \n";
    std::cout << "args: \n";
    std::cout << "-I -  SBI will take and try to interprete code in given file \n";
    std::cout << "example : ./SBI -I main.bf";
    std::cout << "-T -  SBI will take and try to translate text in given file to brainfuck \n";
    std::cout << "example : ./SBI -t helloWorld.txt";
    std::cout << "\n";
    std::cout << "If you have found any bugs / problems or just have an idea on how to improve this program \n";
    std::cout << "please, contact with the autor: github.com/lorow \n";
}

void loadFile(std::string &data, const std::string addr) {
    std::ifstream ifs(addr);
    std::string content((std::istreambuf_iterator<char>(ifs)),
                        (std::istreambuf_iterator<char>()));
    data = content; // possible leak
}

int main(int argc, char *argv[]) {
    Brainfuck brainfuck{};
    CommandHandler cmdh{};

    std::string data;

    if (argc > 1) {
        if (cmdh.cmdOptionExists(argv, argv + argc, "-h"))
            help();
        else if (cmdh.cmdOptionExists(argv, argv + argc, "-I")) {
            auto address = cmdh.getCmdOption(argv, argv + argc, "-I");
            loadFile(data, address);
            brainfuck.interpret.interpret(data.c_str());
        } else if (cmdh.cmdOptionExists(argv, argv + argc, "-T"))
        {
            auto addr = cmdh.getCmdOption(argv, argv+argc, "-T");
            brainfuck.translate.translate(addr);
        }

    } else
        help();

    return 0;
}