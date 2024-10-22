# Análisis Exploratorio de Datos sobre el término Presirvienta
**Resumen:**

Base de datos y los scripts usados para hacer un EDA sobre el término Presirvienta y su aparición en X del 1 al 8 de octubre.

## 1. Contenidos

1. Bases de datos
   1. Njson de la búsqueda inicial creado usando [Zeeschuimer](https://github.com/digitalmethodsinitiative/zeeschuimer) (raw_presirvienta)
   2. csv después de pasar por [4Cat](https://4cat.nl) (raw_presirvienta)
   3. csv resultado del análisis de sentimientos en [Orange Data Mining](https://orangedatamining.com) (1er_proc_presirvienta)
   4. csv unido raw_presirvienta con 1er_proc_presirvienta (tidy_presirvienta) 
2. Scripts
   1. Analisis de sentimientos.- script que se uso en [Orange Data Mining](https://orangedatamining.com) para el análisis de emociones y sentimientos
   2. EDA_presirvienta.- Quarto Script en R, de las visualizaciones de la base de datos "tidy_presirvienta"
   3. Exploracio_texto.- Quarto Script en R, primeros pasos en el procesamiento del texto, nubes de palabras y conteo de ocurrencias
   4. Topic_modeling_presirvienta.- Quiarto Script en R, el modelado de topicos sin supervisión y los resultados.

## 2. Elementos y pasos del Análisis Exploratorio de datos

1. Busqueda en "X", término _presirvienta_ entre los días 1 de octubre de 2024 al 8 de octubre de 2024.
2. Captura de los resultados usando [Zeeschuimer](https://github.com/digitalmethodsinitiative/zeeschuimer)
3. Convertir a CSV empleando [4Cat](https://4cat.nl).
4. Se hace un análisis de emociones en [Orange Data Mining](https://orangedatamining.com)
5. Se limpia la base de datos y se unen los resultados hasta este momento, usando el lenguaje R. 
6. En la exploración y análisis se crean algunas visualizaciones para lograr entender todos los datos y sus relaciones.
7. Posteriormente se trabaja en los textos concretamente en la columna body, para entender las publicaciones y sus contenidos.
8. Por último se hace un modelado de tópicos para entender mejor el contenido del dataset.
