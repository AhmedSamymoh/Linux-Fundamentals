# M1-A2
Assignment number 2 in M1



**Project Idea: File Organizer**

The goal of this project is to create a Bash script that organizes files in a specified directory based on their file types into separate subdirectories. This can be useful to keep your directories clean and tidy by automatically sorting files into appropriate categories.

**Features:**

- The script should take a directory path as an argument and organize the files within that directory.
- It should create subdirectories based on the file extensions (e.g., "txt" for text files, "jpg" for image files).
- Files with unknown or no file extensions should be placed in a "misc" subdirectory.
- If a subdirectory for a particular file type already exists, the script should move the files into that existing directory.
- The script should handle edge cases, such as files with no extensions or hidden files (those starting with a dot).

**Example:** Suppose you have a directory called "Downloads" with the following files:

```shell
file1.txt
file2.jpg
file3.pdf
file5_without_extension
file6.unknown
```

## output:

```shell
Downloads/
|-- txt/
|   |-- file1.txt
|-- jpg/
|   |-- file2.jpg
|-- pdf/
|   |-- file3.pdf
|-- misc/
|   |-- file5_without_extension
|   |-- file6.unknown
```
---

# File Organizer Script

This Bash script organizes files in a specified directory based on their file extensions into separate subdirectories.

## Usage

1. **Make the script executable:**

   ```bash
   chmod +x fileOrganizer.sh
   ```

2. **Execute the script:**: Replace /your/dir/path with the path to the directory you want to organize.

   ```bash
   ./fileOrganizer.sh /your/dir/path
   ```
---
# Validation

   ```bash
   ./fileOrganizer.sh /Validation/
   ```

   ```bash
   
    /home/sami/Desktop/GitWorkspace/Embedded-Linux/LinuxFundamentals/06.Bash_ShellScripting/FileOrganizer/Validation/
    ├── file1.txt
    ├── file2.jpg
    ├── file3.pdf
    ├── file4_without_extension
    └── file6.unknown

    0 directories, 5 files
   ```
   ```bash
   /home/sami/Desktop/GitWorkspace/Embedded-Linux/LinuxFundamentals/06.Bash_ShellScripting/FileOrganizer/Validation/
    ├── jpg
    │   └── file2.jpg
    ├── misc
    │   ├── file4_without_extension
    │   └── file6.unknown
    ├── pdf
    │   └── file3.pdf
    └── txt
        └── file1.txt

    4 directories, 5 files
   ```
