#!/bin/bash -e

clear

DESTINATION_DIR=$(pwd)"/apks"
LISTFILE=$(pwd)"/tmp-apk-list"


# clean the destination directory
echo "removes old opt files.."

rm -rf $LISTFILE
rm -rf $DESTINATION_DIR
mkdir $DESTINATION_DIR

echo "removes old opt files.. DONE"


# creates a list containing all the 3party enabled apps apk files.
echo "creates apk list.."

adb shell "pm list package -3 -e -f" | sed 's/^.*://g;s/=.*$//g' > $LISTFILE

echo "creates apk list.. DONE"


# reads the apks list file and pulls each apk file to the destination directory.
echo "pulls apks.."

while read line
do
	adb pull $line $DESTINATION_DIR

done < $LISTFILE

echo "pulls apks.. DONE"