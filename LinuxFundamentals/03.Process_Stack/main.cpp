#include <iostream>
#include <thread>
#include <iostream>
#include <cstdlib>
#include <ctime>
 

using namespace std;
using namespace std::chrono_literals;

/*
* Busy-wait loop
* generating random numbers and accumulating them in a volatile variable result.
* This function is intended to consume CPU cycles.
*
*/
void loadCPU() {

    volatile double result = 0;

    for (int i = 0; i < 1000000; ++i) {
        result += std::rand() % 1000;
    }

}

int main ()
{
    std::srand(std::time(nullptr));
    while (true)
    {
    
        int delay = std::rand() % 1 + 100;

        loadCPU();
        loadCPU();

        cout << "Hello from process" << endl;
    }
}


