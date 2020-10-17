# Manpage for get_temp.

Contact s3656006@student.rmit.edu.au to correct errors and typos.

This user-document is in markdown format, see get_temp file for manpage format.

### NAME

get_temp \- records device temperature

### SYNOPSIS

get_temp [./get_temp]

### DESCRIPTION

get_temp is a shell script that utilises 'vcgencmd' to record the devices temperature and stores it to a file called "kernel_performance_data" every 30 seconds. This script can run in the background while you perform your build_kernel script.

### OPTIONS

The get_temp does not take any options. However, you can run it in the background [./get_temp &]

### SEE ALSO

build_kernel

### BUGS

No known bugs.

### AUTHOR

Milos Mladenovic (s3656006@student.rmit.edu.au)
