#Arrays in R programming
#Array allow us to store data in more than 2 dimensions.
#Use array() function and takes vector as input using dim parameter
#(2,3,4) 4 matrices of 2x3

# SYNTAX: array_name<-array(data,dim = ())

v1<-c(1,4,5)
v2<-c(10,20,30,40,50,60)
v3<-array(c(v1,v2),dim = c(3,3,4))
v3

#Naming of rows and columns
col_name<-c("c1","c2","c3")
row_name<-c("r1","r2","r3")
mat_name<-c("mat1","mat2")
v3<-array(c(v1,v2),dim = c(3,3,2),dimnames = list(row_name,col_name,mat_name))
v3

#Access array elements
v3[3,,2] #3rd row, all columns, 2nd matrix
v3[3,2,2] #3rd row , 2nd element, 2nd matrix
v3[,2,1] #all rows, 2nd column, 1st matrix 

#Array manipulation
v1<-c(1,4,5)
v2<-c(10,20,30,40,50,60)
v3<-array(c(v1,v2),dim = c(3,3,2))
v3

v4<-c(7,8,9)
v5<-c(11,21,31,41,51,61)
v6<-array(c(v4,v5),dim = c(3,3,2))
v6

v7<-v3+v6
v7

#Matrix in R 
#Proper 2d dataset using matrix() function
#SYNTAX: matrix(data,nrow,ncol,byrow,dim_name)
#Byrow-> false/true , arrangement false then columnwise/else rowise

mat1<-matrix(c(2:13),nrow = 4,byrow = TRUE)
mat1
mat2<-matrix(c(2:13),nrow = 4,byrow = FALSE)
mat2

#Matrix naming 
x<-matrix(c(5:16),nrow = 4,byrow = TRUE)
y<-matrix(c(7:18),nrow = 4,byrow = FALSE)
x
y
row_name<-c("r1","r2","r3","r4")
col_name<-c("c1","c2","c3")
z<-matrix(c(7:18),nrow = 4,byrow = TRUE, dimnames = list(row_name,col_name))
z

#Access matrix elements
z[3,1] #3rd row 1st column
z[4,1]
z[3,] #3nd row access
z[,2] #2nd column

#Modify matrix elements
#Using assignment operator
z
z[4,3]<-0
z

#Using relational operators
z[z==11]<-0 #Any element is equal to 11 then set to 0
z
z[z>15]<-1
z

#Add rows and columns -> then we use cbind() and rbind() functions used to add columns and rows respectively
z
rbind(z,c(2,3,4))
z
cbind(z,c(1,2,3,4))
z
#transpose of matrix 
z
t(z)

#Addition of two matrix
a1<-matrix(c(5:16),nrow = 4,ncol = 3)
a1
a2<-matrix(c(1:12),nrow = 4,ncol = 3)
a2
sum<-a1+a2 #Any operation can be done
sum

#Dataframe in R
#A dataframe is an array. unlike an array,
#the data we store in the columns of the data frame can be of various types.
#A data frame is a 2-d array like structure or a table in which a column contains values of one variable, and rows contains on set of vaues from each column.
#It is a special case of list in which eaach componenet has equal length.
#Columnname non empty, rows name unique

#How to create dataframe 
#We use frame() function.

#Creating dataframe
emp.data<- data.frame(
  employee_id = c (1:5),
  employee_name = c("ram","shyam","daya","jaya","maya"),
  sal = c(343,543,323,545,121),
  starting_date = as.Date(c("2012-01-01","2013-12-23","2014-12-23","2015-12-25","2016-12-30")),
  stringsAsFactors = FALSE
  )

emp.data

#Structure of dataframe
str(emp.data)

#Extract data from data frame
#Specific columns

f1<-data.frame(emp.data$employee_name,emp.data$sal)
f1

#Specific rows
f2<-emp.data[2,] #2nd row
f2
f3<-emp.data[3:5,] #range of rows
f3
f4<-emp.data[2,1] #2nd row and 1st column
f4
f5<-emp.data[c(2,3),c(1,4)] #2nd and 3rd row corresponding to 1st and 4th column
f5
f6<-emp.data[c(2,3)] #2nd and 3rd column only
f6

#Modification n dataframe
#Add column cbind(), rbind()

emp.data
#Add row
x<-list(6,"manish",643,"2017-12-25")
rbind(emp.data,x)

#Add column
y<-c(34,43,42,31,34)
cbind(emp.data, age=y)

#Delete row and column
#Delete Row
emp.data
emp.data<-emp.data[-2,]
emp.data

#Delete Column
emp.data$starting_date<-NULL
emp.data

#Summary of data frame
summary(emp.data)

#Factors in R
dir<-c("north","west","east","south")
is.factor(dir)
factor(dir)
#When same value level counts only once 
dir<-c("north","west","east","north")
is.factor(dir)
factor(dir)

factor(dir,levels = c("north","west","east","south"))

factor(dir,levels = c("north","west","east","south"),labels = c("N","W","E","S"))

factor(dir,levels = c("north","west","east","south"),exclude = "north")

#generate factor labels in R using gl() three arguments n, k, labels
#n-> number of labels, k-> no. of replicants i.e every label copies, 

v1<-gl(3,4, labels = c("ram","mohan","sohan"))
v1

#Access components of factor
dir<-c("north","west","east","south")
data<-factor(dir)
data
data[4]
data[3]
data[c(2,3)]
data[-1] #All except 1

#Modify factor elements
data[2]<-"east"
data[2]
data

#Functions of factor
#is.factor()-> is it a factor or not?, is.order()->checks is factor in order or not, as.factor()-> converts vector into factor,  as.order()-> takes unordered factor and return ordered factor
