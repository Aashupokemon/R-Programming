#How to take user input in R
#Using readline function
name<-readline(prompt = "Enter your name: ")
name
age<-readline(prompt = "ENter your age: ")
age
print(paste("Hello my name is: ",name, "and my age is : ",age ))

paste("hello","233","ram",sep = "_") #Concat series of strings 
paste0("hello","233","ram") #Concat without spaces or seperator and is faster than paste