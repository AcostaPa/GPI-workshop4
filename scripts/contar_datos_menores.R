#Este código cuenta el numero de mediciones por cada poblacion de anolis que sean menores a 12
#los datos menores a 12 pueden deberse a ejemplares juveniles o errores en la medición

#Importar los datos limpios
#se usa , como separador
#se usa . como signo de decimal
anolis <- read.csv("./data/processed/Anolis_limpio.csv",sep=",", dec=".")

#Filtrar los datos para obtener las longitudes de brazos menores a 12
datos_filtrados <- anolis[anolis$Longitud_brazo < 12, ]

#Contar el número de longitudes menores a 12 por cada población
conteo_filtrado <- table(datos_filtrados$Poblacion)

#Imprimir los resultados por separado para cada población
print(paste("Cantidad de longitudes menores a 12 para Anolis_1:", conteo_filtrado["Anolis_1"]))
print(paste("Cantidad de longitudes menores a 12 para Anolis_2:", conteo_filtrado["Anolis_2"]))
