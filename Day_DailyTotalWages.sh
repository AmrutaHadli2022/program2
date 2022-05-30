#!/bin/bash -x
partTime=2
fullTime=1
WagesPerHR=20
Days=20
function MyFunction(){
  for (( i=1; i<=Days; i++ ))
  do
    check=$((RANDOM%3))
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
    echo "$i day employee wages is $totalSalary"
  done
}
MyFunction
echo "employee total wages is $totalSalary"
