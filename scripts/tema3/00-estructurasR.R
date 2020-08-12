#Estructuras de datos en r

#Véctores

###Ejercicios de vectores

# Escribir el año de nacimiento 10 veces
años = rep(1988, 10)
años

# Crear véctor y modificarlo con fix()
vec = c(16, 0, 1, 20, 1, 7, 88, 5, 1, 9)
fix(vec) 

# Función scan, crea véctor a partir de los válores que le entreguemos
scan()

#Sequencias
a = seq(0, pi, by=0.1)
a
#sequencia decreciente
b = seq(1, 0, by=-0.1)
b

#secuencia indicando cantidad de elementos
c = seq(0, pi, length.out = 10)
c

#sequencia sin ingresando el salto y cantidad de elementos
d = seq(0, by = 2.5, length.out = 15)
d

#sequencia de enteros entre dos números
e = 1:10
e

#número del 1 al 20
print(1:20)

#20 primeros pares
print(seq(2,20, by=2))

#imprimir 30 números equidistantes entre 17 y 88 mostrando solo 4 cifras
#significativas
numeros = seq(17, 88, length.out = 30)
round(numeros, 4)

#la función c es de concatenar
conc = c(rep(pi, 5), 1:10, seq(0, pi, length.out = 10))
conc
c(conc, 10, conc, 1)

#aplicar un función a cada elemento de un véctor
a
#suma pi a cada elemeto
a + pi
#raíz de cada elemento
sqrt(a)

#usando sappply
sapply(a, FUN = function(x){sqrt(x)})
sapply(a, FUN = sqrt)

#suma elemento a elemento (si no tienen misma longitud->error)
1:10 + 1:10

#multiplica elemento a elemento
(1:10)*(1:10)

#elevar a un véctor, eleva cada elemento al elemento en la misma entrada
# permite hacer suceciones
(1:10)^(1:10)
#ejemplo sucesión
n = 1:10
x = n^2 / (10+ n)
x
#largo de x
length(x)
#suma de elementos de x
sum(x)
#suma acumulada
cumsum(x)

#Ejercicios
# crear función que devuelva vertor ordenado decreciente usando sort y rev
ordDec = function(x){
  rev(sort(x))
}
ordDec(c(1, 4, 3, 9, 6))
sort(c(1, 4, 3, 9, 6), decreasing = TRUE)

#subvectores
a
#último elemento
a[length(a)]
#a entre dos número
a[3:7]
#invertido
a[7:3]

#véctor sin la entrada i esima
a[-3]
a[-c(3, 4)]

#aplicar operadores
a[a >= 3]

#pisición de elementos mayor a 3
which(a >= 3)

#seleccionar los elementos en posiciones pares
a[seq(2, length(a), by = 2)]
a

z = c(2, 4 ,3, 6 ,8, 7, 9, 0, 9, 0)
#donde están todos los mín
which(z == min(z))
#donde está ubicado el primer mínimo
which.min(z)

#si no está el valor entrega numeric(0) (depende del tipo de datos)
z[z == 5]

#vectores con valores nulos, se eliminan los nulos
w = c(NULL, 1, 3, NULL)
w
length(w)

#Valores NA (not available)
w[3] = NA
w[6:10] = c(1, 4, 5, 8, 0)
w
#al aplicar funciones a véctores con valores NA, tiende a NA
sum(w)
cumsum(w)
#NA remove (la mayoría de las funciones de R trae esta función)
sum(w, na.rm = TRUE)
#which NA no funciona
which(w == NA)
#para encontrar NA hay que usar la función is.na()
is.na(w) #entrega vector con valores TRUE donde hay NA y FALSE donde no hay NA
which(is.na(w))
w[!is.na(w)]

#cambiar los NA por el promedio de los otros valores
w1 = w
w1[is.na(w1)] = mean(w, na.rm = TRUE)
w1

#cumsum no tiene la opción remove NA, alternativa:
cumsum(w[!is.na(w)])

#eliminar valores NA 
w2 = na.omit(w)
w2

#sacar los atributos que entrega na.omit
w3 = w2
attr(w3, "na.action") = NULL
w3

#Factores, es util para clasificar datos
nombres = c("Alejandro", "Sofía", "Leonor", "Juan", "Leonor", "María", "Juan")
nombres2 = factor(nombres)
nombres2
#ejemplo con sexo
sexo = c("h", "m", "m", "h", "m", "m", "m", "h", "h")
sexo.fact = factor(sexo)
levels(sexo.fact)
#usando función as.factor
sexo.fact2 = as.factor(sexo)
sexo.fact2

#Agregar nuevo nivel
sexo.fact3 = factor(sexo, levels = c("h", "m", "b"))
sexo.fact3

#agregar etiquetas
sexo.fact4 = factor(sexo, levels = c("h", "m", "b"), labels = c("hombre", 
                                                                "mujer", 
                                                                "hermafrodita"))
sexo.fact4
levels(sexo.fact4)

#cambiar nombre de levels
notas = c(1, 4, 3, 2, 1, 3, 4, 1, 2)
notas.fact = factor(notas)
levels(notas.fact) = c("reprobado", "suficiente", "aprobado", "excelente")
notas.fact

#factor ordenado
notas.fact2 = ordered(notas, labels = c("rep", "suf", "apr", "exc"))
notas.fact2

#Listas, se puede mezclar distintos tipos (parecido a diccionarios en python)
t = c(1, 2, -1, 20, 15, -9, 8, 0, 3, 17)
L = list(nombre = "temperaturas", datos = t, media = mean(t), sumas = cumsum(t))
#acceder a los datos
L$datos
L[[2]]
#con un solo [] devuelve una lista
L[2]

#conocer estructura de la lista
str(L)

#nombres de la lista
names(L)

#Matrices
M = matrix(1:12, nrow = 4)
M
M2 = matrix(1:12, nrow = 4, byrow = TRUE)
M2
M[1][1]

#si no se entrega un vector que sea multiplo del número de filas, R rellena
M3 = matrix(1:13, nrow = 5)
M3

#Crear matriz a partir de un número
M4 =  matrix(0, nrow = 3, ncol = 5)
M4

M5 = matrix(1:12, nrow = 3)
M5

#Construir matriz a partir de filas
M6 =  rbind(1:5, c(3, 4, 5, 1, 2), 5:1)
M6

# a partir de columnas
M7 = cbind(1:3, c(3, 2, 4), 3:1)
M7
# a partir de diagonal
M8 = diag(1, 3, 3)
M8
M9 = diag(1:5)
M9
#añadir una fila (o columna)
rbind(M5, c(1, 4, 5, 0))

#acceder a elementos
M[1, 3]
M[2,]
M[, 3]
M6[2:3, c(1, 5)]

#sumar columnas
colSums(M6)
#sumar filas
rowSums(M6)
#media por filas
rowMeans(M6)

#función apply a matrices
#MARGIN = 1 aplica a filas
#MARGIN = 2 aplica a columnas
#MARGIN = (1, 2) aplica a filas y columnas
apply(M6, MARGIN = 1, FUN = function(x){sqrt(sum(x^2))})
apply(M6, MARGIN = 2, FUN = function(x){sqrt(sum(x^2))})
apply(M6, MARGIN = c(1, 2), FUN = function(x){x^2})

#Matriz transpuesta t()
t(M6)

#Multiplicación de matrices %*% (* solo, solo multiplica elemento a elemento)
M6 %*% t(M6)

#Elevar matrices, hay ue usar la función mtx.exp del paquete Biodem o %% del 
#paquete expm (en ambos casos no calcula matriz exacta, la aproxima)
library(Biodem)
M7 = rbind(c(1, 3, 5), c(4, -2, -7), c(9, 4, 0))
mtx.exp(M7, 3)

A = rbind(c(2, 0, 2), c(1, 2, 3), c(0, 1, 3))
B = rbind(c(3, 2, 1), c(1, 0, 0), c(1, 1, 1))
A * B
mtx.exp(A, 2)
mtx.exp(B, 3)

#Determinante de una matríz (cuadrada)
det(A)

#rango de una matriz (número de filas independientes)
qr(A)$rank

#calcular la inversa de una matriz invertible
solve(A)
solve(A) %*% A #matriz identidad

#solve también sirve para resolver sistemas de ecuaciones (Ax = b)
solve(A, c(1, 5, -2))

#valores y vectores propios de una matríz (entrega una lista)
eigen(A)

C = rbind(c(2, 6, -8), c(0, 6, -3), c(0, 2, 1))
P = eigen(C)$vectors
D = diag(eigen(C)$values)
P %*% D %*% solve(P) #descomposición canónica
