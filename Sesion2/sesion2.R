#---------------------------------
# 1. Creación de vectores
#---------------------------------

x<-c(1,2,3,4,5)
x
y<-c(-1,0,x,6)
y

z<-c("uno","dos")
z

k<-c(x,z);k

#---------------------------------
# 2. Asignamos nombres al vector
#---------------------------------

names(x)<-c("x1","x2","x3","x4","x5")
x
names(y)<-c("y1","y2")
y

names(y)<-c("y1","y2","y3","y4","y5","y6","y7","y8")
y

#---------------------------------
# 3. Secuencias de valores
#---------------------------------

x<-1:5;x
y<--1:6;y
z<-10:0;z

#---------------------------------
# 4. Función seq
#---------------------------------

x<-seq(from=1,to=5);x
x<-seq(1,10,by=2);x
x<-seq(0,1,length.out=100);x

#---------------------------------
# 5. Función rep
#---------------------------------

rep(1,3)
x<-10:12
rep(x,each=2)
rep(x,2)
rep(x,length.out=7)
rep(x,each=2,time=3)

#---------------------------------
# 6. Función vector
#---------------------------------

w<-vector("numeric",4);w
w<-vector("logical",4);w
w<-vector("character",4);w

#---------------------------------
# 7. Vectores Lógicos
#---------------------------------

x<-c(T,F);x

x<--5:5;x
prueba1<-x>0
prueba1

prueba2<-x>0 & x<4;prueba2

prueba3<-x<(-3) | x>3;prueba3

#---------------------------------
# 8. Función paste
#---------------------------------
# Crea vectores carácter

x<-1:5
names(x)<-c("x1","x2","x3","x4","x5")
x

names(x)<-paste("x",1:5,sep="");x
names(x)<-paste(1:5,"x",sep="");x

x<-1:10;x

# Ejercicio de poner 1st, 2nd, 3rd, 4th, 5th ...
names(x)<-paste(1:10,c("st","nd","rd",rep("th",7)),sep="");x

x<-1:10
paste(c("X","Y"), 1:10, sep="")

letters
LETTERS

month.name

format(ISOdate(2000,1:12,1),"%B")

#---------------------------------
# 9. Acceder al vector
#---------------------------------

x<-seq(0,1,length.out=10);x
x[2]

# acceso a dos posiciones a la vez
x[c(1,5)]

# los 4 elementos primeros
x[1:4]

# posiciones pares
x[seq(2,10,by=2)]

# eliminar primera posicion
x[-1]

# eliminar la posición 1 y la 5
x[-c(1,5)]
x

x<-1:10
x[x>5]

# obtener posiciones de borrado
x<--5:5
x[x>0]  # elementos
which(x>0)  # posición

x[x>0 & x<2]
which(x>0 & x<2)

peso<-c(60,50,75,70)
sexo<-c("F","M","M","F")

# encontrar peso de los hombres
peso[which(sexo=="M")]
peso[sexo=="M"]

#---------------------------------
# 10. Falta de valores
#---------------------------------

x<-c(20,21,23,NA,30);x
is.na(x)
which(is.na(x))

mean(x,na.rm=T)

is.na(x)<-2
x
x[is.na(x)]<-0
x<-c(NA,"NA")

#---------------------------------
# 11. Operaciones con vectores
#---------------------------------

y<-seq(0,1,length.out=5);y
x<-1:5;x
x+y
x^2
z<-1:2;z

# locura si no son de la misma longitud
x+z

# Evaluar una funcion a cachos sin bucles
x<-seq(0.1, 1, by=0.1);x

(x<0.3)*(2*x) + (x>=0.3 & x<0.7)*x^2 + (x>=0.7)*2

sum(x)
cumsum(x)
prod(x)
cumprod(x)
max(x)
min(x)
which.min(x)
which.max(x)

y<-rnorm(5)

# ordena por valores
sort(y) 
sort(y, decreasing=T)

# ordena por posiciones
order(y)
y[order(y)] # = sort(y)
