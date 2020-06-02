check=`shuf -i 0-1 -n 1`
if [ $check -eq 1 ]
then
	echo "Present"
else
	echo "Absent"
fi
