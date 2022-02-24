for((i=1;i<=10;i++))

do
	random=$((RANDOM%9+1))
	dict["$i"]=$random
done


echo ${!dict[@]}
