# CONSTATNTS FOR THE PROGRAM
EMP_RATE_PER_HR=20;

empCheck=$(($RANDOM%2));
empCheck=$(($RANDOM%3));
if [ $empCheck -eq 1 ]
then
	empHrs=4
elif [ $empCheck -eq 2 ]
then
	empHrs=8
else
	empHrs=0
fi
totalSalary=$(($empHrs*$EMP_RATE_PER_HR))
echo $totalSalary
