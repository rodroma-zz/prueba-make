# Estructura de proyecto ejemplo

La idea de esto es tener un repo de donde podamos copiar la estructura de los makefiles y toda esa bola para cada ejecutable nuevo.
La estructura basica de cada proyecto se ve asi (suponiendo que el ejecutable/proyecto es prueba):

`.`  
`├── include`  
`│   └── sut.c`  
`│   └── sut.h`  
`├── makefile`  
`├── prueba.c`  
`└── tests.c`  

Esta tiene varias partes, el makefile, el punto de entrada del programa (en este caso prueba.c), el archivo tests.c y la carpeta include.

## Makefile

La idea es tocar esto lo menos posible, todavia no lo entendi muy bien, pero a base de prueba y error arme un par de reglas mas o menos usables.

* `make install` compila todo lo que este en la carpeta include/, y el punto de entrada, generando un ejecutable con el mismo nombre (en este caso prueba, en el tp seguramente sean coordinador, planificador, etc).
* `make run` lo unico que hace es correr ese punto de entrada, por lo que la manera mas normal de generar un binario y correrlo es hacer `make install run`
* `make clean` limpia todos los binarios y falopa que hayamos generado. *CORRANLO ANTES DE CADA COMMIT* la idea es que nos quede el arbol de git bastante mas legible (a diferencia de como se ve ahora).
* `make test` compila lo que este en include/ y el archivo tests.c, y tambien lo ejecuta. Basicamente corre los tests unitarios para ese proyecto en particular.

## Punto de entrada

En el mundo ideal esto solo tendria el `main()`, el cual solo llama a funciones de la carpeta include/ ya que no hay manera de testear esta mierda con cspec.

## tests.c

La sintaxis de cspec y como funciona esta en https://github.com/mumuki/cspec

## Include

Aca van todos los archivos con nuestras funciones a testear, las cuales tienen que ser facilmente testeables en lo posible: Que no dependan de estado global, ni causen side-effects al pedo (ni idea como se mockea en c). 

## Workflow

`make install run` para correr el programa  
`make test` para testear  
`make clean` antes de un commit  
