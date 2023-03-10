# Juan Manuel Mateos Pérez

#-------------------------------------------
# Ejercicio 4
#-------------------------------------------

# descomentar y ejecutar para limpiar la memoria
#rm(list = ls())

# Declaramos las variables

n<-3

f<-function(x,y) x^y
A<-outer(1:n, 1:n, f);A
x<-rep(1,n);x
b<-A%*%x;b

# a) Resolvemos el sistema Ax=b.

solve(A,b)

# b) Máximo de las diferencias x-1 en valor absoluto.

max(abs(x-1))

# c) n = 4,5,..,12

n<-4 # ...
n<-12

# En respuesta a este apartado, nos damos cuenta de que a partir del valor n<-8, la solución no la obtenemos exacta,
# ya que aparecen valores como 0.9999981 con n<-9.
# Finalmente, comprobando n<-12 obtenemos un error ya que alcanzamos un valor demasiado grande.
# El valor tan grande, provoca seguramente, limitaciones en los cálculos en coma flotante y de precisión.
