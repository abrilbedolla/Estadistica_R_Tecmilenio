
## EJERCICIO 4

## PROBLEMA 1 ### 

## Las puntuaciones en un test que mide la variable creatividad siguen, 
## en la poblaci�n general de adolescentes, una distribuci�n normal 
## con media de 11.5 puntos. En un centro escolar que ha implantado 
## un programa de estimulaci�n de la creatividad, 
## se tom� una muestra de 30 alumnos que ha proporcionado 
## las siguientes puntuaciones:

library(readxl)
creatividad <- read_excel("C:/Users/naim_/Downloads/creatividad.xlsx")
View(creatividad)

## A un nivel de confianza de 95%, 
## �puede afirmarse que el programa es efectivo? 
## Realiza el planteamiento de la prueba de hip�tesis 
## y pru�bala estad�sticamente.

summary(creatividad)

mean(creatividad$creatividad)

sd(creatividad$creatividad)

## Hipotesis nula

mu0=11.5

mu0

sol.test=t.test(creatividad,mu=11.5,alternative="two.sided",conf.level=0.95)

#Resumen del test
sol.test

## No hay evidencia que nos permita rechazar la hip�tesis nula
## Ho = 11.5 contra la alternativa diferente de 11.5


### PROBLEMA 2

## Se somete a prueba a todos los integrantes del magisterio 
## de ense�anza b�sica (primaria) de un pa�s. 
## Un experto en educaci�n afirma que el promedio de la calificaci�n, 
## sobre una base de 100, fue de 76. 
## Un representante del alto gobierno pone en duda dicha afirmaci�n, 
## por lo cual se toma una muestra aleatoria de 400 maestros 
## cuya media fue de 74 con desviaci�n est�ndar de 16. 
## Comprueba dicha afirmaci�n con una prueba de hip�tesis 
## y un nivel de significancia del 1%.

xbarra <- 74  # Datos del problema
desvia <- 16   # Datos del problema
n <- 400         # Datos del problema
mu <- 76      # Media de referencia

est <- (xbarra - mu) / (desvia / sqrt(n))

est  # Para obtener el valor del estad�stico

pnorm(est)  # Para obtener el valor-P

## Como el P valor es menor a 0.01, se rechaza la hipotesis nula.



### PROBLEMA 3

## Un fabricante de pintura de secado r�pido afirma 
## que el tiempo de secado de la misma es de 20 minutos. 
## El comprador dise�a el siguiente experimento: pinta 36 tableros 
## y decide rechazar el producto si el promedio de tiempo de secado supera 
## la afirmaci�n del fabricante. La media resultante de la muestra 
## fue de 20.75 min. Si por experiencia s = 2.4 min, 
## se pregunta cu�l es la probabilidad de rechazar la afirmaci�n 
## del fabricante suponiendo que la poblaci�n tiene una media 
## de secado de 20 min. Realiza la prueba de hip�tesis con 
## un nivel de significancia del 10%. 
## �Existe evidencia suficiente para afirmar la hip�tesis del fabricante?


xbarra <- 20.75  # Datos del problema
desvia <- 2.4   # Datos del problema
n <- 36         # Datos del problema
mu <- 20      # Media de referencia

est <- (xbarra - mu) / (desvia / sqrt(n))

est  # Para obtener el valor del estad�stico

pnorm(est)  # Para obtener el valor-P

## Como el P valor es mayor a 0.10, no se rechaza la hipotesis nula.



### PROBLEMA 4

## El �ndice de resistencia a la rotura de un tipo de cuerda, 
## expresado en kg, sigue una distribuci�n normal con desviaci�n 
## t�pica 15.6 kg. Con una muestra de 5 de estas cuerdas 
## seleccionadas al azar, se obtuvieron los siguientes �ndices: 
## 280, 240, 270, 285, 270. Obt�n un intervalo de confianza 
## para la media del �ndice de resistencia a la rotura utilizando 
## un nivel de confianza del 95%. Realiza 
## una interpretaci�n del intervalo de confianza obtenido.

install.packages("distributions3")

library(distributions3)

x <- c(280, 240, 270, 285, 270)
n <- length(x)

Z <- Normal(0, 1)

mean(x) + quantile(Z, 0.05 / 2) * 15.6 / sqrt(n)

mean(x) - quantile(Z, 0.05 / 2) * 15.6 / sqrt(n)

