# estructura de programacion

#for

for(i in 1:10) {
  print(i)
}
      
# while 

cuadrado <- 0
n <- 10
while(cuadrado <=  1000){
  n <- n + 1
  print(n) 
  cuadrado <- n * n
}

#if else
n <- 10
pares <- c()
impares <- c()

for(i in 1:n){
  if(i%%2==0)
    pares <- c(pares, i)
  else 
    impares <- c(impares, i)
}

saludo <- "hola"
print(paste(saludo, " mundo"))
cat(saludo, "mundo", sep="-----") # separador

message("hola tere")
warning("el programa esta mal")
stop("mocos se paro")

# functions

# nombre <- argumentos() {
  
# }

cuadrados <- function(x) {
  return(x * x)
}

cat("el cuadrado de 3 es ", cuadrados(3), "\n")

# cambien se puede asignar los parametros como en php function(x=5)

# hacer una function que recibira 
# un parametro numerico que me diga 
# si es par o inpar y que me diga que 
# si es impar lo imprima con un warning

imparOpar <- function(num) {
  r <- num%%2
  if(r==0)
    cat("par ", r)
  else 
    print("impar")
}

imparOpar(49)


# fucntion para calcular la edad

print(date())

calculaEdad <- function(edad) {
  
}










