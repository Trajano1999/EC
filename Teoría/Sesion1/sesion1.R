#---------------------------------
# 0. Inicio
#---------------------------------

help("mean") # ayuda de "mean"
?mean # igual que la linea anterior
??expm
help.search("read data")
example("mean")

#---------------------------------
# 1. Variables
#---------------------------------

x<-5
x
x<-2
y<-2; z<-3
ls() # muestra las variables creadas
rm(list=ls()) # borrar toda la memoria

#---------------------------------
# 2. Generar 
#---------------------------------

x<-rnorm(50)
y<-rnorm(50, mean=10, sd=2)

#---------------------------------
# 3. Histograma
#---------------------------------

hist(x)

#---------------------------------
# 4. Nube de puntos de x e y
#---------------------------------

summary(x) # resumen de datos
plot(x)
plot(x,y)

#---------------------------------
# 5. Recta regresión
#---------------------------------

win.graph() # para que no se pisen los histogramas con los graficos
# hist(x); win.graph(); plot(x,y)
recta<-lm(y~x)
abline(recta, col="red")

#---------------------------------
# 6. Directorio trabajo
#---------------------------------

getwd()
setwd("direccion")
source("ejemplo.R")

#---------------------------------
# 7. Paquetes
#---------------------------------

search() # muestra los paquetes
install.packages("fda") # instala el paquete fda
library(fda) # carga el paquete
search()
detach(package:fda) # anula el paquete
