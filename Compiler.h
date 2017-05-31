//
// Created by lorow on 29.05.17.
//
#ifndef SBC_COMPILER_H
#define SBC_COMPILER_H

#include <fstream>
#include <iostream>
#include <stack>
class Compiler {

private:
    std::string programBF = "none";
    std::string gccLocal = "gcc";
    std::stack<int> loopStack;

    char tokens[40000];
    int condID = 0;

    int stackCounter = 0;
    int lastelement = 0;

public:
    void compile(const std::string &address, const bool asmOnly, const std::string gccLoc) {
        getProgram(address);
        putTemplate();
        assemble(asmOnly, gccLoc);
    }

private:
    void getProgram(const std::string &address) {
        std::ifstream ifs(address);
        programBF.assign((std::istreambuf_iterator<char>(ifs)),
                         (std::istreambuf_iterator<char>()));
        ifs.close();
    }


    std::fstream openFile() {
        std::fstream ofs("main.s", std::fstream::out | std::fstream::trunc);
        return ofs;
    }

    void assemble(const bool asmOnly, const std::string ggcLoc) {
        if (!asmOnly) {
            system("echo 'compiling you fat fuck'");
            system("gcc -c main.s -o file.o");
        }
    }

    void lexer(std::fstream &asmFile) {
        system("echo 'well, fuck you too'");
        std::cout << programBF;

        programBF.copy(tokens, programBF.length());

        for (auto key : tokens) {
            switch (key) {
            case '>':
                asmFile << "# >"
                        << "\n"
                        << "movq    i(%rip), %rax"
                        << "\n"
                        << "addq    1, %rax"
                        << "\n"
                        << "movq    %rax, i(%rip)"
                        << "\n";
                break;
            case '<':
                asmFile << "# <"
                        << "\n"
                        << "movq    i(%rip), %rax"
                        << "\n"
                        << "subq    1, %rax"
                        << "\n"
                        << "movq    %rax, i(%rip)"
                        << "\n";
                break;
            case '+':
                asmFile << "# +"
                        << "\n"
                        << "movq    i(%rip), %rax"
                        << "\n"
                        << "movzbl  (%rax), %edx"
                        << "\n"
                        << "addl    1, %edx"
                        << "\n"
                        << "movb    %dl, (%rax)"
                        << "\n";
                break;
            case '-':
                asmFile << "# -"
                        << "\n"
                        << "movq    i(%rip), %rax"
                        << "\n"
                        << "movzbl  (%rax), %edx"
                        << "\n"
                        << "subl    1, %edx" //check this later
                        << "\n"
                        << "movb    %dl, (%rax)"
                        << "\n";
                break;
            case '.':
                asmFile << "# ."
                        << "\n"
                        << "movq    i(%rip), %rax"
                        << "\n"
                        << "movzbl  (%rax), %eax"
                        << "\n"
                        << "movsbl  %al, %eax"
                        << "\n"
                        << "movl    %eax, %edi"
                        << "\n"
                        << "call    putchar"
                        << "\n";
                break;
            case ',':
                condID++;
                asmFile << "# ,"
                        << "\n"
                        << "movq    i(%rip), %rbx"
                        << "\n"
                        << "call    getchar"
                        << "\n"
                        << "movb    %al, (%rbx)"
                        << "\n"
                        << "movq    i(%rip), %rax"
                        << "\n"
                        << "movzbl  (%rax), %eax"
                        << "\n"
                        << "cmpb    4, %al" //check this later
                        << "\n"
                        << "\"jne .cond"
                        << condID
                        << "\""
                        << "\n"
                        << "movq    i(%rip), %rax"
                        << "\n"
                        << "movb    0, (%rax)" //check this later
                        << "\n"
                        << "\".cond"
                        << condID
                        << ":\""
                        << "\n";
                break;
            case '[':
                stackCounter++;
                loopStack.push(stackCounter);
                asmFile << "# ["
                        << "\n"
                        << ".loops"
                        << stackCounter
                        << ":"
                        << "\n"
                        << "movq    i(%rip), %rax"
                        << "\n"
                        << "movzbl  (%rax), %eax"
                        << "\n"
                        << "cmpb    0, %al" //check it later
                        << "\n"
                        << "je  .loope"
                        << stackCounter
                        << "\n";
                break;
            case ']':
                lastelement = loopStack.top();
                loopStack.pop();
                asmFile << "# ]"
                        << "\n"
                        << "jmp .loops"
                        << lastelement
                        << "\n"
                        << ".loope"
                        << lastelement
                        << ":"
                        << "\n";
                break;
            }
        }
    }

    void putTemplate() {

        auto asmFile = openFile();

        if (asmFile.good()) {
            asmFile << ".comm   tape,4000,32\n";
            asmFile << ".glob   i\n";
            asmFile << ".data   \n";
            asmFile << ".align  8\n";
            asmFile << ".type   i,@object\n";
            asmFile << ".size   i, 8\n";
            asmFile << ".i:\n";
            asmFile << ".quad   tape\n";
            asmFile << ".section   .rodata\n";
            asmFile << ".stty:\n";
            asmFile << ".string \"stty -icanon\"\n";
            asmFile << ".text \n";
            asmFile << ".globl  main\n";
            asmFile << ".type   main, @function\n";
            asmFile << "main: \n";
            asmFile << ".cfi_startproc\n";
            asmFile << "pushq   %rbp\n";
            asmFile << ".cfi_def_cfa_offset 16\n";
            asmFile << ".cfi_offset 6, -16\n";
            asmFile << "movq    %rsp, %rbp\n";
            asmFile << ".cfi_def_cfa_register 6\n";
            asmFile << "movl    $.stty, %edi\n";
            asmFile << "call    system\n";

            lexer(asmFile);

            asmFile << "movl    $0, %eax\n";
            asmFile << "popq    %rbpe\n";
            asmFile << ".cfi_def_cfa 7, 8\n";
            asmFile << "ret\n";
            asmFile << ".cfi_endproc\n";
        }
    };
};
#endif //SBC_COMPILER_H
