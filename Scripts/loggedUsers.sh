#!/bin/bash)
echo $(who)
echo "IP address: $(hostname -I)"
echo "Do you want to delete the previous record"
read answer
if [ "$answer" == "yes" ]
then
echo "The log successfuly deleted"
rm logfile
fi

echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" >> logfile
echo $(who) >> logfile
echo "IP address: $(hostname -I)">> logfile
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" >> logfile
