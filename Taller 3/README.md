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


## Discusión

Se logró rasterizar el triángulo generado aleatoriamente haciendo uso de las librería nub. Luego se realizó la implementación de dos téctnicas de anti-aliasing conocidas como SSAA y posfiltrado mediante el uso de un filtro cónico. Por último se uso el modelo de iluminación shading con el objetivo de interpolar los colores de los vértices del triángulo sobre la grilla de modo tal que la transición de los colores fuese suave.


## Anti-aliasing

Las técnicas usadas para la implementación del anti-aliasing fueron las siguientes:

## Shading

La representación de este mecanismo dentro de la escena se basó en la interpolación de los colores de acuerdo a su posición dentro del triángulo y su cercanía a los vértices. En este caso, se utilizaron los colores RGB ( Red, Green, Blue) para visualizar de mejor manera el contenido de color. Se hizo la conversión del espacio cartesiano a baricéntrico con el propósito de obtener los coeficientes alpha, beta, gamma los cuales fueron utilizados para determinar el rango de color apropiado para pintar el "píxeles".

## Entrega

* Plazo: 2/6/19 a las 24h.
