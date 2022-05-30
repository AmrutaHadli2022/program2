#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program on Master Branch"
status=$((RANDOM%2))
function MyFunction(){
   if [ $status -eq 1 ]
   then
	echo "Employee is Present"
   else
	echo "Employee is Absent"
   fi
}
MyFunction
