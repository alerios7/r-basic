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
