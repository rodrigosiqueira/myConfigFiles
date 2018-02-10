#!/bin/bash

# Run the checkpatch.pl kernel script on all hsi driver files

MY_DEFAULT_KERNEL_PATH=$HOME/Documents/Repositories/linux
MY_DEFAULT_TARGET=$MY_DEFAULT_KERNEL_PATH/drivers/staging/

KERNEL_PATH=$1
TARGET=$2

KERNEL_PATH=${KERNEL_PATH:-"$MY_DEFAULT_KERNEL_PATH"}
TARGET=${TARGET:-"$MY_DEFAULT_TARGET"}

FLIST=`find $TARGET | grep "\.[ch]$" `
#Use –terse flag for brief notifications

# Use –no-tree flag if you are not specifying the Linux kernel tree
checkpatch="$KERNEL_PATH/scripts/checkpatch.pl --strict --terse --no-tree --color=always --codespell --file "

echo “Running checkpatch.pl on sources files in $TARGET”
echo “Processing following list of files:”

for current_file in $FLIST
do
  file=$current_file
  if [ ! -e "$file" ]
  then
    echo "$file does not exist."; echo
    continue
  fi

  echo "************************************"
  echo $file
  $checkpatch $file
  echo
done
