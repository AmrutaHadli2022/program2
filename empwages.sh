#!/bin/bash -x
partTime=2
fullTime=1
WagesPerHR=20

function MyFunction(){
    check=$((RANDOM%3))
    case $check in
	$fullTime)
		empHr=12;
	echo "Employee is fulltime worked for $empHr"
	;;
	$partTime)
		empHr=8;
	echo "Employee is parttime worked for $empHr"
	;;
	*)
		empHr=0;
	echo "Employee is not worked"
	;;
    esac
    salary=$(($empHr * $WagesPerHR))
    totalSalary=$(($totalSalary + $salary))
    echo "Daily employee wgaes is $totalSalary"
}
MyFunction
