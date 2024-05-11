# Process Management Stack: Use Case
---

### 1- **First Let's Figure out those dummy commands**:

```bash
g++ main.cpp -g -o process
```
- -g : adds debugging information to executable, 
     aiding debugging process with tools like GDB


```bash
ulimit -c unlimited
```


- ulimit -c unlimited sets core file size limit to unlimited, 
allowing creation of core dumps.


```bash
sudo sysctl -w kernel.core_pattern=./core.%e.%p.%t
```
- sets core dump filename pattern to 
include process name, PID, and timestamp.

---

### 2- **Lets Go with the first task to check the CPU load for the system, after running the process software**

- Actully We Could Use ```$ top ``` 

- But I just Found ``` $ htop ``` with fancy GUI

![p1](/LinuxFundamentals/03.Process_Stack/assests/2.png)
---
- I also found that `` $ ps `` got some nice argu
```bash
ps -C process -o %cpu
```
- ``-C`` : allows you to use process name without knowing it's pid.
- ``-o %cpu``: Specifies the output format to display only the CPU

![p2](/LinuxFundamentals/03.Process_Stack/assests/3.jpg)

---
```bash
$ ps -eo pcpu,pid,user,args | sort -k 1 -r | head -3 
```

- You can also use the ps command to view the top 2 most CPU-intensive processes 
---
```bash
$ top -b -n 2 -d 0.2 -p 6962 | tail -1 | awk '{print $9}'
> 100.0 # yup that's simple D:
```
- ``b``: Batch-mode *non-interactive mode, suitable for scripts.*
- ``-n 2``: Number-of-iterations, use 2 because: When you first run it, it has no previous sample to compare to, so these initial values are the percentages since boot.
- ``d 0.2``: Delay-time(in second, here is 200ms)
- ``p 6962``: Monitor-PIDs
- ``tail -1``: the last row
- ``awk '{print $9}'``: the 9-th column(the cpu usage number)
---

### 3- **the *main* task Actually is Second Task :extract core-dump (tracing file) for this process :**

- To get the core-dump file we should ``$ kill`` the process with signal ``SIGQUIT`` as it requests controlled termination with core dump, aiding debugging by capturing program state.

```bash
kill -QUIT <PID>
```
- Now we got :
```bash 

Hello from process
Hello from process
Hello from process
Hello from process
Quit (core dumped)
```
- And i got core-dump ``core.process.10902. ``

---
---

## Process Stack
----

### Assign Priority:

- to Assign Priority at *runtime*
```bash
$ renice
```

- to Assign Priority before *runtime*
```bash
$ nice
```

Execute a program with a **custom scheduling priority** (niceness).Niceness values range from -20 (the highest priority) to 19 (the lowest).
```bash
 - Launch a program with altered priority:
   nice -n {{niceness_value}} {{command}}
```
----
### Example

```bash
   nice -n -10 
   dd if=/dev/zero of=/dev/null
```

------
