#my first r file 
#comment by starting #
womwen
#control+enter to execute command
?women
?mean
#? before function to seek help
mtcars
?mtcars
mean(mtcars$mpg)
names(mtcars)
mean(mtcars$hp)
colMeans(mtcars)
rowMeans(mtcars)
head(mtcars,1)
head(mtcars)
tail(mtcars)
tail(mtcars,1) # last row
hist(mtcars$mpg, breaks = 3)

#vectors
x = c(1,2,5,7)
x
class(x)
x1 =c(2L,8L)
class(x1)
class(mtcars)
x3 = ("a","B",'tanya')
x3
class(x3)
x4= c(TRUE, FALSE)

(x5 = 1:100000)
x5
x6 <-2 # amother way of assignment ; other is =
(x7=rnorm(100))
mean(x7)
sd(x7)
plot(density(x7))
hist(x7)
hist(x7, freq = F)
points(density(x7))
(x8=rnorm(100,mean = 60,sd=10))
hist(x8,freq=F)
points(density(x8))
library(e1071)
kurtosis(x8)
skewness(x8)


x9=runif(100, 30, 90)
x9
trunc(x9)
round(x9,1)
floor(x9)
ceiling(x9)
x10=ceiling(x9)
x10
x9
x10
mean(x10)
median(x10)
sort(x10)
sort(x10, decreasing=T)
x10[x10>60]
x10
x10[1:10]
x10[20:30]
x10[ -c(1:20)]
x10[c(1,5,7)]
#matrices
m1=matrix(1:24,nrow = 6)
m1
m2=matrix(1:56, ncol=8)

m3= matrix(1:24, ncol=8, byrow= T)
m3
colnames(m3) =month.abb[1:8]
m3
rownames(m3)=paste('product',1:3, sep='-')
m3
rowMeans(m3)
m3[ ,1:2]
colMeans(m3[c(1,3), ])




m1
m1[ ,1:2]
m3
m3[ ,1:2]
m3
colMeans(m3[c(1,3), ])
m3[ ,c]
max(m3)
min(m3)
range(m3)
#question
#data.frame
n=30
(rollno=paste('F',1:30,SEP='-'))
(same= paste('student',1:30,sep='&'))
set.seed(1234)
(gender=sample(c('M','F'),size=n,replace=T,prob =c(.7,.3))) 
(t1=table(gender))
prop.table(t1)

(college=sample(c('SRCC','FMS','IIM'),size=n,replace = T,prob=c(.4,.3,.3)))
(t2=table(college))
prop.table(t2)





(marks1=round(rnorm(n=n,mean=60,sd=10),0))
(marks2=round(rnorm(n=n,mean=55,sd=15),0))
rollno;same;gender;college;marks1;marks2  
lengh(gender)  

(students=data.frame(rollno,same,gender,college,marks1,marks2))  
class(students)
students
head(students)
students$rollno
students[ ,c(2,5,6)]

str(students)
summary(students)
quntile(students$marks1,prob=c(0,.25,.5,.75)
        se
quantile(students$marks1,prob=seq(0,1,.1))
seq(1,100,3)
summary(students)
students$rollno=as.character(students$rollno)
students$name=as.character(students$same)
str(students)
summmary(students)
head(students)
write.csv(students,'fms,csv',row.names=F)
students2=read.csv('fms,csv')
head(students2)
#students
head(students)
library(dplyr)
head(students)
students[students$marks1 >60, ]
students[students$gender =='F', ]
students[students$gender =='F']


#highest from all college
students %>% filter(gender=='M' & marks1>60)
