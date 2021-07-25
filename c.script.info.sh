#!/bin/bash

#hostname
echo -e "Hostname - $(hostname)\n" > systeminfo.txt

#cpucoresnumber
echo -e "CPUcores - $(nproc)\n" >> systeminfo.txt

#total memory
echo -e "Total memory - $(free -h)\n" >> systeminfo.txt

#total disk size
echo "Total disk size - $(df -h)" >> systeminfo.txt
