# NO olvidar borrar la memoria

rm(list = ls())

#---------------------------------
# 1. Funcion matrix
#---------------------------------

x<-1:10;x

# convertimos x en una matriz y R la rellena por columnas
dim(x)<-c(2,5);x

matrix(1:10, nrow=2, ncol=5, byrow=T)

#---------------------------------
# 2. Union de vectores
#---------------------------------

x<-1:3
y<-seq(0,10,length.out=3)
z<-rep(1,3)
x;y;z

cbind(x,y,z)
rbind(x,y,z)

A<-matrix(c(x,y,z),ncol=3)

cbind(A,c(1,0,1))
rbind(A,c(1,0,1))

cbind(A,1)

#---------------------------------
# 3. Funciones rownames y colnames
#---------------------------------

rownames(A)<-c("Christian","Paco","Juanma")
rownames(A)<-paste("Individuo",1:nrow(A),sep="")
colnames(A)<-c("nºhermanos","calificacion","MH")
A

# estas funciones te dan el tipo de dato
class(A)
attributes(A)

#---------------------------------
# 4. Acceso a elementos de matrices
#---------------------------------

A
A<-matrix(1:9,3,3);A
A[2,2]
A[1,]  
A[,3]
A[1:2,1:2]
A[,-3]  
A[-2,]  

# elimina primera fila y primera columna
A[-1,-1]

A[,-c(1,3)]
A>4  
B<-A  
B[A>3]<-NA;B

A<-matrix(seq(0,1,length.out=9),3,3)
A
A[5]

#---------------------------------
# 5. Arrays
#---------------------------------

x<-1:24
dim(x)<-c(3,4,2)
x

class(x)
attributes(x)

x<-array(1:24,dim=c(3,4,2))
x

x[2,2,1]
x[1,,2]
x[,,2]
x[,-2,1]

#---------------------------------
# 6. Operaciones con matrices
#---------------------------------

rm(list = ls())
A<-matrix(c(0,1,-1,2),2,2);A

A%*%A # producto matricial
A^2 # elemento a elemento

A^3
A*A*A

colSums(A)
rowSums(A)
colMeans(A)
rowMeans(A)

# resolver un sistema
A<-matrix(c(3,4,-1,5,-2,1,2,-2,1),3,3,byrow=T);A
b<-c(8,4,1)
solve(A) # inversa A
solve(A,b) # resolver el sistema Ax=b

#---------------------------------
# 7. Funcion outer
#---------------------------------

f<-function(x,y) x+y
x<-c(1,0)
y<-c(2,5)

outer(x,y,f) # aplica a los elementos x,y la funcion f

#---------------------------------
# 8. Ordenar matrices
#---------------------------------

x<-matrix(c(17,10,11,12,5,14,13,10,8),ncol=3);x
colnames(x)<-c("Sobresalientes","Notables","Aprobados");x

x[order(x[,1]),] # MUY importante
x[,order(x[2,])]

x[,1]<-sort(x[,1]) # MAL porque pierde el orden de la fila

x[rev(order(x[,1])),] # de mayor a menor

#---------------------------------
# 9. Factores
#---------------------------------

rm(list = ls())
civil<-c("solter@","viud@","casad@","solter@","viud@","divorciad@","casad@")
civil
civil.f<-factor(civil)
civil.f

factor(civil,levels=c("solter@","casad@","divorciad@","viud@"))

# etiquetas en factores
sexo<-c(1,2,2,1,2,1,1)
sexo.f<-factor(sexo,labels=c("Mujer","Hombre"));sexo.f

unclass(sexo.f)
levels(sexo.f)<-c("Femenino","Masculino")
sexo.f

edad<-c(24,20,21,27,20,22,26)
boxplot(edad~sexo.f)

tapply(edad,sexo.f,mean)
tapply(edad,sexo.f,summary)
