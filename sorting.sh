array=()

for((i=0;i<10;i++))
do
	a=$((RANDOM%999))
	array[$i]=$a
done

echo "The array is" ${array[@]}

for((i=0;i<10;i++))

do
	for((j=i+1;j<10;j++))
	do
		if((array[i]>array[j]))
		then
			temp=${array[j]}
			array[j]=${array[i]}
			array[i]=$temp
		fi
	done
done

echo "after sorting the array is" ${array[@]}

echo "the second smallest number is" ${array[1]}
echo "the second highest number is" ${array[8]}

