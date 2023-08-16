#include <fstream>
#include <iostream>

#include "msg.pb.h"

int main() {
  Msg m;

  std::ifstream infile;
  infile.open("middle.txt");
  m.ParseFromIstream(static_cast<std::istream*>(&infile));
  infile.close();

  std::cout << m.Utf8DebugString();
}