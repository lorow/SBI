#include <fstream>
#include <iostream>

#include "src/brainfuck/Brainfuck.h"
#include "src/commands/CommandHandler.h"

void help() {
    static const std::string helpMessage = "Welcome to SBI aka Simple Brainfuck Interpreter! \n"
            "Here's how to use the program : ./SBI <arg> <file> \n"
            "args: \n"
            "-I -  SBI will take and try to interprete code in given file \n"
            "example : ./SBI -I main.bf"
            "-T -  SBI will take and try to translate text in given file to brainfuck \n"
            "example : ./SBI -t helloWorld.txt\n"
            "If you have found any bugs / problems or just have an idea on how to improve this program \n"
            "please, contact with the autor: github.com/lorow \n";

    std::cout<<helpMessage;

}

std::string loadFile(const std::string addres) {
    std::ifstream ifs(addres);
    std::string content((std::istreambuf_iterator<char>(ifs)),
                        (std::istreambuf_iterator<char>()));
    return content;
}

int main(int argc, char *argv[]) {
    if (argc > 1)
    {
        CommandHandler commandHandler{};
        Brainfuck brainfuck{};
        std::string data;

        if (commandHandler.cmdOptionExists(argv, argv + argc, "-h"))
            help();

        else if (commandHandler.cmdOptionExists(argv, argv + argc, "-I"))
        {
            auto address = commandHandler.getCmdOption(argv, argv + argc, "-I");
            data = loadFile(address);
            brainfuck.interpret.interpret(data.c_str());
        }
        else if (commandHandler.cmdOptionExists(argv, argv + argc, "-T"))
        {
            auto addr = commandHandler.getCmdOption(argv, argv+argc, "-T");
            brainfuck.translate.translate(addr);
        }

    } else
        help();

    return 0;
}