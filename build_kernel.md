# Manpage for build_kernel.

## Contact s3656006@student.rmit.edu.au to correct errors or typos.

## This user-document is in markdown format, see build_kernel for manpage format.

### NAME

build_kernel \- build and compile linux kernel

### SYNOPSIS

build_kernel [./build_kernel]

### DESCRIPTION

build_kernel is a shell script that builds and compiles a modified linux kernel. It begins by installing prerequisite packages, git clones a kernel source code and s3656006 assignment repository. It then generates a kernel configuration, modifies and compiles it. Copies necessary files and reboots the devvice to load new kernel.

### OPTIONS

The build_kernel does not take any options. However, you can './build_kernel &' to run in background.

### SEE ALSO

get_temp

### BUGS

No known bugs.

### AUTHOR

Milos Mladenovic (s3656006@student.rmit.edu.au)
