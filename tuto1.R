# vectores

vectorNumerico <- c(43,43,34,34)
vectorNumerico2 <- c(1,2,3,4,55)
vectorCompuesto <- c(vectorNumerico, vectorNumerico2)
vectorCompuesto[6]
vectorCompuesto[c(2,5,6)]
vectorCompuesto[-4] # no quiero la posicion 4
vectorCompuesto[-c(1,2)]
vectorCompuesto<20
vectorCompuesto[vectorCompuesto<20]
vectorCompuesto[vectorNumerico2] # te regresa el vector2
n <- c("lupe", "jose")

a <- 1:5 # crea una secuencia del 1 al 5
b <- seq(1,10)
c <- seq(1, 5, by=0.5)
d <- seq(1,10, length=10)
e <- rep(1,5)
f <- c(3,4,5,6,7,NA) # NA = null
is.na(f)
h <- c(TRUE, FALSE)
k <- c("maria mercedes", 30, TRUE)
k

# listas -----------------------------
help("list")
familia <- list(
                padre="juan", madre="maria", numeroHijos=3, nombreHijos=c("pedro", "jesus","lupita"),
                edadesHijos=c(20,18,16),
                ciudad="gdl")

name(familia)
familia$padre
familia$numeroHijos
familia[5]

# matrices ----------------------------
matrix(1:6)
matrix(1:6, nrow = 2)
matrix(1:6, nrow = 2, by= TRUE)
matrix(1:6, nrow = 3)
m <- matrix(1:6, nrow = 3)
length(m)
mode(m)
rownames(m)
colnames(m)
is.matrix(m)
colors <- c("blanco", "negro")
is.matrix(colors)
m[] # mostrar valores
m[1,2]
m[1,]
m[,2]
cbind(m, c(0,0,0))
rbind(m, c(0,0))
nm = cbind(m, c(0,0,0)) # ponerla en la memoria
cbind(nm, c(0,0,0)) # ahora no se borran 
datos <- matrix(
            c(23, 1.69, 70, 20, 1.65, 60, 19, 1.50, 50),
            nrow = 3,
            byrow= T
            )
colnames(datos) <- c("edad", "estatura", "peso")
datos
rownames(datos) <- c("juan", "luis", "lupe")
datos
colnames(datos)
rownames(datos)
datos[,"edad"]
datos["juan",]

# arreglos ----------------------------

array(1:12, c(2,3,2))
# Vamos a crear un array con la edad media, el peso medio y la estatura media para hombres y mujeres 
# de dos poblaciones: Guadalajara y Zapopan
n <-array(c(45,46,65,55,170,167,48,49,68,56,169,165),c(2,3,2))
n
dimnames(n)<-list(c("hombres","mujeres"),c("edad","peso","altura"), c("Guadalajara","Zapopan")) 
n
# accedemos a los elementos del array
# Nombre de las dimensiones del array 
dimnames(n)
# Datos para la población "Guadalajara" 
n[,,"Guadalajara"]
# Datos de todos los hombres
n["hombres",,]
# Edades de las personas 
n[,"edad",]
# Quien me dice como podemos extraer la altura de las mujeres?
n["mujeres","altura",]


# dataframes ---------------------------
# dataframes son como filas y columnas
datos
ciudades <- c("aguas", "gdl", "df")
datosCompletos <- cbind(datos, ciudades)
datosCompletos
datos[,"edad"] *1
datosCompletos[,"edad"] *1 # da error por que edad es cadena
mode(datos)
mode(datosCompletos)
datosCompletos <- data.frame(datos, ciudades)
datosCompletos
mode(datosCompletos)
datosCompletos[,"edad"] *1
datosCompletos[1]
datosCompletos[,1]
datosCompletos["ciudades"]
attach(datosCompletos)
edad


calificationes = matrix(
  c(1,2,3, 1,2,3, 1,2,3),
  nrow = 3,
  byrow= T
)
colnames(calificationes) <- c("Mate", "Fis", "Quim")
students <- c("student1", "student2", "student3")
data <- data.frame(students, calificationes)
data







