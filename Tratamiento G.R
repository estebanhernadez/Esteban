#Esteban Hernandez
#25/05/2023

#Inportar datos

setwd("C:/RepositorioGitt/D_experimental/Scripts")
germ <- read.csv("plantas.csv" , header = TRUE)
germ$Trata <- as.factor(germ$Trata) 

#grafica

boxplot(germ$PG ~ germ$Trata,
        col="green",
        xlab="Trata GERMINATIVO",
        ylab="% GERMINACION")

#ordenar los tratamientos

levels(germ$Trata)

germ$Trata <- factor(germ$Trata, levels = c("Control","EM","RA","AGC","H2SO4"))
levels(germ$Trata)

tapply(germ$PG, germ$Trata, mean)
tapply(germ$PG, germ$Trata, var)

#anova

germ.aov <- aov(germ$PG ~ germ$Trata)
summary(germ.aov)

#prueba de tuki

TukeyHSD(germ.aov, conf.level = 0.95)

##entre EM- ctrl diferencia de 4% y SI hay dif
##entre RA- ctrl diferencia de 5% y SI hay dif
##entre AGC- ctrl diferencia de 3% y SI hay dif

plot(TukeyHSD(germ.aov), las =1, col="green")

#agreggar letra de diferencias

boxplot(germ$PG ~ germ$Trata,
        col="green",
        xlab="Trata GERMINATIVO",
        ylab="% GERMINACION",
        ylim=c(0,10))
text(1,4.2,"a", col="red")
text(2,8.3,"b", col="blue")
text(3,9.4,"b", col="blue")
text(4,7.4,"b", col="blue")
text(5,3.3,"a", col="red")
