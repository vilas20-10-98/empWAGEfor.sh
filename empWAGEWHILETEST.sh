#!/bin/bash -x

is_PART_TIME=1;
is_FULL_TIME=2;
max_hrs_in_mon=100;
emp_rate_per_hrs=20;
num_working_days=20;

totalEMPHRS=0;
totalworkingdays=0;


while [[ $totalEMPHRS -lt $max_hrs_in_mon && $totalworkingdays -lt $num_working_days ]]
do
  ((totalworkingdays++))
  empcheck=$((RANDOM%3));
  case $empcheck in 
    $is_FULL_TIME)
       emphrs=8;
       ;;
   $is_PART_TIME)
      emphrs=4;
      ;;
   *)
    emphrs=0;
     ;;
esac 
totalEMPHRS=$(($totalEMPHRS+$emphrs))

done

totalsalary=$(($totalEMPHRS*$emp_rate_per_hrs));

