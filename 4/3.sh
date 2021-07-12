awk '/manager/ {print}' ./empolyee.txt
awk '{print $1,$4}' ./empolyee.txt

#NR input records count
#NF input fileds count
#FS field seperator
#RS record seperator

#ORS
#OFS

#$0 all line
#$1 first field
#$2 second field...

# $NF prints the value
# NF print the index
awk '{print NR,$3}' empolyee.txt
