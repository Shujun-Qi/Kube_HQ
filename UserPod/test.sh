#!/bin/bash
# Our custom function
cust_func(){
  date
  kubectl apply -f test_userpod.yaml
  
}
# For loop 5 times
for i in {1..10}
do
	cust_func $i & # Put a function in the background
done
 
## Put all cust_func in the background and bash 
## would wait until those are completed 
## before displaying all done message
wait 
echo "All done"