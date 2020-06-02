# CONSTATNTS FOR THE PROGRAM
EMP_RATE_PER_HR=20;

empCheck=$(($RANDOM%2));
if [ $empCheck -eq 1 ]
then
	echo "present"
	empHrs=8
else
	echo "Absent"
	empHrs=0
fi

totalSalary=$(($empHrs*$EMP_RATE_PER_HR))
echo $totalSalary
