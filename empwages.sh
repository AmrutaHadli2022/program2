#!/bin/bash -x
partTime=2
fullTime=1
WagesPerHR=20

function MyFunction(){
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
    echo "Employee worked for $empHr Hour "
    echo "Daily employee wgaes is $totalSalary"
}
MyFunction
