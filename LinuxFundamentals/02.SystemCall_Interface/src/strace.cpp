#include <iostream>
/*from man page */
#include <sys/types.h>
#include <unistd.h>

/*
$ Strace : trace system calls and signals

************************************************
Use Case 1:
    1. To trace the system calls of a process
    2. To trace the time taken by a process to execute

    '''''''''''''''''''''''''''''''''''''''''
    ' $ sudo strace -c ./a.out              '
    '''''''''''''''''''''''''''''''''''''''''

''bash
$ sudo strace -c ./a.out  
Child Process ID: 24212
Parent Process ID: 24209
User ID: 0
% time     seconds  usecs/call     calls    errors syscall
------ ----------- ----------- --------- --------- ----------------
 39.58    0.000357         357         1           execve
 26.05    0.000235          10        22           mmap
  5.76    0.000052           7         7           mprotect
  5.32    0.000048           9         5           openat
  4.43    0.000040          40         1           clone
  3.66    0.000033           8         4           read
  3.55    0.000032           5         6           fstat
  3.22    0.000029           4         6           pread64
  2.77    0.000025           5         5           close
  1.77    0.000016           5         3           write
  1.11    0.000010          10         1         1 access
  1.00    0.000009           4         2         1 arch_prctl
  0.78    0.000007           2         3           brk
  0.67    0.000006           6         1           munmap
  0.11    0.000001           1         1           getpid
  0.11    0.000001           1         1           getuid
  0.11    0.000001           1         1           getppid
------ ----------- ----------- --------- --------- ----------------
100.00    0.000902                    70         2 total


''


************************************************
Use Case 2:
    1. To trace the system calls of the child process as well
    2. To limit the length of the strings to print
    3. To write the output to a file .txt

    '''''''''''''''''''''''''''''''''''''''''
    ' $ strace -s 100 -f -o ./o.txt ./a.out  '
    '''''''''''''''''''''''''''''''''''''''''
 $ strace -s : limit the length of the strings to print
 $ strace -f : trace the child process as well
 $ strace -o : write the output to a file

$ strace -s 4 -f -o ./o1.txt ./a.out 
 24670 pread64(3, "\6\0\0\0"..., 784, 64) = 784 --> limit the length of the strings to print
 24670 is the process id
 ..
 24671 is the child process id



$ strace -s 100 -f -o ./o2.txt ./a.out 
24755 pread64(3, "\4\0\0\0\20\0\0\0\5\0\0\0GNU\0\2\0\0\300\4\0\0\0\3\0\0\0\0\0\0\0", 32, 848) = 32
24755 is the process id
..
24756 is the child process id

 */


int main(){
    
    uint32_t id = getpid();
    uint32_t ppid = getppid();
    uint32_t uid = getuid();

    // get the child process id
    uint32_t child_id = fork();
    if(child_id == 0){
        // child process
        sleep(200);
    }else{
        // parent process
        std::cout<<"Child Process ID: "<< id << std::endl;  
        std::cout<<"Parent Process ID: "<< ppid << std::endl;
        std::cout<<"User ID: " << uid << std::endl;
        sleep(200);
    }   




    return 0;
}