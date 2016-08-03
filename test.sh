function myfun(){
	/usr/bin/java -jar /usr/local/DubboTest/provider.jar;
	sleep 10;
	/usr/bin/java -jar /usr/local/DubboTest/consumer.jar;
	sleep 30; 
}


count=12;
killprodir=/usr/local/DubboTest/killpro.sh;
while [ $count -ge 1 ]
do
	sh $killprodir provider.jar;
	sh $killprodir consumer.jar	
	date -s 2016/$count/20
	myfun;
	count=$[ $count -1 ]
done
echo $$
echo "this is the end of the loop"
