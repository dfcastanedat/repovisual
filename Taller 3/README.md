# Taller raster

## Propósito

Comprender algunos aspectos fundamentales del paradigma de rasterización.

## Tareas

Emplee coordenadas baricéntricas para:

1. Rasterizar un triángulo.
2. Sombrear su superficie a partir de los colores de sus vértices.
3. (opcional para grupos menores de dos) Implementar un [algoritmo de anti-aliasing](https://www.scratchapixel.com/lessons/3d-basic-rendering/rasterization-practical-implementation/rasterization-practical-implementation) para sus aristas.

Referencias:

* [The barycentric conspiracy](https://fgiesen.wordpress.com/2013/02/06/the-barycentric-conspirac/)
* [Rasterization stage](https://www.scratchapixel.com/lessons/3d-basic-rendering/rasterization-practical-implementation/rasterization-stage)

Implemente la función ```triangleRaster()``` del sketch adjunto para tal efecto, requiere la librería [nub](https://github.com/nakednous/nub/releases).

## Integrantes

Complete la tabla:

|       Integrante      |                 github nick                   |
|-----------------------|-----------------------------------------------|
| Diego Alejandro Garcia| [diagarciaar](https://github.com/diagarciaar) |
| Yesid Alberto Ochoa   | [yaochoal](https://github.com/yaochoal)       |
| Oscar Ivan Gomez      | [oigomezz](https://github.com/oigomezz)       |

## Instrucciones de uso

Al ejecutar este programa, podemos visualizar el shading oprimienso la tecla s, y podemos visualizar el anti-aliasing oprimiendo la tecla a.


## Discusión

Se logró rasterizar el triángulo generado aleatoriamente haciendo uso de las librería nub. Luego se realizó la implementación de dos técnicas de anti-aliasing conocidas como SSAA. Por último se uso el modelo de iluminación shading con el objetivo de interpolar los colores de los vértices del triángulo sobre la grilla de modo tal que la transición de los colores fuese suave.

## Anti-aliasing

Las técnicas usadas para la implementación del anti-aliasing fueron las siguientes:

SSAA SuperSampling Anti-Aliasing

Se implemento la tecnica del SuperSampling Anti-Aliasing tecnica que suaviza los bordes dentados y pixeleados, en una escena a renderizar. Y en este caso en particular se intento aplicar el mejoramiento de la calidad a partir de la reduccion de espaciado.
Tras implementar la particion del pixel, este aumento la calidad de la imagen que es n-veces mas grande(dos, cuatro u ocho) segun sea definido. 

![Sin Anti-Aliasing](/Taller%203/images/NoAA.png)

![Con Anti-Aliasing](/Taller%203/images/SSAA.png)

## Shading

La forma en la que se logro este efecto con una interpolación donde se lograron los colores de acuerdo a su posición dentro del triángulo y su cercanía a los vértices, aplicandolo en este caso sobre los tres colores aplicados a este.Adicionalmente se hizo la conversión del espacio cartesiano a baricéntrico con la funcion de darnos los tres ejes nuevos (alpha, beta, gamma) que fueron utilizados para determinar los colores segun la posición del pixel.

![](/Taller%203/images/Final.png)


## Dificultades 

A la hora de la implementacion, y debido a que los vertices del triangulo se generaban de manera aleatoria, no siempre se rasterizaba el triangulo, esto ocurria porque el algoritmo dependia del orden en que se encontraran estos vertices, esto se soluciono modificando el algoritmo.

## Referencias
* [Supersampling](https://en.wikipedia.org/wiki/Supersampling)

## Entrega

* Plazo: 2/6/19 a las 24h.
