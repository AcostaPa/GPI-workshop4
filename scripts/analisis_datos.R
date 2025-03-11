#Este código analiza los los datos de Anolis
#Importa la libreria para graficar
library(ggplot2)
#importa los datos limpios
#se toma , como separador
#se toma . como signo de decimales
anolis <- read.csv("./data/processed/Anolis_limpio.csv",sep=",", dec=".")

#Crea un boxplot con Población en eje X y longitud del blazo en eje Y
ggplot(anolis, aes(x = Poblacion , y = Longitud_brazo, color= Poblacion )) +
  geom_boxplot( ) + labs(title ="Longitud del bazo de dos poblaciones de \nranas (género Anolis)",
                         y = "Longitud del brazo (cm)")
#Exporta la gráfica en un PNG
ggsave(filename = "anolis_analisis.png", path = "./results/figures")
