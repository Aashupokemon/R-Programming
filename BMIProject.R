#R first project
#Take following inputs from the user 1: Name, 2: Age, 3: Weight, 4: Gender, and 5: Height 
#and display their BMI status according to their BMI value
#BMI=weight in kg * squares of height in meters.

print("*******WELCOME TO BMI CALCULATOR*******")
name<-readline(prompt = "Please enter your name: ")
age<-readline(prompt = "Please enter you age:  ")
gender<-readline(prompt = "Please enter your gender: ")
weight<-readline(prompt = "Please enter you weight(In Kg): ")
height<-readline(prompt = "Please enter you height(in meters): ")

#Conversion of string to numeric data
a<-as.numeric(age)
w<-as.numeric(weight)
h<-as.numeric(height)

#Applying BMI formula on the data
bmi<-w/(h*h)

#Conditions for the Status of BMI
if (bmi<18.5){
  status<-"Underweight"
}else if(bmi>18.5 && bmi<24.9){
  status<-"Normal"
}else if(bmi>25 && bmi<29.9){
  status<-"Overweight"
}else if(bmi>30 && bmi<34.9){
  status<-"Obesity Class-1"
}else if(bmi>35 && bmi<39.9){
  status<-"Obesity Class-2"
}else if(bmi>40){
  status<-"Obesity Class-3"
}else{
  status<-"Insufficient Data"
}
#Message to be printed for user
msg1<-(paste("Hello Mr",name,"your weight is:",weight,"and","your height is:",height))
msg2<-(paste("According to data provided your BMI (BODY MASS INDEX) is :",bmi))
msg3<-(paste("Which is in ",status, "category."))

print(paste(msg1,msg2,msg3,sep = " . "))
