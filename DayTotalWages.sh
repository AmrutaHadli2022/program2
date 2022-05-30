#!/bin/bash -x
partTime=2
fullTime=1
WagesPerHR=20
Days=20

function MyFunction(){
  check=$((RANDOM%3))
  for (( i=1; i<=Days; i++ ))
  do
    case $check in
        $fullTime)
                empHr=8;
        ;;
        $partTime)
                empHr=4;
        ;;
        *)
                empHr=0;
        ;;
    esac
    salary=$(($empHr * $WagesPerHR))
    totalSalary=$(($totalSalary + $salary))
  done
}
MyFunction
echo "Daily employee wages is $salary"
echo "employee total wages is $totalSalary"
