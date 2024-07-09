### Tips for adding those helpful aliases

- open `.bashrc` for sourcing those aliases with each terminal
``` bash 
vim ~/.bashrc 
```

- Add those couple of line, But Don't Forget to change `./<YOUR_PATH>/` with The `aliases.sh` path
```bash
if [ -f , ./<YOUR_PATH>/myaliases/aliases.sh ]; then
        source ./<YOUR_PATH>/myaliases/aliases.sh
fi
```

### Aliases:

>`diskspace`
```bash
$ diskspace
Filesystem      Size  Used Avail Use% Mounted on
udev            7.7G     0  7.7G   0% /dev
tmpfs           1.6G  2.6M  1.6G   1% /run
/dev/nvme0n1p7   98G   75G   19G  81% /
```


>`size`
```bash
$ size 
3.5M    .
2.4M    ./CH3_Shells_Scripting
924K    ./MiniProjects
```

> `cm`
```bash
sami@linux:~$ ls -la | grep a.out 
-rwxrwxr-x  1 sami sami  16696 يول 10 00:03 a.out

sami@linux:~$ cm a.out # <<<<<<<
[sudo] password for sami: 

sami@linux:~$ ls -la | grep a.out 
-rwxrwxrwx  1 sami sami  16696 يول 10 00:03 a.out

```

----
- isA will keep develop it 
