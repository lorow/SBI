#include <iostream>
#include <algorithm>
#include "CommandHandler.h"
void showHelp()
{
    std::cout<<"Here's how to use this compiler : ./BFCompiler -c path_to_gcc -bf path_to_bf_file \n";
    std::cout<<"if you encoutered any problems, please, consider opening an issue"<<std::endl;
}

int main(int argc, char* argv[]) {

    CommandHandler commandHandler;
    if (argc > 1) {
        if (commandHandler.cmdOptionExists(argv, argv + argc, "-h")) {
            showHelp();
        }
        if (commandHandler.cmdOptionExists(argv, argv + argc, "-c")) {
            auto t = commandHandler.getCmdOption(argv, argv + argc, "-c");
            std::cout<<"path to gcc is: "<<t<<"\n";
        }
        if (commandHandler.cmdOptionExists(argv, argv + argc, "-bf")) {
            auto t = commandHandler.getCmdOption(argv, argv + argc, "-bf");
            std::cout<<"path to brainfuck file is: "<<t<<"\n";
        }
    }
    else
        std::cout<<"wrong arguments"<<std::endl;
    return 0;
}