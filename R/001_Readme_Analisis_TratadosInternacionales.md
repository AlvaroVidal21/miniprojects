
# Análisis de Tratados Internacionales por países 
**Abstract:**

This mini project focuses on exploring the opinions of various countries regarding three international treaties: International Trade Treaty (TCI), Human Rights Treaty (TDH), and Environmental Treaty (TMA). A dataset consisting of 10 countries' votes on a total of 100 treaties, categorized as "In favor," "Against," or "Neutral," is analyzed. The project addresses key questions, including the distribution of opinions per country for each treaty, identification of the most frequent opinions, and determination of the countries with the highest support for each treaty. The analysis is conducted using R, and the results are presented in tables and visualizations. The findings offer insights into countries' stances on the treaties, contributing to a better understanding of international opinions on these crucial matters. The project showcases how data analysis can shed light on global perspectives and inform decision-making processes.

**Resumen**
Este mini proyecto se centra en explorar las opiniones de diferentes países con respecto a tres tratados internacionales: el Tratado de Comercio Internacional (TCI), el Tratado de Derechos Humanos (TDH) y el Tratado Medioambiental (TMA). Se analiza un conjunto de datos que incluye votos de 10 países sobre un total de 100 tratados, categorizados como "A favor," "En contra" o "Neutral". El proyecto aborda preguntas clave, como la distribución de opiniones por país para cada tratado, la identificación de las opiniones más frecuentes y la determinación de los países con mayor apoyo para cada tratado. El análisis se realiza utilizando R y los resultados se presentan en tablas y visualizaciones. Los hallazgos ofrecen información sobre las posturas de los países en relación con los tratados, contribuyendo a una mejor comprensión de las opiniones internacionales sobre estos temas cruciales. El proyecto ejemplifica cómo el análisis de datos puede arrojar luz sobre perspectivas globales y proporcionar información para procesos de toma de decisiones.

## Objetivo
El objetivo de este mini proyecto es explorar las opiniones de diferentes países con respecto a tres tratados internacionales:
- TCI (Tratado de Comercio Internacional)
- TDH (Tratado de Derechos Humanos)
- TMA (Tratado Medioambiental)
## Datos
Vemos que existe **10 países** los cuales han dado un voto a un total de **100 tratados**, estos votos pudieron ser:
- A favor,
- en contra, o
- neutral
## Preguntas
1. **Distribución de opiniones por país**: ¿Cuál es la distribución de opiniones (A favor, En contra, Neutral) en cada país para cada tratado internacional?
2. **Opiniones más frecuentes**: ¿Cuáles son las opiniones más frecuentes (A favor, En contra, Neutral) en general y para cada tratado específico?
3. **País con mayor apoyo a los tratados**: ¿Qué país muestra el mayor porcentaje de apoyo (A favor) a cada tratado?

## Resolución
### **Pregunta 1**
- [x] Pregunta 1:
**TCI (Tratado de Comercio Internacional)**
```R
                 A favor En contra Neutral
  Alemania         10.96      9.46    9.48
  Australia         9.27     11.99    8.87
  Brasil            6.74     11.04   12.54
  Canada           13.48      7.89    8.26
  Espana           10.96     11.04    7.95
  Estados Unidos   11.52      7.89   10.40
  Francia          10.67     10.73    8.56
  Italia            8.99     10.73   10.40
  Japon             9.83     10.09   10.09
  Reino Unido       7.58      9.15   13.46
```
**TDH (Tratado de Derechos Humanos)**
```R
                 A favor En contra Neutral
  Alemania         11.04      8.74   10.11
  Australia        11.34      9.39    9.27
  Brasil           12.84      9.06    8.15
  Canada           13.13      7.77    8.99
  Espana            8.36     10.03   11.52
  Estados Unidos    8.96     11.97    9.27
  Francia           8.36     10.03   11.52
  Italia           10.45     11.00    8.71
  Japon             7.76     11.65   10.67
  Reino Unido       7.76     10.36   11.80
```
**TMA (Tratado Medioambiental)**
```R
                 A favor En contra Neutral
  Alemania         12.23      9.33    8.58
  Australia         8.46      9.62   11.83
  Brasil           10.66     10.79    8.58
  Canada           11.60      9.91    8.58
  Espana           10.34     11.08    8.58
  Estados Unidos    8.15      9.62   12.13
  Francia          11.29     11.08    7.69
  Italia            9.72      9.04   11.24
  Japon             9.09      9.33   11.54
  Reino Unido       8.46     10.20   11.24
```
### **Pregunta 2**
- [x] Pregunta 2
```R
# Creamos una tabla donde solo me almacene los votos
votos_tci <- table(df_tratados$TCI)
votos_tdh <- table(df_tratados$TDH)
votos_tma <- table(df_tratados$TMA)

# Buscamos el TOP 1 de votos 
votos_tci[order(votos_tci, decreasing = TRUE)][1] # A favor: 356
votos_tdh[order(votos_tci, decreasing = TRUE)][1] # A favor: 335
votos_tma[order(votos_tci, decreasing = TRUE)][1] # A favor: 319
```
|Tratado|Resultado más votado|
|--------|------------------------|
|TCI|A favor (356 votos)|
|TDH|A favor (335 votos)|
|TMA|A favor (319 votos)|
### **Pregunta 3**
- [x] Pregunta 3
- [!] **A FAVOR**
Para esta pregunta tenemos que usar [[Notación de corchetes en table]].
Extraemos la columna "A favor" de cada tratado usando la **notación de corchetes**.
**1. TCI (Tratado de Comercio Internacional)** ➡️ **CANADA**
```R
tci_afavor <- distr_opiniones_tci_byCountry[ ,1]# [fila, columa] -> [ ,1] o sea toda las filas de la columna 1 (A favor)
tci_afavor

# Ordenamos de mayor a menor
tci_afavor[order(tci_afavor, decreasing = TRUE)]
# TOP 1 de TCI
tci_afavor[order(tci_afavor, decreasing = TRUE)][1] # Canadá
```
|País|A favor|
|---|---|
|Canadá|13.48|
|Estados Unidos|11.52|
|Alemania|10.96|
|España|10.96|
|Francia|10.67|
|Japón|9.83|
|Australia|9.27|
|Italia|8.99|
|Reino Unido|7.58|
|Brasil|6.74|
**2. TDH (Tratado de Derechos Humanos)** ➡️**Canadá**
```R
# 3.2. DH (Tratado de Derechos Humanos)
tdh_afavor <- distr_opiniones_tdh_byCountry[ ,1]# [fila, columa] -> [ ,1] o sea toda las filas de la columna 1 (A favor)
tdh_afavor

# Ordenamos de mayor a menor
tdh_afavor[order(tdh_afavor, decreasing = TRUE)]

# TOP 1
tdh_afavor[order(tdh_afavor, decreasing = TRUE)][1] # Canadá
```
|País|A favor|
|---|---|
|Canadá|13.13|
|Brasil|12.84|
|Australia|11.34|
|Alemania|11.04|
|Italia|10.45|
|Estados Unidos|8.96|
|España|8.36|
|Francia|8.36|
|Japón|7.76|
|Reino Unido|7.76|
**3. TMA (Tratado Medioambiental)** ➡️ **ALEMANIA** 
```R
tma_aFavor <- distr_opiniones_tma_byCountry[,1] # [fila, columa] -> [ ,1] o sea toda las filas de la columna 1 (A favor)

# Ordenamos de mayor a menor
tma_aFavor[order(tma_aFavor, decreasing = TRUE)]

# Dado que queremos remos el top 1 usamos:
tma_aFavor[order(tma_aFavor, decreasing = TRUE)][1] # Alemania
```
|País|A favor|
|---|---|
|Alemania|12.23|
|Canadá|11.60|
|Francia|11.29|
|Brasil|10.66|
|España|10.34|
|Italia|9.72|
|Japón|9.09|
|Australia|8.46|
|Reino Unido|8.46|
|Estados Unidos|8.15|



