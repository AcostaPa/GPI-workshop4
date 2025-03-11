# Cargar los datos desde un archivo CSV
data <- read.csv("./data/processed/Anolis_limpio.csv")

# Resumen de los datos
summary(data)

# Verificar si las varianzas son homogéneas (prueba de Levene)
#install.packages("car")
library(car)
leveneTest(Longitud_brazo ~ Poblacion, data = data)

# Realizar un ANOVA
anova_model <- aov(Longitud_brazo ~ Poblacion, data = data)
summary(anova_model)

# Realizar una prueba post hoc (Tukey) si es necesario
TukeyHSD(anova_model)

# Visualizar los datos
boxplot(Longitud_brazo ~ Poblacion, data = data, 
        main = "Longitud del brazo por Población",
        xlab = "Población", ylab = "Longitud del brazo (cm)",
        col = c("lightblue", "lightgreen"))
