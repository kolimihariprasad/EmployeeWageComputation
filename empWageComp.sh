# CONSTATNTS FOR THE PROGRAM
EMP_RATE_PER_HR=20;
IS_PART_TIME=1;
IS_FULL_TIME=2;

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

totalSalary=$(($empHrs*$EMP_RATE_PER_HR))
echo $totalSalary
