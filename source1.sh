#!/bin/bash


r="\e[31m"
g="\e[32m"
n="\e[om"

a="bhanu"
echo -e "Process id of source1 is$g $$$n"
./source2.sh
echo -e "Hi i am $g bhanu$n"