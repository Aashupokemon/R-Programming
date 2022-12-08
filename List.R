#List in R Programming
#List is used to store different datatypes in single vector
#Use list() function

vec<-c(8,9,6)
char_vec<-c("r","y","c")

list1<-list(vec,char_vec)
list1

list2<-list("Ram","shohan",c(1,2,3,4),TRUE, FALSE,52L,56.86)
list2

#Naming of list
list3<-list(c("ram","mohan","sohan"),c(34,43,53),list("btech","bsc","ba"))
list3
names(list3)<-c("students","marks","courses")            
list3

#Accessing list
list3[3] #By Index
list3["courses"] #By naming
list3$marks #By $ sign

#Convert list to vector using unlist() function
list4<-unlist(list3)
list4
class(list4)

#Merge two or more lists
list5<-list(list3,list2)
list5

#R VECTOR FUNCTIONS

#rep() repeat sequence 
rep(c(2,3,4),time=4) # repeat vector
rep(c(1,4,8),each=2) #repeat each element
rep(c(0,8),time=c(3,4)) #Repeat different values different times
rep(1:4,length.out=8)   #Specify length of the output

#Seq() generate sequence
seq(from=3.5,to=1.5,by=-.5)
seq(from=-3.7,to=1.5,length.out=8)

#any() and all() function 
x<-1:10
any(x>5) #Any x value greater then 5
all(x>5) #All x values greater then 5
all(x>0)
