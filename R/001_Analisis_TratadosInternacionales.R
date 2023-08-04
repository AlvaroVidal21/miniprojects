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

# --------------- PREGUNTA 1 ----------------------
# 1. Distribución de opiniones por país: ¿Cuál es la distribución de opiniones (A favor, En contra, Neutral) en cada país para cada tratado internacional?

# 1.1. TCI (Tratado de Comercio Internacional)
distr_opiniones_tci_byCountry <- round(prop.table(tabla_tratados_ci, margin = 2) * 100, 2) # margin 2 -> por columas (opiniones)
distr_opiniones_tci_byCountry


# 1.2. TDH (Tratado de Derechos Humanos)
distr_opiniones_tdh_byCountry <- round(prop.table(tabla_tratados_dh, margin = 2) * 100, 2)
distr_opiniones_tdh_byCountry


# 1.3. TMA (Tratado Medioambiental)
distr_opiniones_tma_byCountry <- round(prop.table(tabla_tratados_ma, margin = 2) * 100, 2)
distr_opiniones_tma_byCountry



# --------------- PREGUNTA 2 ----------------------




# --------------- PREGUNTA 3 ----------------------
# 3.1. TCI (Tratado de Comercio Internacional)
tci_afavor <- distr_opiniones_tci_byCountry[ ,1]# [fila, columa] -> [ ,1] o sea toda las filas de la columna 1 (A favor)
tci_afavor

# Ordenamos de mayor a menor
tci_afavor[order(tci_afavor, decreasing = TRUE)]
# TOP 1 de TCI
tci_afavor[order(tci_afavor, decreasing = TRUE)][1] # Canadá


# 3.2. DH (Tratado de Derechos Humanos)
tdh_afavor <- distr_opiniones_tdh_byCountry[ ,1]# [fila, columa] -> [ ,1] o sea toda las filas de la columna 1 (A favor)
tdh_afavor

# Ordenamos de mayor a menor
tdh_afavor[order(tdh_afavor, decreasing = TRUE)]

# TOP 1
tdh_afavor[order(tdh_afavor, decreasing = TRUE)][1] # Canadá


# 3.3. TMA (Tratado Medioambiental)
# Usamos la notación de corchetes para table y extramos la columna "A Favor"
tma_aFavor <- distr_opiniones_tma_byCountry[,1] # [fila, columa] -> [ ,1] o sea toda las filas de la columna 1 (A favor)
tma_aFavor

# Ordenamos de mayor a menor
tma_aFavor[order(tma_aFavor, decreasing = TRUE)]

# Dado que queremos remos el top 1 usamos:
tma_aFavor[order(tma_aFavor, decreasing = TRUE)][1] # Alemania














