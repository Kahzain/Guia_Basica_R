

## COMPILADO EXTENSO GUIA


### TIPOS DE OBJETOS
# VECTOR ES EL OBJETO MÁS SIMPLE EN R

#FUNCION ls()

# tres objetos
# character
# numeric
#   integer
#   complex
# Logical [ verdadero o falso]

# NaN not a numbre
# inf  infinito

## ATRIBUTOS ENTRADA Y COERCIÓN
# DIFERENTES TIPOS NOMBRE CLASE TAMAÑO
# PARA VISUALIZAR
# attributes()

#Entrada
# x<-1 
x<-1:100

#funcion c para crear vectores de objetos
c()
vector()
# tipos {numericos logico caracteres enteros y complejos}
x<- c(1+0i, 2+4i)

# usar vector, que tipo es, el tipo de dato, y el tamaño

#mezcla de objetos
# genera una coerción
y<-c(1.7, "a")
# reglas particulares de coersion
# se generan por experiencia, por el default de consola

#COERSIÓN EPXLICITA SE GENERA PROPIAMENTE POR EL USUARIO
#FUNCION  as.
as.numeric()
as.logical()
as.character()
as.integer()


#coersionar cosas ilogicas
# NA not available

## matrices como OBJETO

#funcion matriz - matrix{ elementos, dimensiones{renglones y columnas}}

m<- matrix(1:16, nrow=2, ncol=3)

dim(m)

#ejemplo convertir un vector en una matriz
m<-1:10
m
dim(m)<-c(2,5)

# generar vectores
# pega vecotres a maneras de columnas

cbind()
#toma vecotres como renglones
rbind()

#reglas de precedencia

?base:Sintax

# OPERACIONES VECTORIALES
8 + 9 / 7 / 4

x<-7:10
y<-9:12
x+y
x>8
y==11
x*y
x/y

# operaciones vectoriales con matrices
x<-matrix(1:16, 4 ,4)
y<-matrix(rep(5,16),4,4)

x+y
x-y
# mult vectorial uno a uno
x*y
#mult matricial
x%*%y


# fechas y tiempos en R
# son clases especiales
# Dos tipos de datos para tiempo en R 
POSIXct
# num seg desde 1970
POSIXlt

#tiempo actual
Sys.time()
t<-Sys.time()
typeof(t)
t
cat(t, "\n")
## convertir el valor del tiempo en los diferentes formatos
as.POSIXct()
## cambia el tipo a LISTA
l<-as.POSIXct(t)
l[[1]]
l[[2]]

as.POSIXlt()
### 

##tiempo convertirlo a cadena, para guardarlo en un archivo
t<- Sys.time()
cat(t,"\n")

tiempo<-strftime(t,"%Y-%m-%d %H:%M:%S")
typeof(tiempo)
tiempo

#de una cadena de carecteres que tegan posixlt o t
mi_fecha<-c("2014-01-22 14:28:21")
typeof(mi_fecha)
my_date<-strptime(mi_fecha,"%Y-%m-%d %H:%M:%S")
my_date
typeof(my_date)
class(my_date)
## será posixlt y posixt

## al tener variables en tipo tiempo podemos hacer operaciones 

## Date
mi_fecha2<-c("1 jan 2018", "3 feb 2019", "5 jun 2020")
fechas_date<-as.Date(mi_fecha2,"%d %b %Y")
class(fechas_date)

##origin, se pasa el parametro para definir una fecha origen y 
#realizar operaciones desde ahi

cumple<-as.Date(0, origin="1977-12-25")
hoy<-Sys.Date()
hoy - cumple


### Funcion format
## nos regresa exactamente los caracteres en un formato especidfico que queramos
now<-Sys.time()
now
format(now,"%H:%M")

## comparacion y creacion de fechas
diff<-as.difftime("00:20:00", "%H:%M:%S", units = "hour")
ahora<-Sys.time()
alrato<-now+diff
ahora
alrato
ahora<alrato


#listas, factores, valores faltantes y dataframes

##Listas
#vectores, distintos tipos de datos.
## recibe elementos
x<-list(1,"a",TRUE, 1+8i)
x

## factores
#datos categoricos, ordenados y no ordenados
y<-factor(c("yes","yes","no"))
y
table(y)
unclass(y)

#establecer orden de niveles
xc<-factor(c("si","no","no"),
           level=c("si","no"))
xc
## level es un vector en el orden en que ira
## primero va si y luego no


#valores faltantes
#NA
#NaN
is.na()
is.nan()

#DATAFRAMES
# es una lista muy particular
#cada elementeo  de la lista tiene el mismo taaño
#la longitud es el numero de renglos que tiene

# hay diferencia entre dataframes y matrices

row.names()
colnames()
data.frame()
read.csv()
read.table()
## convertir una matriz en una data frame

df<-data.frame(columna1=1:4, columna2=c(T,T,T,F))
df
nrow(df)
ncol(df)
## num de col y de filas

## poner nombre a objetos
x<-11:14
names(x)
names(x)<-c("once", "doce","trece","catorce")
x

mivab<-list(3,5,7)
names(mivab)<-c("uno", "dos","tres")
mivab


#nombre a matrices
m<-matrix(1:4,nrow = 2,ncol = 2)
dimnames(m)<-list(c("a", "b"),c("h","i"))
m


ls()
rm(list = ls())
ls()




mi_variable<-(180/6)-15
3
mi_variable
y <- c(561, 1105, 1729, 2465, 2821)
print(y)
vect<-c(1:100)
1:100
c(1.1, 2.2, 3.3, 4.4) - c(1, 1, 1, 1)

c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10) - c(1, 2)
ls()

"¡Hola Mundo!"
colores<-c("rojo", "azul", "verde", "azul", "rojo")
colores
complejo<-2+1i
mi_variable == 15

length(complejo) <- 3
complejo

2^1024
0/0

fecha_primer_curso_R <- Sys.Date()
fecha_primer_curso_R

vector("numeric", length = 10)

vector("character", length = 10) 
2
vector("logical", length = 10) 
list(0,"Hola", TRUE)

c(T, 19, 1+3i)

vector("numeric")->c
c <- vector("numeric", length=5)
c
as.logical(c)
class(c)
class(as.logical(c))

m <- matrix(data=1:12,nrow=4,ncol=3)

m
factor(colores)
data.frame(llave=y, color=colores)
ast<-data.frame(y, colores)
ast
mi_variable<-(180/60)-15
mi_variable



####### Subconjunto
## matrices listas dataframes
#para tomar
[] ## extrar elementos de una misma clase
[[]]  ## lista o dataframe|| no necesariamiente es un data frame
$ #extrae elementos de un data frame
        
        x<-c("a","b","c","d","c","a")
x[3]
x[1:5]
x[x>"c"]
index <-x>"a"
index
x[index]

##subsetting matrices
matrix[x,y ]
matrix[ ,y]
matrix[x, ]

mx<-matrix(1:10, 2 ,5 )
mx
mx[1,3] ## el SUBSET SERA UN VECTOR
#PARA UN SUBSET EXTRAIDO DE MATRIZ CON CALIDAD DE MATRIX  SERA
mx[1,3, drop=FALSE]


## subsetting de listas
lista[]
lista[[]] # puede ser usado con indices computados
lista$name   #solo puede ser usado con nombres literarios

li<-list(hola=1:10, hola2=0.005)
li
li[1]
li[2]
li[[1]]
li$hola
li[["hola2"]]
li["hola2"]
li_vect<-list(hola1=2:7, hol22=0.90, hola33="puente")
li_vect[c(1,3)]

# lista[[]]
## generamos un indice o variable
name<-"hola33"

li_vect[[name]]
li_vect$hola33

## subsetting de elementos anidados de una lista
x<-list(b=list(10,11,12),b=c(9.8,2.33))
x[[c(1,3)]]
x[[1]][[3]]
x[[c(2,1)]]


### encontrar balores faltantes NA
x<-c(123,45,NA,34,NA,NA,2)
faltantes<-is.na(x)
faltantes
x[!faltantes]
x

## eliminar reglosnes con NA
complete.cases()




mi_vector<-11:30
mi_vector
x[s]
mi_vector[3]
mi_vector[1:5]
mi_vector[c(4,6,13)]
mi_vector[c(6,13,4)]
mi_vector[[3]]
mi_vector[-9:-15]
mi_vector[rep(c(TRUE,FALSE),10)]

mi_vector[c(FALSE,FALSE,TRUE)]
mi_vector > 20
mi_vector[(mi_vector > 20)]
## Crear areglo de dim 3x3x2
mi_arreglo <-array(c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18),dim=c(3,3,2))
mi_arreglo
mi_arreglo[1,3,2]
mi_arreglo[1:2,1:2,1]
mi_matriz<-matrix(1:9, 3,3)
mi_matriz[1,]
mi_matriz[,1]
mi_matriz[2:3,]
mi_matriz[c(1,3),]
carro <- list(color="rojo", nllantas=4, marca= "Renault", ncilindros=4)
carro$color
carro[c("ncilindros","nllantas")]
carro[["marca"]]
carro[["mar",exact=FALSE]]
camioneta <- list(color="azul", nllantas=4, marca=
                          "BMW", ncilindros=6)
cochera<-list(carro,camioneta)
cochera
cochera[[c(2, 1)]] 
cars
cars$speed

cars$dist>100
cars$speed[cars$dist>100] 



######### LEER Y ESCRIBIR DATOS

##HAREMOS REFERENCIA A DATOS TABULARES
### FUNCIONES PARA LEER DATOS
read.table
read.csv()
readline()
source()
dget
load
unserialize()

### FUNCIONES PARA ESCRIBIR DATOS
write.table()
writeLines()
dump()
dput
save
serialize()

## enfoque write.table

## read.table ## parametros mas importantes
file
header
sep
colClasses
nrows
comment.char
skip
stringsAsFactors


#sugerencia
comment.char=""

## usar 
col.Classes

inicial<-read.table("datos.txt", nrows = 100)
clases<-sapply(inicial, class)
clases
datos<-read.table("datos.txt",colClasses = clases)

#usar nrows


### ESCRIBIR DATOS
write.table
x<-"cadena"
y<-data.frame(a=2,b="otra")
dump(c("x","y"),file="datos.R")
rm(x,y)
source("datos.R")



###### PROGRAMACION
##ESTRUCTURAS DE CONTROL
# PERMITE CONTROLAR EL FLUJO DE EJECUCION
# ESTRUCTURAS:
# -CONDICIONALES { IF ELSE }
# - BUCLE DE REPETICIÓN { FOR}
# - BUCLE DE CONDICION { WHILE}
# - BUCLE INFINITO {REPEAT}
# - ROMPER BUCLE {BREAK}
# - SALTARSE UN BUCLE { NEXT}


## LA PRIMERA SERÁ IF
## CONDICIONAL
#ejemplo:
# if( condicion ){
# operaciones
## } else if ( condicion 2){
## otras operaciones
# } else{
# otra operacion seria la tercera operacion
# }

## demostracion
r<- 4
if (r==4){
        x<-1
}else {
        x<-3
        y<-4
}
x
y
r


r<- 3
if (r==4){
        x<-1
}else {
        x<-3
        y<-4
}

r
x
y

bandera <- TRUE

if(bandera == T){
        print("R")
} else if(bandera == TRUE){
        print("RStudio")
} else {
        print("Coursera")
}

## for
for (i in 1:10){
        print(i)
}

## repeteciones
for (generador de  rango){
        #operaciones
        
}

mis_letras<-c("a", "b", "c ","d")
for (letras in mis_letras){
        print(letras)
}


## secuencia de todo el vector
for(i in seq_along(mis_letras)){
        print(mis_letras[i])
}


for(i in 1:length(mis_letras)){
        print(mis_letras[i])
}


## vectores de numeros Es el rango para los FOR
x<-seq(from=1, to=100, by =0.5)
for (i in x){
        print(i)
        
}


#bucles anidados
## para recorrer todos los elementos de un dato frame
x<- matrix(seq(1,18, 2),3,3)

for (i in seq_len(nrow(x))){
        for (j in seq_len(ncol(x))){
                print(x[i,j])
        }
}

## los elementos de una matriz se llenan de izquierda a derecha y de arriba abajo

var <- 0
for(i in 1:10){
        for(j in 1:5){
                var <- var + j
        }
}


## en el for se sabe a priori cuantos pasos se llevan acabo
## se sabe el tamaño del vector en donde se generan los rangos

#bucle  while -- mientras se cumpla la condicion se genera el bucle

contador<-0
while(contador<10){
        print(contador)
        contador<-contador+2
}


#while puede tener mas de una condicion
## se juntan con 10
a<-5
while(a>=3  && a <=10){
        print(a)
        moneda<-rbinom(1,1,0.5)
        
        if (moneda==1){
                a<- a+1
        }else{
                a<-a-1
        }
}


i <- 0
while(i < 3){
        print("R")
        i <- i + 1
}



## Repeat y break
#repeat entra al bucle
# revisa si la condicion se cumple, y se ejecuta en dicho caso

# break rompe el bucle para continuar con el flujo
#se puede generar un bucle infinito  debido a no cumplirse la condicion

repeat{
        ##operaciones
        if (condicion1){
                #operaciones
        }
        else{
                break 
        }
}


## next
#saltar un bucle

for(iterador){
        if(condicion){
                #se salta si
                #cumple la condicion
                next
                
        }
        #operaciones
}


#ejemplo
for (i in 1:100){
        if (i<20){
                next
        }
        print(i)
}

#if while for
##{ son estructuras de control para controlar el flujo de un programa}
## utilizar las estructuras es complicado
## se recomienda usar la familia apply

## funciones
#son bloques de construcccion de analisis o programas mas complejos
# se guardan como formato R
function()
        nombre_de_la_funcion<-function(argumentos){
                ## operaciones de la funcion
                
        }




#el valor que genera una funcion es la ultima sentencia en el cuerpo de la funcion
#pueden ser argumentos de otras funciones

#pueden ser anidades

#### argumentos de funciones

#pueden tener valores por omision


##argumentos formales
# SE INCLUYEN EN LA DEFINICION DE LA FUNCION
#SE CONSULTAN CON 
####
###FORMALS(NOMBRE DE LA FUNCION)

#LOS ARGUMENTOS EN R PUEDEN SER 
#COINCIDENTES
# { POCICION O NOMBRE}

#PERO NO TODOS


#NO CAMBIAR ORDEN




## TIPO DE ARGUMENTOS COINCIDENTES
#COINCIDENCIA EXACTA
#COINCIDENCIA PARCIAL 
#COINCIDENCIA POR POSICION

monedas<-rbinom(100,1,0.5)
monedas
mean(monedas)
mean (x=monedas)
mean (x=monedas, na.rm = FALSE)
mean (na.rm=FALSE, x=monedas)
mean(na.rm=FALSE,monedas)


##evaluacion floja
#evallua argumentos de funcion en r
# Hasta solicitarlo
mi_funcion<-function(x,y){
        x+1
}
mi_funcion (4)

#no evaluo a Y debido a que no se solicito 

#argumento "..."
#si se pasara a otras funciones
#funciones genericas
#

mi_graficador<-function(x,y, type="l",...){
        plot(x,t, type=type,...)
}
mi_graficador(x)

#argumentos 
args(paste)
paste("hola","wewr0","q ase",se="")  
# posterior se nombra argumentos explicitamente





############3
# CREAR FUNCION
# FACILITA ANALISIS

#ESPECIFICAR LA FUNCION E INTERACCION

mi_funcion<- function(x,y,operacion="suma"){
        if (operacion=="suma"){
                return(x+y)
        }
        if(operacion=="resta"){
                return(x-y)
        }
        if (operacion=="mult"){
                return(x*y)
        }
        if(operacion=="division"){
                return(x/y)
                
        }
}
mi_funcion(2,2)
mi_funcion(5,2,"resta")  
mi_funcion(6,1,"suma")

#nueva funcion
#un vector y una cota se pasara al nuevo valor
arriba_de<-function(x,limite){
        #indices de vector logico
        indices<-x>limite
        x[indices]
}
a<-1:50
arriba_de(a,25)


c(1, 03, 2016)



sucesor <- function(x) {
        x + 1
}
nombre_de_funcion(valor_1, valor_2)
submit()
sucesor(5)



diferencia_cuadrada <- function(x, y=2) {
        x^2 - y^2
}

submit()
diferencia_cuadrada(3)


numeros_por_vocales <- function(...){
        chartr("aeio", "4310", tolower(paste(...)))
}
submit()
numeros_por_vocales()
mean(sucesor)
mean(numeros_por_vocales)
args(mean)


operador_binario <- function(fun, a, b){
        fun(a , b )
}

submit()

operador_binario(`%/%`, 7, 3)

## guia para el estilo de codigo
# PARA REVISAR CONDIGO

#ESTANDARES MINIMOS

#GUARDAR TEXTO EN ASCII
#CODIFICACION  UTF-8
#IDENTANDO

# GOOGLE'R STYLE GUIDE
# https://google.github.io/styleguide/Rguide.xml


## reglas de alcance
#alcance lexico
#como asocia un valor con una variable libre de una funcion

funcion1<-function(x,y){
        x+y+z
}

#como asignar un simbolo
lm<-function(x){x^2}
lm(4)        





z <- 1

suma <- function(x, y){
        z <- x + y
}

suma(1,2)

print(z)
#

############### 
#   PROGRAMACIÓN AVANZADA Y SISTEMAS DE GRÁFICOS
# FUNCIONES *APPLY : APLLY

# Familia de funciones vectorizadas
# 
#funciones vectorizadas

# permite que no necesitamos usar bucles de forma implicita
# La funcion más básica es la Apply()
# opera sobre rebanadas de dataframes


## 3 tipos de funciones q entran como argumento

#1.-  funciones de agregacion
#{suma, media}{sum, mean}
#2.- funciones de transformacion
# extraccion de conjuntos
#3.-  funciones vectorizadas, listas matrices
#complejidad grande


## 3 funciones más importantes de la familia apply
#{apply, sapply, lapply}
##algunas variantes son {vapply, mapply, rapply, tapply}
#tres parametros imp
x #vector o arreglo
margin #{1 es renglones} {2 es columnas} {c(1,2)}
FUN {funcion}


#funcion set.seed

set.seed(100)
X<-matrix(rnorm(30), nrow=5, ncol=6)
apply(X,2,sum)
sum(X[,2])

## funciones apply:lapply/sapply
lapply()
# para aplicar la funcion en una lista
A<-matrix(1:9,3,3)
B<-matrix(4:15,4,3)
C<-matrix(8:10,3,2)
mi_lista<-list(A,B,C)

#extraer la segunda columna de cada una de la lista
lapply(mi_lista, "[",,2)
### el operador ahora es funcion, por eso esta entre comillas
# al ser todos los renglones esta vacio

lapply(mi_lista, "[",1,)



#trata de simplificar la salida
sapply()
#intenta regresar un vector 
lapply(mi_lista, "[",2,1)

sapply(mi_lista, "[",2,1)

###########
#mapply/red
#multivariate
#vectoriza argumentos para una funcion que no acepta vectorec como argumentos

rep()
## generar un vector con las repeticiones
# recive 2 vectores
#{ el primero se repite, y el segundo nos dice cuanto se va a repetir }
#generar vector con las repeticiones de un vector

s<-c(1,4,8)
S<-rep(s, c(3,1,6))
S

## SUPONGAMOS CREAR UNA MATRIZ CON VALORES RESPETIDOS
Q<-matrix(c(rep(1,4),rep(2,4,),rep(3,4), rep(4,4)),4,4)
Q
#alternativamente  SE USA MAPPLY
mapply(rep,1:4,4)
#Regresa una lista
mapply(rep,1:4,4:1)

help("apply")

mi_matriz <- matrix(data=1:16,nrow=4, ncol=4)
mi_matriz

apply(X=mi_matriz, MARGIN = 2, FUN = min)

apply(X=mi_matriz, MARGIN = 1, FUN = min)
mi_lista<-list("Introducción", "a", "la", "Programación", "Estadística", "con", "R")
mi_lista
help("lapply")
lapply


# PARA VER LOS ARGUMENTOS DE UNA FUNCIÓN --> formals() args()

formals(lapply)
mayusculas<-lapply(mi_lista, toupper)
mayusculas


#########3 
#graficacion con el sistema base de graficos
#alto y bajo nivel (elemento a elemnento)
## Grafico de alto nive, ej de dispersión
plot()
#es una funcion generica
plot(c(1,2,3), c(4,5,5))
#puede cambiar el caracter con pch
plot(c(1,2,3), c(4,5,5), pch="X")

## graficar por etapas
#se le dará entrada por entrada el rango y dominio

plot(c(1,3),c(1,8), type="n", xlab="x", ylab="y")
x<-c(1,2,3)
y<-c(1,2,8)
points(x,y)
mi_linea<- lm(y ~ x)
abline(mi_linea)
class(mi_linea)

mi_linea
## graficar lineas por el MERO GUSTO
lines(c(1,3),c(2,3),col="green")
## si en vez de punto por punto usamos un dataframe

##archivo IRIS en R por siempre
plot(iris)

## así unicamente nos grafica ese conjunto de datos
plot(iris$Sepal.Length, iris$Sepal.Width)

##guardar archivo con cadena de nombre
pdf("miarchivo.pdf")
png("archivo.png")
jpeg("archivo.jpeg")
postscript("archivo.ps")


#########
#########################
###Graficas de alto nivel

datos<-iris$Sepal.Width
h<-hist(datos,breaks = 10,col="red")
xfit<-seq(min(datos), max(datos), length=40)
yfit<-dnorm(xfit,mean=mean(datos),sd=sd(datos))
yfit<-yfit*diff(h$mids[1:2])*length(datos)
lines(xfit, yfit, col="blue",lwd=2)


##funcion de densidad por KERNEL
density(datos)
plot(density(datos))

#### graficas de puntos
## nombre y valores
dotchart()

mtcars$mpg
row.names(mtcars)
dotchart(mtcars$mpg, labels=row.names(mtcars))

## funcion boxplot

##genera una sintesis
tail(mtcars)
boxplot(mpg~cyl,data=mtcars)

#####las funciones de bajo nivel añaden descripcion
# en las funciones de alto nivel 
# en cuanto a grafico

plot(1:5)
plot(c(1,2,3,), c(4,5,6))
plot(c(1, 2, 3), c(4, 5, 6))


?plot

# type sirve para especificar qué tipo de gráfica debe trazar. Los
| valores que puede tomar son: "p" para puntos, "l" para líneas, "b"
| para ambas (líneas y punto), "c" para la parte de líneas que se
| muestra usando "b", "o" para ambas (líneas y puntos) 'sobrepuestas',
| "h" para 'histograma' como líneas verticales (o 'alta densidad'), "s"
| para escalonado, "S" para otro tipo de escalonamiento y "n" para no
| graficar.

plot(c(1, 2, 3), c(4, 5, 6), type="l")
plot(6:10, type = "S")

plot(1:10,type = "b")
plot(1:5,main="Mi gráfica", xlab = "x", ylab = "y")
points(c(1,5),c(4,2), col="green")

# bg sirve para el color de rrelleno de los puntos

lines(c(1, 4),c(2, 5), col="yellow") 
abline(h=3,col="red",lty=2)

abline(h=1:5,v=1:5, col="purple")
## con la funcion grid es mas facil graficar completamente la cuadricula



data("iris")
class(iris)

head(iris)
plot(iris)
plot(iris$Petal.Length, iris$Petal.Width)
hist(iris$Petal.Length, col="red")


hist(iris$Petal.Length, col="red", freq=FALSE)
hist(iris$Petal.Length, col="red", breaks=5)
?boxplot

boxplot(Sepal.Width ~ Species, data=iris, col=2:4)


pie(c(50, 50, 50), labels=levels(iris$Species))

#######
#  Parametros en el sistema grafico
# {fuentes, coloeres, ejes y titulos}
# se usa funcion par()
par(nombre_de_la_opcion=valor,nombre_de_la_opcion=valor,.... )

par()
param_orig<-par()
par(col.lab="red")
hist(mtcars$mpg)



## otra forma de cambiar el color de la etiqueta
hist(mtcars$mpg, col.lab="red")

# Las funciones de alto nivel, se puede cofigurar dentro de las funciones los deiferentes parametros

## así llamamos todos los parametros guardados
par(param_orig)

## parametro: tamaño y simbolos de grafica
# opciones{
# cex - escalamiento relativo a los valores por omision
# cex.axis -- magficacion de los ejex relativos a ex
#cex.lab -- tamaño etiqueta
#cex.man -- titulo
#cex.sub --titulos relativos a cex}

## simb grafica
#parametro pch
# 1 :25
# del 21:25 
#col= .... y bg= ...

#tambien como cadena


#opcion lineas 
# codigo 1:6
# lty= tipo de linea
# lwd= ancho de linea



####fuentes:
# {font --- texto
#font.axis--- ejes
## font.lab -- etiquetas
## font.main --- titulo
## font.sub---subtitulos
#ps--- tamaño punto
#family-- familia de fuentes [ sans, serif, mono, symbol]}
## Tambien se puede cambiar por nNORMAL, BOND O IALICA

plot(1:10, 1:10, type="n")
text(3,3,"Hola, fuente omision")
text(4,4,family="sans","Hola, fuente sans")
text(5,5,family="serif","Hola, fuente serif")
text(6,6,family="mono","Hola, fuente mono")


## margenes y tamaño de grafica
#Opciones:
#mar-- vector numerico c(abajo, izq, arriba, der)
# mai -- tamaño de margen en pulgadas

# pin--- dimension  de grafica en pulgadas{ancho y alto}
### introduciendo el comando vemos todoooooos los parametros 
par()
par_orig<-par()

par("col")
par(col="blue")
data(iris)
plot(iris)
col()
par("col")
plot(iris, col=iris$Species)

par(col=iris$Species)
par(par_orig)
names(iris)

plot(iris$Sepal.Length, 
     iris$Petal.Length, col = iris$Species,
     pch=iris$Sepal.Length) 

par(pch=15)

plot(iris$Sepal.Length, 
     iris$Petal.Length, col = iris$Species,
     pch=iris$Sepal.Length) 


plot(iris$Sepal.Length, iris$Petal.Length,
     col = iris$Species)

plot(iris$Sepal.Length, iris$Petal.Length,
     col = iris$Species,
     pch="A") 
plot(iris$Sepal.Length, iris$Petal.Length, 
     col = iris$Species) 



##### para visualizar todo tipo de simboos
plot(1:26, pch=0:25)

plot(iris$Sepal.Length,iris$Petal.Length,
     col = iris$Species, pch = 21, bg = "blue") 

plot(iris$Sepal.Length, 
     iris$Petal.Length, 
     col =iris$Species, cex = 2)

legend(x = 4.5, y = 7, 
       legend = levels(iris$Species), 
       col = c(1:3), pch = 16)


par(par_orig)



##  colores en el sistema grafico
## TRES FORMAS col()
#indice, nombre, valor exadecimal

## regresa colores continuos
# n vector
rainbow(n)

heat.colors(n)
topo.colors(n)
cm.colors(n)

terrain.colors()



## grep como funcion usa un argumento "pattern"
## lee el argumento x (vector de caracteres), y regresa coincidencias

grep("yellow", colors(), value = TRUE)
dim(colors)
length(colors())

### para usar compoentens RGB se usa cadena de forma
## "RRGGBB" , variables exadecimales, (rojo, verde, azul)


palette()

plot(1:8, col=1:8, main="Colores por índice", pch=17, cex=3)


plot(1:12, col=1:12, main="Colores reciclados", pch=18, cex=3)

paleta_arcoiris <- rainbow(10)
paleta_arcoiris
palette(paleta_arcoiris)
paleta_arcoiris


palette()

plot(1:10, col=1:10, main="Paleta Arcoiris",pch=17, cex=3)



paleta_calida <- heat.colors(10)
palette(paleta_calida)

plot(1:10, col=1:10, main="Paleta Cálida",pch=17, cex=3)
mi_paleta<-c("red", "green", "#0019FFFF")
plot(1:10, col=mi_paleta, main="Mi Paleta",pch=17, cex=3)
palette(mi_paleta)

plot(1:10,col=1:10, main="Mi Paleta",pch=17, cex=3)



palette("default")

### otras funciones:
# { rgb(), hsv(), hcl(), gray()}



######### graficacion con notacion matematica

# genera simbolos con funcion:
expression()

#tener texto y simbulo
paste()

par(mar=c(4,4,2,0.1))


plot(rnorm(100),rnorm(100),
     xlab=expression(hat(mu)[0]),
     ylab=expression(alpha^beta),
     main=expression(paste("Gráfica",
                           alpha^beta,
                           "vs",hat(mu)[0])))

## funcion substitute
#obtener el valor de una variable en R
# para generar el titulo de una gráfica

hist(rnorm(100),
     main= substitute(
             paste(X[i],"~ N(", mu,"=",
                   m, ",", sigma^2, "=",
                   s2,")"),
             list(m= 0, s2 = 10^2)),
     ylab="Frecuencia",
     xlab="Valores normales")


### funcin text() dibuja cadenas sobre gradicas
plot(1:20,type="n")
text(5,5,"¡Hola Mundo!")
?text
text(11, 11, "¡Hola Mundo! x2", cex=2)
text(7, 7, "¡Hola Mundo con Serif!", family="serif")
text(9, 9, "¡Hola Mundo con Mono!", family="mono")
text(13, 13, "¡Hola Mundo con Sans!", family="sans")
demo(plotmath)


plot(1:10, type="n", main=expression(alpha + beta))
plot(1:10, type="n", 
     xlab = expression(paste("Valores de ", x^phi1)))

?plotmath
t<-10
plot(1:t, main=substitute(
        paste("La gráfica del vector 1:", x), list(x=t)))
t<-20
plot(1:t, main=substitute(
        paste("La gráfica del vector 1:", x), list(x=t)))
?substitute




######### Graficas en 3D

install.packages("rgl")
library(rgl)
## funcion plot3d()
x<-sort(rnorm(1000))
y<-rnorm(1000)
z<-rnorm(1000)+atan2(x,y)
##  utilizamos la funcion open3d()
##Para poder pintar los puntos
open3d()

plot3d(x,y,z, col=rainbow(1000), type="l")

## se puede usar otros tipos como lineas o esferas

data(iris)
head(iris)

x<-iris$Sepal.Length
y<-iris$Petal.Length
z<-iris$Sepal.Width

?rgl

## interfaz superior 
###r3d

open3d()

plot3d(iris$Sepal.Length, iris$Petal.Length, iris$Sepal.Width)

plot3d(iris$Sepal.Length, iris$Petal.Length,
       iris$Sepal.Width, type="s")
## los tipos en grafico 3D son
# p, s , l , h (z) , n 



plot3d(iris$Sepal.Length, 
       iris$Petal.Length, iris$Sepal.Width, type="s",
       col=rainbow(150))


plot3d(iris$Sepal.Length, iris$Petal.Length, iris$Sepal.Width,
       type="s", col=as.integer(iris$Species))
## lo que se hizo es usar los colores pero de forma entera, no como
# colores en forma de texto



##para cambiar el tamaño de los elementos se usa 
#######radius
plot3d(iris$Sepal.Length, iris$Petal.Length, iris$Sepal.Width,
       type="s", col=as.integer(iris$Species), radius=1.5)

### para cambiar el tamaño se usa
## lwd= 
# size=

plot3d(iris$Sepal.Length, iris$Petal.Length, iris$Sepal.Width,
       type="l", col=as.integer(iris$Species),
       xlab ="Sepal.Length",
       ylab ="Petal.Length", 
       zlab = "Sepal.Width")

## para mas opciones
?plot3d

########## 
##expresiones regulares

## cadenaas de caracteres y otros tipos
# funciones para manipular cadenas 

##expresiones regulares  ->utilizar las funciones

#grep(patron,x )
# nos da el indice donde se encuentra el patron, dentro de X

grep("hola",c("mundo","hola","grep"))


grep("Hola",c("mundo","hola","grep"))


#nchar-> nos menciona el tamaño de cada elemento
nchar("ESTO ES UNA CADENA")
nchar(c("mundo","hola","grep"))
#LONGITUD


## paste() CONCATENA CADENAS
paste("Esta", "es", "una cadena")

## podemos separar asi
paste("Esta", "es", "una cadena", sep="-")

#sprintf()  ensambla una cadena  y genera una nueva

i<-9
sprintf("El cuadrado de %d es %d",i,i^2)
## se utiliza %d para mencionar tipo decimal



# substring(x, inicio, termino) , extrae una subcadena
substring("Rstudio es muy util",3,5)
## es como EXTRAE DE EXCEL :V


#strsplit(x, cadena divisoria )   pues subdivide en subcadenas
strsplit("Esta-es-una-cadena", "-")


#regexpr(patron, texto o cadena)  
## encuentra la posicion del caracter de la primera isntancia

#gregexpr() 
## muestra el indice de la pocicion de cadena

## EXPRESIONES REGULARES
# PATRONES O COMODIN PARA REFERIRSE A VARIAS CADENAS
# [bv]    se refiere a cualquier cadena q contenga b o v


# regexpr  <- secuencia de caracteres q define una busqueda de un patron
## para coincidencia ed patrones con caracteres

regexpr("[aeiou]", "aSeDiFoGNNNNDSuAF")

gregexpr("[aeiou]", "aSeDiFoGNNNNDSuAF")


grep("a.i", c("imaginarios","estudio","imantado"))

grep(".",c("asfac", "de", "h.h"))
## Para localizar un punto necesitas escapar el caracter 
## entonces usas  \ pero  al ser un caracter especial 
## usas doble \ para que la escape a la barra y la barra escape al punto
## puesto que un punto puede "señalarse como un salto"
grep("\\.",c("asfac", "de", "h.h"))

## así la expresion rregular es
## LA BUSQUEDA DE UN "." EXACTAMENTE
texto<-"¡Hola Mundo!"
texto[1]
texto[2]
?substring
substring(texto, 7,11)

substring(texto, 7, 11) <- "Swirl"
texto

# conocer longitud no se puede por length()
nchar(texto)

paste("¡Adiós", "Mundo!")
paste("¡Adiós", "Mundo!", sep="_")
i<-9

sprintf("El cuadrado de %d es %d", i, i^2)
?sprintf

#contrario a paste
strsplit("Me/gusta/programar/en/R", "/")

chartr("o", "a", "¡Hola Mundo!")
##CON ELLO CAMBIAS TEXTO


| Por ejemplo, el grupo formado por las cadenas "Handel", "Händel" y
| "Haendel" se describe mediante el patrón "H(a|ä|ae)ndel"

patron<-"H(a|ä|ae)ndel"

musicos
grep(patron, musicos)

### "|" expresa OR 
nuevo_patron <- ".(a|ä|ae|e)ndel"
grep(nuevo_patron, musicos)

regexpr(patron, musicos) 

gregexpr(patron,
         "Georg Friedrich Händel, en inglés George Frideric Handel fue un compositor alemán.")
?regexpr


####  GRAFICACION CON ggplot2
#graficos de alto nivel
## funciona basado en capas
#funcion 
# qplot()
## podemos mapear atributos, colores, tamaño y forma


## data set que viene con el paquete diamonds
# medidas, calidad y precio

install.packages("ggplot2")
library(ggplot2)

## base  de datos de paqueteria ggplot2
tail(diamonds)

#muestra
set.seed(100)
dchico<-diamonds[sample(nrow(diamonds), 100),]
qplot(carat, price, data=diamonds)

## para quitar todo eso engorroso se puede hacer
#una transformacion logaritmica
qplot(log(carat),log(price),data=diamonds)
## aun hay sobregrficacion

qplot(carat, x*y*z, data=diamonds)


#atributos esteticos
#color
qplot(carat, price, data=dchico, color=color)


#atributo shape
#shape-forma
#caract categoricas a una grafica
qplot(carat, price, data=dchico, shape=cut)


## atributo alpha
# cuantos puntos deben de aparecer para saber si un punto sea opaco
qplot(carat, price, data=diamonds)

qplot(carat, price, data=diamonds, alpha=I(1/100))

#atributo size
# sirve para  
qplot(carat, price, data=diamonds, size=table)


#CONSIDERACIONES ESTETICAS
#color y forma (shape) --- son mejores en varibles categoricas
## tamaño (size)-- variables continuas 


#se puede subdividir por faceting  
# contrario a solo usar alpha
# crea una tabla para subidividir grupos
qplot(carat, price, data=diamonds, facets=color~.)
## comparación visual inmediata


#geoms
# geometric objects
# descripcion de objetos para graficar
#en qplot tenemos
geom="point"
geom="smooth"


qplot(carat, price, data=dchico, geom=c("point", "smooth"))
## también dibuja el error estandar
#en SMOOTH
# se puede especifica el tipo de ajuste que se quiere para la curva
# puede ser: regresion lineal, o SPLICE ( podemos revisar que son)


#########################################
## REVISAR SLICED INVERSE REGRESSION ###
########################################

#OTROS GEOMS
#geom= "jitter" y "boxplot"


#jitter permite analizar en cajas como se dispersan en puntos

qplot(color, price/carat, data=diamonds, geom="jitter")

# boxplot es grafico de cajas
qplot(color, price/carat, data=diamonds, geom="boxplot")
# se divide por las categorias que se quiera observar

#OTROS GEOMS
#line--linea entre dos puntos, (de izquierda a derecha) 
#se usa para grafcar series de tiempo
qplot(dat, uempmed, data=economics, geom="line")

#path--- tomar direccion de cualquier lado

# se puede genera graficas en una sola dimensiones
# para ver distribuciones de variables

#geom="histogram"
#polinomio de frecuencia
#geom="freqpoly"
#grafica suave de la densidad de datos
#geom="density"
plot(density(data)) ## es la equivalencia en sistema base

data("diamonds")
View(diamonds)

# qplot() (quick plot)

?qplot
qplot(color, data=diamonds)
qplot(carat, price, data=diamonds)

qplot(log(carat), log(price), data=diamonds)

qplot(log(carat), log(price), data=diamonds)
qplot(carat, x*y*z, data=diamonds)

qplot(carat, price, data=diamonds, color=color)

qplot(carat, price, data=diamonds, shape=cut) 

qplot(carat, price, data=diamonds,alpha=I(1/10))


qplot(carat, price, data=diamonds,alpha=I(1/100))

qplot(carat, price, data=diamonds, size=table)

qplot(carat, price, data=diamonds, facets = color ~ .)

qplot(carat, price, data=diamonds, geom= c("point", "smooth"))

qplot(color, price/carat, data=diamonds, geom = "jitter")

qplot(color, price/carat, data=diamonds, geom = "boxplot")



##### funciones matematicas  utilitarias ###

#funciones matematicas

#exp()
#log()
#log10()
#sqrt()
#abs()
#sin()
#cos()
#tan()
#min()
#max()

#devuelven el indice
#wich.min()
#wich.max()

## varios vectores 
#pmin()
#pmax()

#sum()

#prod()

## recibe un vector y acumula la suma elemento de los elemnento del vector inicial
#cumsum()
#cumprod()

##########REDONDEOS
#round()   - del elemento más cercano numericamente
#ceiling()    .-- redondea hacia arriba
#floor()   --- redondea al entero de abajo

#factorial()


####### funciones de algebra lineal
#%*%
##crossprod()   - producto punto de los vectores

#solve()  -- resuelve ecuaciones lineales/ tambien matrices

x<-matrix(c(1,-1,1 ,1 ),2,2)
y<-c(2,4)
solve(x,y)
solve(x)  ## nos da la matriz inversa de X

solve(x) %*% x
#t() transpuesta de una matriz

#qr() Descomposición QR
#chol()  cholesky
# det()  determinantes de matrices
#eigen()   eigen vectores
#diag() diagonal

diag(2)

#sweep()  operaciones de barridos sobre matrices
b<-diag(3)
sweep(b,1,c(1,2,3),"+")


## funciones utilitarias
#sort()   ordena un serie de datos
#por omision esta de menor a mayor

# choose(n,k)
#posible numero de conjuntos de tamaño k de un conjunto n

## operaciones con conjuntos
#union(x,y)
#intersect(x,y)
#setdiff(x,y)  --- diferencia

#setequal(x,y)   UN VALOR LOGICO, VERDADERO O FALSO SI LOS VECTORES SON IGUALES
# c %in% x  --- no dice si el elemento c pertenece a x

## funciones de distribuciones estadistica
# se usan con prefijos y luego una funcion
# r  --- numeros aleatorios generacion
# p ----funcion acumulada
# d ----funcion de densidad o probabilidad de masa
# q---- cuantiles

## ejemplos
#{rdbeta, dbinom, dcauchy, dchisq, dexp, df, dgamma, dgeom ...}

set.seed(10)
mean(rnorm(1000, 0,1))

qnorm(0.5,0,1) 
qnorm(0.95,0,1) ## prb acumulada
qnorm(1,0,1)
qnorm(0,0,1)



#########################
#### SIMULACIÓN#########
#######################

## LANZAMIENTO DE UNA MONEDA
#  VARIABLE ALEATORIA BERNOULLI
# P= PROB DE EXITO
# 1-P= PROB DE FRACASO
# n= numero de experimentos
# cuando n=1 solo un lanzamiento
#n=7 lanzamientos de la moneda
# rbinom()

set.seed(10)
#1 el numero de veces que se hara el experimento
# 7 el numero de lanzamientos
# 0.5 prob de exito
rbinom(1,7,0.5)


## sacar la proporción de exito requiere "LEY DE GRANDES NUMEROS"
rbinom(100000,7,0.5)
# se hace 100 mil veces el experimento de lanzar 7 veces una moneda
resultados<-rbinom(100000,7,0.5)
tail(resultados)
tail(resultados>=5)   ## vector de resultados es logico
mean(resultados >=5)  #proporcion de Verdaderos contra falsos
#verdadero =1
#falso=0



?Normal

## Lista completa de distribuciones
help(Distributions)

?rbinom
rbinom(1,7,0.5)
resultado<-rbinom(100000,7,0.5)
tail(resultado)
tail(resultado>5)
mean(resultado>5)

### En caso de replicar los resultdos 
# debido a que son generacion aleatorias
# se puede establece un punto de incio 
# en la generacion de datos aleatorios
# mediante la funcion: set.seed()

?set.seed

# con esta funcion generaras la misma semilla antes de los
# numeros aleatorios, haciendo que se repitan esos numeros
# aleatorios


#########################################################################
############# DEPURACION
## PRGRAMACION AVANZADA

## APAREZCAN ERRORES EN EL CODIGO
# SE PUEDE INTENTAR UTILIZAR print()
# PARA ENCONTRAR DONDE ESTA EL ERROR

## HERRAMIENTAS Y TECNICAS PARA LOCALIZAR EL ERROR
# Y DEPURAR EL ERROR

# FLUJO PARA LLEVAR A CABO UNA DEPURACION:
# 1. DARSE CUENTA DE QUE HAY UN ERROR
# 2. REPRODUCIR EL ERROR  ## SE RECOMIENDA USAR SET.SEED()
# 3. ENCONTRAR EL ERROR EN EL CODIGO
# 4. ARREGLAR EL ERROR Y PROBAR

### CONSIDERACIONS
# CREAR FUNCIONES CON UN TAMAÑO ADECUADO

## HERRAMIENTAS EN RSTUDIO
#traceback() ## regresar pasos hasta localizar el problema
# RERUN y DEBUG  # corre el codigo paso por paso
#breakpoints()  

## debugger o depurador
## para entrar al modo es en rerun y debug {n,s,f,c,q}

## PROGRAMACION DEFENSIVA
# ESCRITURA DEL CODIGO...
# 3 MANERAS:
# 1- VERIFICAR QUE LOS PARAMETROS DE ENTRADA SEAN CORRECTOS
#       SE PUEDE USARA ifs / stop PARA PROBAR ESTO
# 2- EVITAR EVALUACION NO ESTANDAR
#       subset, transform, with
#3- EVITAR FUNCIONES QUE PUEDAN REGRESAR DIFERENTES TIPOS DE SALIDA
#      sucede cuando utilizamos
#               [ ]   y  sapply()  
#               se recomienda usar drop=FALSE
#               Tambien usar vapply() cuando se haga dentro de una función


## mandar mensajes de error tan pronto se encuentren

