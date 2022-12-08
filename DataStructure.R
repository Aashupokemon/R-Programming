#Data structure in R
#We have vectors, matrix, array, list, dataframes in R
#Vector
#basic ds which is a sequence of elements which shares same elements
#elements of vector are k/a components
#length function finds number of elements in a vector
#Vector types -> Atomic vector and list
#How to create vector:- using c() eg. c(1,2,3,4) 1-d array sequence
a<-c(1,2,3,4)
a
#using colon operator eg. b<-3:5
b<--3:5
b
sq<-seq(1,5)
sq
sq<-seq(1,7,by=.5) #Sequence with specific gap
sq
sq<-seq(1,4,length.out = 5)
sq
#1. Atomic vector
#4 types 

#Numeric atomic vector
numv<-c(12.3,32.32,43.32,23.43)
numv
class(numv)

#Integer atomic vector
intv<-c(1L,43L,54L)
intv
class(intv)
intv1<-c(1,2,3,4)
intv1<-as.integer(intv1)
intv1
class(intv1)

#Character atomic vector
charv<-c("a","b","c")
class(charv)
charv1<-c(1,2,3,4)
class(charv1)
charv1<-as.character(charv1)
class(charv1)
charv1

#Logical atomic vector
logv<-c(T,F,F,T)
class(logv)

#How to access elements of atomic vectors
#1. By indexing using []. Index starts from 1.
numv[1]
numv[1:3]

char_vec<-c("ram"=12,"shyam"=13,"mohan"=32) #Key=value vectors
char_vec

char_vec["shyam"] #Access using keys

a1<-c(1,2,3,4,5,6,7) #Only true positions will be returned
a1[c(TRUE,FALSE,FALSE,TRUE,TRUE,FALSE,TRUE)]

#Atomic Vector Operations
#Combine vectors
a1<-c(1,2,3,4,5,6,7)
a2<-c(2,9,5,6,7,8,9)
a3<-c(a1,a2)
a3
#Arithmetic Operations
a4<-a1(+,-,*,/)a2
a4

a5<-c("ram","shyam","mohan","sohan")
a5[3]
a5[-2] #COnverts -2 to absolute value and prints all values except 2
a5[2:4]

a5[c(2,3)]
a5[c(2,3,2)] #Duplicate indexing and random indexing is allowed

#Naming of vectors
z<-c("ram","mohan","sohan")
z
names(z)=c("y1","y2","y3")
z
