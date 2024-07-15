#include <iostream>
#include <sys/types.h>
#include <unistd.h>

int main(){
    uint32_t id = getpid();
    uint32_t uid = getuid();
    char hostname[100];
    getlogin_r(hostname, sizeof(hostname));

    std::cout<<"Process ID: "<< id << std::endl;  
    std::cout<<"User ID: " << uid << std::endl;
    std::cout<<"Host Name: " << hostname << std::endl;  

    sleep(10);
    return 0;
}