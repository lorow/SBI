#include <fstream>
#include <iterator>
#include <string>
#include <vector>

class translator {
private:
    std::string program;
    std::vector<char> bfProg;
    std::vector<int> tokens;

private:
    void loadFile(std::string &data, const std::string addr) {
        std::ifstream ifs(addr);
        const std::string content((std::istreambuf_iterator<char>(ifs)),
                                  (std::istreambuf_iterator<char>()));
        data = content;
    }

    void lexer() {
        for (char &letter : program) {
            tokens.push_back((int)letter);
        }
    }

    void convert(int charNumb) {

        auto factor = charNumb / 10;
        auto remaining = charNumb % 10;

        for (auto i = 0; i < 10; ++i)
            bfProg.push_back('+');

        bfProg.push_back('[');
        bfProg.push_back('>');

        for (auto i = 0; i < factor; ++i)
            bfProg.push_back('+');

        bfProg.push_back('<');
        bfProg.push_back('-');
        bfProg.push_back(']');
        bfProg.push_back('>');
        for (auto i = 0; i < remaining; ++i)
            bfProg.push_back('+');

        bfProg.push_back('.');
        bfProg.push_back('>');
    }


    void write() {
        std::ofstream fstr("./translated.bf");
        std::ostream_iterator<char> output_iterator(fstr);
        std::copy(bfProg.begin(), bfProg.end(), output_iterator);
    }

public:
    translator() {}
    void translate(const std::string addr) {
        loadFile(program, addr);
        lexer();
        for (auto &val : tokens)
            convert(val);
        write();
    }
};