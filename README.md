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
* Aplicación de algunas máscaras de convolución: Se realizó la aplicacion de 5 mascaras de convolución, las cuales fueron:
    - Enfoque: Esta mascara potencia los detalles aparentes de una imagen mediante la manipulación informática.
    + ![Enfoque](/Convolucion/images/focus.jpg)
    - Realce de bordes:  El principal objetivo del realce es resaltar aquellas características de la imagen que por causa del mecanismo de captación o por error hayan quedados emborronados en la imagen. Este tipo de filtros es muy usado como método directo de mejorar una imagen cara a su presentación a un observador humano. Con mucha frecuencia la característica más importante a realzar son las fronteras que definen los objetos presentes en la imagen. 
    + ![RealceBordes](/Convolucion/images/edgeEnhancement.jpg)
    - Repujado:  Técnica de computacion grafica en la que cada píxel de una imagen se reemplaza por un resaltado o una sombra, según los límites claros / oscuros de la imagen original. 
    + ![Repujado](/Convolucion/images/embossment.jpg)
    - Filtro de Sharpen: ayuda a resaltar los detalles y mejorar los bordes de los objetos en una imagen. 
    + ![Sharpen](/Convolucion/images/sharpen.jpg)
    - Fitro direccional norte: Se utilizan para detectar estructuras que siguen una determinada dirección en el espacio resaltando el contraste entre los píxeles situados a ambos lados de la estructura.
    + ![Norte](/Convolucion/images/north.jpg)
* (solo para imágenes) Despliegue del histograma.
* (solo para imágenes) Segmentación de la imagen a partir del histograma.
* Medición de la eficiencia computacional: En el proceso de medir la eficiencia computacional de los videos se tomo la decicion de incluir un video de extencion .mov de dimensiones de 1280 x 720, en tres tipos distintos de situaciones, una de ellas donde se le colocaria en un punto estatico , otro de ellos se le colocaria siguiendo la pocision del cursor, y la ultima dejando el video en un punto estatico mas con un limite de frames de 30 frameRate.
Los resultados de este proceso dio que el video muestra un aumento de frames cuando sigue al cursor dado que si se oculta algo del video el proceso de muestreo se reduce. Adicionalmente se nota que en la parte de establecer los frames limites, el video tiende a congelar las imagenes en algunos estados.

## Entrega

* Hacer [fork](https://help.github.com/articles/fork-a-repo/) de la plantilla. Plazo: 28/4/19 a las 24h.
* (todos los integrantes) Presentar el trabajo presencialmente en la siguiente sesión de taller.
