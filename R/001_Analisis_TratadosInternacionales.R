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

# Generamos una tabla bidimensionales por cada tratado:
# Tratado de Comercio Internacional
tabla_tratados_ci <- table(df_tratados$Pais, df_tratados$TCI)
tabla_tratados_ci


# Derechos Humanos
tabla_tratados_dh <- table(df_tratados$Pais, df_tratados$TDH) 
tabla_tratados_dh


# Tratado Medioambiental
tabla_tratados_ma <- table(df_tratados$Pais, df_tratados$TMA)
tabla_tratados_ma


# --------------- preguntas ----------------------
# 1. Distribución de opiniones por país: ¿Cuál es la distribución de opiniones (A favor, En contra, Neutral) en cada país para cada tratado internacional?







