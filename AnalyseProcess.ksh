############################
# Shell d'analyse de process
############################
#!/bin/ksh
for i in `ccz-fuser /dev/vg02/lvol11`
do
ps -elf | grep " $i " | egrep -v "grep|COMM"
done