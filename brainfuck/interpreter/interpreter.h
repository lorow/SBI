#include <iostream>
class interpreter {
private:
  char data[30000];
  char *dataPointer;
  const char *programPointer;

public:
  void interpret(const char prog[]) {

    dataPointer = data;
    programPointer = prog;
    evaluate();
  }

private:
  inline void incrementDataPointer() { dataPointer++; }
  inline void decrementDataPointer() { dataPointer--; }
  inline void incrementDataPointerVal() { (*dataPointer)++; }
  inline void decrementDataPointerVal() { (*dataPointer)--; }
  inline void puts() { std::cout << *dataPointer; }
  inline void gets() { std::cin >> *dataPointer; }

  void bracketOpen() {
    int bal = 1;
    if (*dataPointer == '\0') {
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
      default:
        std::cout << "";
        break;
      }
      programPointer++;
    }
  }
};