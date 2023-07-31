# Creamos una lista de países en formato emoji
paises_emoji <- c("🇺🇸 Estados Unidos", "🇨🇦 Canadá", "🇬🇧 Reino Unido", "🇫🇷 Francia", "🇩🇪 Alemania", 
                  "🇪🇸 España", "🇮🇹 Italia", "🇯🇵 Japón", "🇧🇷 Brasil", "🇦🇺 Australia") # 10 países

# Generamos un dataframe con 100 respuestas aleatorias para cada tratado por país
set.seed(123)  # Para reproducibilidad de resultados
df_tratados <- data.frame(
  Pais = rep(sample(paises_emoji, size = 10, replace = FALSE), each = 100), # Colocamos FALSE para tener 100 muestras por cada país
  TCI = sample(c("A favor", "En contra", "Neutral"), size = 1000, replace = TRUE),
  TDH = sample(c("A favor", "En contra", "Neutral"), size = 1000, replace = TRUE),
  TMA = sample(c("A favor", "En contra", "Neutral"), size = 1000, replace = TRUE)
)

df_tratados
