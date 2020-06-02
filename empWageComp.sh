# CONSTATNTS FOR THE PROGRAM
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=100;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

# VARIABLES
totalEmpHrs=0;
totalWorkingDays=0;
salary=0;

declare -A dailyWage;
declare -A totalwage;
declare -A dayno;

function getWorkHrs(){
	local empCheck=$1
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
	echo $empHrs
}

echo "Welcome to the daily wage computation program"
echo "Day no	Daily Wage	Total Wage"

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empCheck=$(($RANDOM%3));
	empHrs=$( getWorkHrs $empCheck )
	totalEmpHrs=$(( $totalEmpHrs + $empHrs ));
	dailyWage[$totalWorkingDays]=$(( $empHrs*$EMP_RATE_PER_HR ))
	dayno[$totalWorkingDays]="Day "$totalWorkingDays
	salary=$(($salary+($empHrs*$EMP_RATE_PER_HR) ))
	totalwage[$totalWorkingDays]=$salary
done

for((i=1;i<=$totalWorkingDays;i++))
do
	echo -e ${dayno[$i]}'\t'${dailyWage[$i]}'\t\t'${totalwage[$i]}
done

