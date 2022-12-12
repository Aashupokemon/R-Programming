#------------------------------------------------
#Function to know the current working directory
getwd()
#Function to reset the current working directory
setwd("D:\\Rprogramming\R-Programming")

#Basic vector operations
#Sorting in R default- ascending
v<-c(32,12,45,34,23,87,66,33)
sort(v)

#Sort in decreasing (descending) order
v<-c(32,12,45,34,23,87,66,33)
sort(v,decreasing = T)

#Order function is used to return the index of the elements from sorted vector
v
order(v)
#Creating vector of ordered function
v[order(v)]

#Rank is used for normal ranking of the elements
v
rank(v)
v[rank(v)]

#Data importing - csv
#A Comma-Separated Value (CSV) files
stores <- read.csv("AdvertisingBudgetandSales.csv")
#Check is it a dataframe
is.data.frame(stores)
#View dataframe
View(stores)
#Check total rows and columns
ncol(stores)
nrow(stores)

#When CSV is at other location
store1 <- read.csv("D:\\CU MBA\\DS\\Powerbi\\sales_data_sample.csv")
#Import using read.table() function
store2 <- read.table(file = "AdvertisingBudgetandSales.csv",header = T,sep = ",")

#Some basic important predefined functions of dataframe
#View dataframe
View(stores)
#To edit the values in a dataframe
fix(stores)
#To see structure of a dataframe
str(stores)
#Summary is used to get the summary of the statistics on the columns of the dataframe
summary(stores)
#Get names of all the columns
names(stores)
#Get rows and columns 
nrow(stores)
ncol(stores)
#Length returns number of columns
length(stores)
#Dim function shows the dimensions of the data frame by rows and columns
dim(stores)
#Colnames function returns the names of the columns
colnames(stores)
#Head function returns first 6 rows of the dataframe
head(stores)
#Tail function returns last 6 rows of the dataframe
tail(stores)
names(stores)

#Create last variable as third
#1,2 will remain as it is, variable to be swapped, next variables remain as it is
#c(1-2, last , 3-4)
st1<- stores[c(1:2,7,3:6)]
names(st1)

#Only need first 10 rows
st2<-stores[c(1:10),]
View(st2)
#Only 10 rows and 4 columns
st3<-stores[c(1:10),c(1:4)]
View(st3)

#Grep function returns particular column location
grep("X",colnames(stores))

#$ sign for accessing and mentioning the variable name 
#Create new variable 
d1<-stores$Sales....
d1
names(stores)
#Add new column totalbudget1 into dataframe
stores$totalbudget1<-stores$TV.Ad.Budget.... + stores$Radio.Ad.Budget....
View(stores)
View(stores$totalbudget1)

#Getting maximum sales from dataframe
max_sale<-max(stores$Sales....)
max_sale
min_sale<-min(stores$Sales....)
min_sale

#Getting the details of the person who have maximum totalbudget
details<-subset(stores,stores$Sales....==max(stores$Sales....))
details

details2<-subset(stores,stores$Sales....>10&stores$TV.Ad.Budget....>100)
details2

#Write csv file in R
write.csv(stores, file = "AdvertisingBudgetandSales.csv")
