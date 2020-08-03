#!/bin/bash -x

is_FULL_TIME=1;
is_PART_TIME=2;
EMP_RATE_PER_HRS=20;
NUM_WORKING_DAYS=20;
MAX_HRS_IN_MONTH=100;


totalworkinghrs=0;
totalworkingdays=0;

function getworkinghrs () {
 case $1 in 
          $is_FULL_TIME)
                 workhrs=8
                   ;;
          $is_PART_TIME)
                 workhrs=4
                   ;;
          *)
                 workhrs=0
                  ;;
       esac

  }

while [[ $totalworkhrs -lt $MAX_HRS_IN_MONTH && $totalworkingdays -lt $NUM_WORKING_DAYS ]]

do
    ((totalworkinghrs++))
  getworkinghrs=$(($RANDOM%3))
  totalworkinghrs=$(($totalworkinghrs+ $workhrs));

done

totalsalary=$(($totalworkingdays*$EMP_RATE_PER_HRS));

