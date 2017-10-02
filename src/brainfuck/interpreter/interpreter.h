#include <iostream>
#include <vector>

class interpreter {
private:
  std::vector<unsigned char > data;
  int dataPointer = 0 ;
  const char *programPointer;

public:
  void interpret(const char prog[]) {
    programPointer = prog;
    evaluate();
  }

private:
  inline void incrementDataPointer() { dataPointer++; }
  inline void decrementDataPointer() { dataPointer--; }
  inline void incrementDataPointerVal() { data[dataPointer]++; }
  inline void decrementDataPointerVal() { data[dataPointer]--; }
  inline void puts() { std::cout << data[dataPointer]; }
  inline void gets() { std::cin >> data[dataPointer]; }

  void bracketOpen() {
    int bal = 1;
    if (data[dataPointer] == '\0') {
      do {
        programPointer++;
        if (*programPointer == '[')
          bal++;
        else if (*programPointer == ']')
          bal--;
      } while (bal != 0);
    }
  }

  void bracketClose() {
    int bal = 0;
    do {
      if (*programPointer == '[')
        bal++;
      else if (*programPointer == ']')
        bal--;
      programPointer--;
    } while (bal != 0);
  }

  void evaluate() {
    while (*programPointer) {
      switch (*programPointer) {
      case '>':
        incrementDataPointer();
        break;
      case '<':
        decrementDataPointer();
        break;
      case '+':
        incrementDataPointerVal();
        break;
      case '-':
        decrementDataPointerVal();
        break;
      case '.':
        puts();
        break;
      case ',':
        gets();
        break;
      case '[':
        bracketOpen();
        break;
      case ']':
        bracketClose();
        break;
      default:break;
      }
      programPointer++;
    }
  }
};