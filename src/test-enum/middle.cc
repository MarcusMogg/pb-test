#include <fstream>
#include <iostream>
#include <istream>

#include "msg.pb.h"

int main() {
  Msg m;

  std::ifstream infile;
  infile.open("gateway.txt");
  m.ParseFromIstream(static_cast<std::istream*>(&infile));
  infile.close();

  std::ofstream myfile;
  myfile.open("middle.txt");
  myfile << m.SerializeAsString();
  myfile.close();

  std::cout << m.Utf8DebugString();
}