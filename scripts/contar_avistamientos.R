#Este código cuenta el número de avsitamientos para cada poblacion de anolis

#Importar los datos limpios
#se usa , como separador
#se usa . como signo de decimal
anolis <- read.csv("./data/processed/Anolis_limpio.csv",sep=",", dec=".")
#crear tabla de frecuencias de la columna Población
frecuencias <- table(anolis$Poblacion)

# Convertir la tabla de frecuencias en un data frame
df_frecuencias <- as.data.frame(frecuencias)

# Exportar el data frame a un archivo CSV sin nombres en las filas
write.csv(df_frecuencias, file = "./results/tables/conteo_poblacion_anolis.csv", row.names = FALSE)

#Mostrar la cantidad de avsitamientos por cada poblacion
print(paste("el número de conteos de la población 1 es ", frecuencias["Anolis_1"]))
print(paste("el número de conteos de la población 2 es ", frecuencias["Anolis_2"]))
