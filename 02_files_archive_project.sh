#!/bin/bash
#varibles
DIR=/home/scripts
DAYS=10
RUN=0
DEPTH=1

#Check if Directory is valid or not
if [ ! -d $DIR ]
then
echo "Directory is Not Present $DIR "
exit 1
fi
#Create Archive Folder if not present
if [ ! -d $DIR/archives ]
then
mkdir $DIR/archives
fi
#Find Files inside directory if larger than 5KB
for i in $(find $DIR -maxdepth $DEPTH -type f -size +3k)
do
if [ $RUN -eq 0 ]
then
echo "[$(date "+%Y-m-%d %H:%:M:%S")] archiving $i ==> $DIR/archives"
gzip $i || exit 1
mv $i.gz $DIR/archives || exit 1
fi
done

