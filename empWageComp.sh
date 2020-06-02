# CONSTATNTS FOR THE PROGRAM
EMP_RATE_PER_HR=20;
IS_PART_TIME=1;
IS_FULL_TIME=2;
NUM_WORKING_DAYS=20;

# VARIABLES
totalEmpHrs=0;
totalWorkingDays=0;

while [[ $totalWorkingDays -le $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empCheck=$(($RANDOM%3));
	case $empCheck in
  		$IS_FULL_TIME)
      			empHrs=8
         		;;
  		$IS_PART_TIME)
       			empHrs=4
   			;;
  		*)
    			empHrs=0
        		;;
	esac
	totalEmpHrs=$(( $totalEmpHrs + $empHrs ));
done
totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR))
echo $totalSalary
