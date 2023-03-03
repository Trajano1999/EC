# Juan Manuel Mateos Pérez

#-------------------------------------------
# Ejercicio 1
#-------------------------------------------

x<-seq(1,10,by=0.2);x
n<-length(x);n
names(x)<-paste("x",1:n,sep="_");x
mx<-mean(x);mx
length(x[x>mx])
which(x>mx)[1]
y<-seq(1,2*n,by=2);y
x[y[1:5]]

#-------------------------------------------
# Ejercicio 2
#-------------------------------------------

x<-seq(-2,2,by=0.1);x
y<-(x < -1)*1 + (x<0 & x>=-1)*log(x^2) + (x>=0 & x<1)*log(x^2+1) + (x>=1)*2;y
y[is.nan(y)]<-0;y

#-------------------------------------------
# Ejercicio 3
#-------------------------------------------

set.seed(1)
x<-runif(50);x
?runif
length(x[x>0.25 & x<0.75])
length(x[x<0.1 | x>0.9])
is.na(x)<-which(x<0.1 | x>0.9);x
mean(x,na.rm=T)
x[is.na(x)]<-0;x
mean(x)
# La media sale un valor menor ya que en el apartado anterior no estamos teniendo en cuenta los "na", 
# mientras que cuando ponemos 0, ya sí son valores que se tienen en cuenta.

#-------------------------------------------
# Ejercicio 4
#-------------------------------------------

n<-20
a1<-1
d<-1.2

x<-1:n;x
x<-a1+(x-1)*d;x

sum(x)
n*(a1+x[length(x)])/2

sd(x)
abs(d)*sqrt((n*(n+1))/12)

prod(x)
(d^n)*gamma(a1/d + n)/gamma(a1/d)

#-------------------------------------------
# Ejercicio 5
#-------------------------------------------

x<-c(2,2,8,7,6,1,5);x
x[2:length(x)]-x[1:length(x)-1]

#-------------------------------------------
# Ejercicio 6
#-------------------------------------------

ABE<-LETTERS;ABE
ABE.5<-sample(ABE,5,replace=FALSE); ABE.5

?paste
PAL1<-paste(ABE.5,collapse="");PAL1
PAL2<-paste(sample(ABE.5,5),collapse="");PAL2
PAL<-c(PAL1,PAL2);PAL

