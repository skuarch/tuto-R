# manejo de datos

pacientes <- read.csv("/home/skuarch/Projects/pacientes.csv", header = TRUE)

# pacientes$ciudad
# summary(pacientes)
# head(pacientes) # el inicio
# tail(pacientes) # el final
# min(pacientes$edad) # edad minima
# max(pacientes$edad)

# estadistica basica

# estatura
# media (promedio) sumar y despues division
# mediana (numero que esta en medio de la muestra o array)
# varianza (espacion entre la media)
# desviacion estandar ()
# 
# mean(pacientes$estatura) # media
# var(pacientes$estatura) # varianza
# median(pacientes$estatura) # mediana
# sd(pacientes$estatura)
# range(pacientes$estatura)

# graficar

plot(pacientes$nombre, pacientes$estatura, type = "p")
abline(h=mean(pacientes$estatura), col = "red")
positiveSD <- sd(pacientes$estatura) + mean(pacientes$estatura)
abline(h=positiveSD, col="green")
negativeSD <- mean(pacientes$estatura) - sd(pacientes$estatura)
abline(h=negativeSD, col="blue")

# remover ciudad del dataset
pacientes[-5]
write.csv(pacientes, "/home/skuarch/Projects/pacientes2.csv")


