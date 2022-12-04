#Functions in R
#To perform set of statements for specific tasks
#User defined and built-in

#keyword used : function()

#User-defined Functions
#Syntax: fun_name<-function(arg1,arg2,...){body and return value}

new.function<-function(){
  for (i in 1:5) {
    print(i^2)
  }
}
#Function calling
new.function()

#Function with argument

new.function<-function(x,y,z){
  res<-x+y+z
  print(res)
}
#Passing arguments directly
new.function(2,3,4)
#Passing arguments by name
new.function(x=4,y=5,z=6)

#Function with default arguments

new.function<-function(x=10,y=20){
  res<-x*y
  print(res)
}

new.function()
#It will override the default values of function
new.function(5,6)

#Built-in Functions n R
#Already defined function by programming language
#Known as Predefined functions, library functions
x<--5
#Absolute 
print(abs(x))
#square-root
print(sqrt(x))
#Floor and Ceiling (Round down and Round Up)
y<-5.6
print(ceiling(y))
print(floor(y))

#Truncate removes values after decimals
z<-c(1.5,5.6,8.6)
print(trunc(z))

#Sin, Cos and other mathematical functions
a<-5
print(sin(a))
print(cos(a))
print(log(a))
print(exp(a))

#String related 
d<-"123456789"
#Calling Sub-string from main string- substr(x,start,stop)
substr(d,3,5)
#Index starts from 1

#String conversion
s1<-"Manish"
print(tolower(s1))
print(toupper(s1))

#Grep to search pattern
s2<-c('abcd','bcbd','abcdbcbd')
pat<-'abc'
print(grep(pat,s2))

#Basic stats functions
a1<-c(0:10,40)
print(sum(a1))
print(diff(a1))
print(max(a1))
print(min(a1))

# Create a function with arguments.
new.function <- function(a, b) {
  print(a^2)
  print(a)
  print(b)
}

new.function(6)

