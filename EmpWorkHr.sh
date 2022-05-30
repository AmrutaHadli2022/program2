#!/bin/bash -x
partTime=2
fullTime=1

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
}
MyFunction
echo "Employee is worked for $empHr Hour"
