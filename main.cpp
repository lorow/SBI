#include <iostream>
#include <algorithm>
#include "CommandHandler.h"
void showHelp()
{
    std::cout<<"Here's how to use this compiler : ./BFCompiler path_to_gcc path_to_bf_file \n";
    std::cout<<"if you encoutered any problems, please, consider opening an issue"<<std::endl;
}

int main(int argc, char* argv[]) {

    CommandHandler cmdh;

    if(cmdh.cmdOptionExists(argv, argv+argc, "-h"))
    {
        showHelp();
    }
    else
        std::cout<<"nope";
    return 0;
}