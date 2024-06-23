list=(index.html archive.html category.html)

# for loop
length=${#list[*]}
for (( i=0;i<$length;i++ ))
do
    # echo "file $i:" ${list[$i]}
    touch ${list[$i]}
done
