#include <fstream>

#include "msg.pb.h"

int main() {
  Msg m;
  m.set_r(Enum::C);

  std::ofstream myfile;
  myfile.open("gateway.txt");
  myfile << m.SerializeAsString();
  myfile.close();
}