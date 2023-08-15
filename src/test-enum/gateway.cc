#include <iostream>

#include "msg.pb.h"

int main() {
  Msg m;
  m.set_r(Enum::C);
  std::cout << m.Utf8DebugString();
}