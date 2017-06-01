#ifndef UNTITLED1_COMMANDHANDLER_H
#define UNTITLED1_COMMANDHANDLER_H

#include <algorithm>
#include <iostream>
class CommandHandler {
public:
  char *getCmdOption(char **begin, char **end, const std::string &option) {
    char **itr = std::find(begin, end, option);
    if (itr != end && ++itr != end) {
      return *itr;
    }
    return 0;
  }

  bool cmdOptionExists(char **begin, char **end, const std::string &option) {
    return std::find(begin, end, option) != end;
  }
};
#endif //UNTITLED1_COMMANDHANDLER_H