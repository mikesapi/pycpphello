#include "Dummy.h"

#include <iostream>

namespace dummy {

void Dummy::hello(int dummy_value)
{
  std::cout << "Hello world CPP from Dummy: " << dummy_value << std::endl;
}

}
