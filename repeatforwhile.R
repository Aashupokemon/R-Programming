# For loop in R
##To print repeatedly and is a conditional loop
for (y in 1:10) {
  print(paste("Number: ",y)) ##Paste is Used to concat string
}
f<-c("Apple","mango","guava","banana","grapes")
for (i in f) {
  print(f)
}

#Repeat loop in R. We don't specify condition in this loop
# We use break keyword to end the loop/exit the loop.
v<-c("hello","how","are","you")
x<-2
repeat{
  print(v)
  x<-x+1
  if(x>5){
    break
  }
}

#While loop in R
#We provide condition and when condition false it exits.
#We have to initailize the loop in starting
v<-c("hello","r","programming","language")
x<-2
while(x<=6){
  print(v)
  x<-x+1
}