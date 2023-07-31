# Creamos una lista de países en formato emoji
paises <- c("Estados Unidos", "Canadá", "Reino Unido", "Francia", "Alemania", 
                  "España", "Italia", "Japón", "Brasil", "Australia") # 10 países

# Generamos un dataframe con 100 respuestas aleatorias para cada tratado por país
set.seed(123)  # Para reproducibilidad de resultados
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

tabla_tratados <- table(df_tratados) # Tabla de 3 dimensiones
tabla_tratados

# Para tener una mejor visualización utilizamos Crosstable
library(gmodels)
CrossTable(df_tratados$Pais, df_tratados$TCI)
