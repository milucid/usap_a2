# usap_a2
Assignment 2 for RMIT Unix Systems Administration and Programming (Linux) COSC1133

## How To Use

`git clone git@github.com:milucid/usap_a2.git`

`chmod -R 755 usap_a2`

This repository contains two main bash scripts. `build_kernel.sh` and `get_temp.sh`

Change directory to `usap_a2` and copy `build_kernel.sh` to home directory `cp build_kernel.sh /home/[username]/build_kernel.sh`

Also copy `get_temp.sh` to home directory `cp get_temp.sh /home/[username]/get_temp.sh`

`./get_temp.sh &` will start recording your devices temperature in the background and output it to a file called `kernel_performance_data` every 30 seconds.

Then `./build_kernel.sh` to begin building and compiling linux kernel, device will reboot on completion.

SSH back into your Raspberry Pi and your device will now be using the new kernel.

Enter `cat kernel_performance_data` for information about your devices temperature throughout the process.

View the manpages of both scripts for more information.

### Extra Files

`.config` file is the configuration of my altered linux kernel.

`build_kernel` manpage for build_kernel.sh in manpage format.

`build_kernel.md` manpage for build_kernel.sh in markdown format.

`get_temp` manpage for get_temp.sh in manpage format.

`get_temp.md` manpage for get_temp.sh in markdown format.

`kernel_performance_data` stored temperature and timestamp data from get_temp.sh script.

`report.md` brief report in regards to gnuplot graph and kernel performance/temperature data.

`temp_20201016.png` gnuplot graph image of kernel_performance_data.

#### Credit

Milos Mladenovic - s3656006@student.rmit.edu.au
