# Taller de análisis de imágenes por software

## Propósito

Introducir el análisis de imágenes/video en el lenguaje de [Processing](https://processing.org/).

## Tareas

Implementar las siguientes operaciones de análisis para imágenes/video:

* Conversión a escala de grises.
* Aplicación de algunas [máscaras de convolución](https://en.wikipedia.org/wiki/Kernel_(image_processing)).
* (solo para imágenes) Despliegue del histograma.
* (solo para imágenes) Segmentación de la imagen a partir del histograma.
* (solo para video) Medición de la [eficiencia computacional](https://processing.org/reference/frameRate.html) para las operaciones realizadas.

Emplear dos [canvas](https://processing.org/reference/PGraphics.html), uno para desplegar la imagen/video original y el otro para el resultado del análisis.

## Integrantes

Complete la tabla:

|       Integrante      |                 github nick                   |
|-----------------------|-----------------------------------------------|
| Diego Alejandro Garcia| [diagarciaar](https://github.com/diagarciaar) |
| Yesid Alberto Ochoa   | [yaochoal](https://github.com/yaochoal)       |
| Oscar Ivan Gomez      | [oigomezz](https://github.com/oigomezz)       |

## Discusión

* Conversión a escala de grises: Se tomo promedio de los pixeles 
* Aplicación de algunas máscaras de convolución.
* (solo para imágenes) Despliegue del histograma.
* (solo para imágenes) Segmentación de la imagen a partir del histograma.
* Medición de la eficiencia computacional: El el proceso de medir la eficiencia computacional de los videos se tomo la decicion de incluir un video de extencion .mov de dimensiones de 1280 x 720, en tres tipos distintos de situaciones, una de ellas donde se le colocaria en un punto estatico , otro de ellos se le colocaria siguiendo la pocision del cursor, y la ultima dejando el video en un punto estatico mas con un limite de frames de 30 frameRate.
Los resultados de este proceso dio que el video muestra un aumento de frames cuando sigue al cursor dado que si se oculta algo del video el proceso de muestreo se reduce. Adicionalmente se nota que en la parte de establecer los frames limites, el video tiende a congelar las imagenes en algunos estados.

## Entrega

* Hacer [fork](https://help.github.com/articles/fork-a-repo/) de la plantilla. Plazo: 28/4/19 a las 24h.
* (todos los integrantes) Presentar el trabajo presencialmente en la siguiente sesión de taller.
