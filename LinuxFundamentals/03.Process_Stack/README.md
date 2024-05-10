# Process Stack
----

### Assign Priority:
```bash
$ renice
```
to Assign Priority at *runtime*

```bash
$ nice
```
to Assign Priority before *runtime*


Execute a program with a custom scheduling priority (niceness).Niceness values range from -20 (the highest priority) to 19 (the lowest).
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

