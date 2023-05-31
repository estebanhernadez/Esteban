#t tes dependiente
#esteban hernandez

setwd("C:/RepositorioGitt/D_experimental/Scripts/")

semilla <- read.csv("datossemillas.csv", header = T)



#kgsem
semilla$Kgsem <- as.factor(semilla$Kgsem)

#tiempo
semilla$Tiempo <- as.factor(semilla$Tiempo)

#graficas boxplot
boxplot(semilla$Tiempo , semilla$Kgsem)
boxplot(semilla$Tiempo, semilla$BioRama)
boxplot(semilla$Kgsem)

t.test(semilla$Kgsem - semilla$Tiempo, paired = TRUE)
