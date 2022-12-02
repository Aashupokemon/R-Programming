x<-25
if(is.integer(x))
{
  print("X is integer")
}else
{
  print("X is not integer")
}
##Search vector elements 
y<-c("Hardwork","is","the","key","of","success")
y
if("ram" %in% y){
  print("Key is found in vector")
}else{
  print("key not found in vector")
}

##Else-if
marks<-76
marks
if(marks>75){
  print("First")
}else if(marks>65){
  print("second")
}else if(marks>45){
  print("third")
}else{
  print("failed")
}

z<-c("Hardwork","is","the","key","of","success")
if("ram" %in% z){
  print("Key is found in vector")
}else if("of" %in% z){
  print("key found")
}else{
  print("key not found")
}

##Switch Case in R 
##switch(expression,case1, case2, ....)
#Index based switching
x<-switch(2,
          "Ram",
          "Shyam",
          "mohan",
          "sumit"
          )
x

#Matching value based
y<-"20"
x<-switch(y,
          "4"="Ram",
          "14"="Shyam",
          "20"="mohan",
          "25"="sumit"
)
x

## Next and Break in R 
##Next is used to skip any remaining statement in loop
##i.e current iteration and continue the loop to next iteration
## Also in if-else statements.

x<-1:10
for (val in x) {
  if(val==5){
    next
  }
  print(val)
}

##Break is used to stop execution immediate exit from loop
a<-1;
repeat{
  print("Hello R")
  if(a>=5)
    break
  a<-a+1
}

a<-1;
repeat{
  print("Hello R")
  if(a>5)
    break
  a<-a+1
}