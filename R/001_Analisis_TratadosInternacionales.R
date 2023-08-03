# Creamos una lista de países en formato emoji
paises <- c("Estados Unidos", "Canadá", "Reino Unido", "Francia", "Alemania", 
                  "España", "Italia", "Japón", "Brasil", "Australia") # 10 países

# Generamos un dataframe con 100 respuestas aleatorias para cada tratado por país
set.seed(243)  # Para reproducibilidad de resultados
df_tratados <- data.frame(
  Pais = rep(sample(paises, size = 10, replace = FALSE), each = 100), # Colocamos FALSE para tener 100 muestras por cada país
  TCI = sample(c("A favor", "En contra", "Neutral"), size = 1000, replace = TRUE),
  TDH = sample(c("A favor", "En contra", "Neutral"), size = 1000, replace = TRUE),
  TMA = sample(c("A favor", "En contra", "Neutral"), size = 1000, replace = TRUE)
)
df_tratados
# Tratado de Comercio Internacional (TCI)
# Tratado de Derechos Humanos (TDH)
# Tratado Medioambiental (TMA)

# Generamos una tabla dado que son valores cualitativos


# Derechos humanos
tabla_tratados_dh <- table(df_tratados$Pais, df_tratados$TDH) # Tabla de 2 dimensiones
tabla_tratados_dh
round(prop.table(tabla_tratados_dh, margin = 2)*100, 2)
round(prop.table(tabla_tratados_dh,)*100, 2)

# -- Ver el porcentaje de 
round(prop.table(tabla_tratados_dh, margin = 2) * 100, 2)

margin.table(tabla_tratados_dh, margin = 2)

# Comercio Internacional
tabla_tratados_ci <- table(df_tratados$Pais, df_tratados$TCI)
tabla_tratados_ci

# Para tener una mejor visualización utilizamos Crosstable
library(gmodels)
CrossTable(df_tratados$Pais, df_tratados$TCI)






