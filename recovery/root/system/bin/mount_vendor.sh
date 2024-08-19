#!/system/bin/sh


#Try mounting vendor partition

mount | grep dm-4

if [ $? -eq 0 ]
then
  echo "Vendor already mounted!"
  exit 1
else
  echo "Vendor not mounted, continue..."
fi

twrp mount /vendor

if [ $? -eq 0 ]
then
  echo "Success: vendor mounted!"
  exit 0
else
  echo "Failure: unable to mount vendor"
  exit 1
fi


