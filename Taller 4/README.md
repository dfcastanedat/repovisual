# Taller de shaders

## Propósito

Estudiar los [patrones de diseño de shaders](http://visualcomputing.github.io/Shaders/#/4).

## Tarea

1. Hacer un _benchmark_ entre la implementación por software y la de shaders de varias máscaras de convolución aplicadas a imágenes y video.
2. Implementar un modelo de iluminación que combine luz ambiental con varias fuentes puntuales de luz especular y difusa. Tener presente _factores de atenuación_ para las fuentes de iluminación puntuales.
3. (grupos de dos o más) Implementar el [bump mapping](https://en.wikipedia.org/wiki/Bump_mapping).

## Integrantes

Complete la tabla:

|       Integrante      |                 github nick                   |
|-----------------------|-----------------------------------------------|
| Diego Alejandro Garcia| [diagarciaar](https://github.com/diagarciaar) |
| Yesid Alberto Ochoa   | [yaochoal](https://github.com/yaochoal)       |
| Oscar Ivan Gomez      | [oigomezz](https://github.com/oigomezz)       |

## Informe

Para esta entrega se implementaron varias tecnicas para el avance de los requerimientos que se colocaron:

## Shaders
En el proceso de aplicacion de mascaras de convolucion implemento shaders, en donde se usaron para su uso correcto las variable de tipo uniforme para enviar los parametros de la matriz de convolucion, varying y de atributo.

Ademas para su implementacion se usaron funciones propias de estas como lo son vertex(), modelview(), traslate(), rotate(), shader() y pshape() siendo este ultimo una version de processing. Adicionalmente los parametros principales para su implementacion fueron lightPosition y vertColor 

## Light shaders

La iluminación de una escena 3D implica colocar una o más fuentes de luz en el espacio y definir sus parámetros.

En el momento implementar luz proveniente de una fuente natural o una fuente puntual, procedimos a implementar al momento de colocar una luz difusa, un enfoque por vertice o por pixel de la luz sobre el objeto, dependiendo de donde si existe regosidad sobre el objeto. iluminar, ademas de lightdir que nos provee la direccion de donde proviene la luz.

La posibilidad de configurar sombreadores personalizados nos permite cambiar los algoritmos de renderización predeterminados para aquellos que son más sofisticados o generan estilos visuales específicos.

## Bump mapping

Es una técnica de gráficos computacionales 3D, que consiste en dar un aspecto rugoso a las superficies de los objetos. Esta técnica modifica las normales de la superficie sin cambiar su geometría. El bump mapping cambia la perpendicularidad por otras normales para lograr el efecto deseado, todo ello sin modificar la topología ni la geometría del objeto.


## Entrega

Fecha límite ~~Lunes 1/7/19~~ Domingo 7/7/19 a las 24h. Sustentaciones: 10/7/19 y 11/7/19.
