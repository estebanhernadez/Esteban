#Esteban
#25/02/2023
# Tarea 1. Primer análisis en R

# PARTE 2. Problemas ----------------------------------------------------


# Problema 1

Pinus <- 3140
Mezquite <- 1453
Encinos <- 450
Teka <- 1200
Juiperos <- 720

superficie <- c(Pinus, Mezquite, Encinos, Teka, Juiperos) 

barplot(superficie)

sort(superficie) 

barplot(sort(superficie, decreasing = TRUE)) 

mean(superficie)

# Problema 2

cajas <- c(1:30)
germinacion <- c(4, 1, 6, 2, 4, 2, 4, 2, 4, 6, 3, 5, 3, 2, 5, 4, 0, 5, 4, 2, 4, 5, 3, 5, 3, 5, 4, 3, 6, 2) 
mean(germinacion)
??absolute
?sd
sd(germinacion, na.rm = FALSE)
# Problema 3

Prosopis <- c(1:25)
altura <- c(38, 14, 44, 11, 9, 21, 39, 28, 41, 4, 35, 24, 36, 12, 20, 31, 24, 25, 10, 21, 11, 36, 37, 20, 26)
mean(altura) 
sd(altura, na.rm = FALSE)

