Ruby Intro
=============

Este lab de 3-partes aborda práctica básica en Ruby como también
le introduce en la buena práctica de realizar pruebas como una tarea frecuente de su flujo de trabajo.

**NOTE: Do not clone this repo to your workspace. Fork it first, then clone your fork.**

Objetivos de Aprendizaje
------------------------
Después de completar esta tarea, usted sabrá cómo:

* Escribir código simple que use construcciones básicas en el lenguaje Ruby, incluyendo métodos y argumentos, condicionales, 
* cadenas y manipulación de arrays, expresiones regulares, y mecanismos básicos de programación orientada a objectos.
* Comprender las convenciones del proyecto Ruby para encontrar los archivos de código y los archivos de pruebas la jerarquía de 
* directorios de un proyecto
* Ejecutar pruebas individuales o conjunto de pruebas usando la herramienta de pruebas unitarias RSpec
* Comprender la sintaxis básica de las pruebas unitarias en RSpec
 
Visión general
--------------

**Puede encontrar la [documentación de Ruby en ruby-doc.org](https://ruby-doc.org) muy útil para tenerla a mano.**

El repo para esta práctica sigue una convención de Ruby bastante estándar para código fuente: los archivos
de código son almacenados en `lib/` y los archivos de pruebas en `spec/`.
(Usamos el framework de pruebas-unitarias RSpec; Si estuviéramos usando las opciones por omisión del framework Ruby, 
conocido como `Test::Unit`, los archivos de pruebas estarían alojados en `test/`.)

Se ha colocado un "código incial" en `lib/ruby_intro.rb`; cuando hayas terminado, puedes
enviar este único archivo a tu repositorio.

Sin embargo, puedes probar cada una de las 3 partes separadamente.  Los archivos
`spec/part[123]_spec.rb` contiene pruebas RSpec para cada una de las tres
partes.  Por ejemplo, para probar tu respuesta con la Parte 1, escribe `rspec
spec/part1_spec.rb`.  `rspec` sin argumentos ejecuta las pruebas en todos los
archivos `spec/*_spec.rb`.

* Los números de línea en el reporte de error de RSpec error te dará
una guía sobre qué pruebas fallaron.  (Puedes verificar la [documentación RSpec]
(http://rspec.info) para ver cómo el archivo `.rspec` puede
usarse para personalizar el formato de la salida.)
Para asegurarse que tienes la gema rspec instalada necesitas "bundler"(*) y puedes después
ejecutar bundle así:
(*) Bundler es una herramienta que facilita la intalación de otras gemas.

```sh
$ gem install bundler
$ cd hw-ruby-intro
$ bundle
```

Cuando lo de arriba se complete satisfactoriamente tendrás RSpec instalado y pudes ejecutar
run `rspec` desde la línea de comandos para probar tu código.


# 1. Arrays, Hashes, y Enumerables

Comprueba la [documentación de Ruby 2.x](http://ruby-doc.org) sobre `Array`,
`Hash` y `Enumerable` ya que te ayudarán enormemente con estos ejercicios. :-) 

0. Define un método `sum(array)` que tome un array de enteros como argumento y retorne la suma de sus elementos. Para un array vacío deberá retornar cero.  Ejecuta la prueba asociada vía:  `$ rspec spec/part1_spec.rb:6`

0. Define un método `max_2_sum(array)` el cual toma un array de enteros como argumento y devuelve la suma de sus dos elementos mayores. Para un array vacío debería devolver cero. Para un array con un sólo elemento, retornaría dicho elemento. Ejecuta las pruebas asociadas vía:  `$ rspec spec/part1_spec.rb:24`

0. Define a método `sum_to_n?(array, n)` que tome un array de enteros y un entero, n, como argumentos y devuelva true si cualesquiera dos elementos en el array de enteros sume n. `sum_to_n?([], n)` debería devolver false para cualesquiera valor de n, por definición. Ejecuta las pruebas asociadas vía:  `$ rspec spec/part1_spec.rb:43`

Puedes comprobar tus avances de todo lo anterior ejecutando `$ rspec spec/part1_spec.rb`.

# 2. Strings y Expresiones Regulares 

Comprueba la documentación sobre String y Regexp ellas podrían ayudarte mucho con estos ejercicios. :-)

0. Define un método `hello(name)` que tome una cadena representando un nombre y devuelva la cadena "Hello, " concatenada con el nombre. Ejecuta las pruebas asociadas vía:  `$ rspec -e '#hello' spec/part2_spec.rb`

0. Define un método `starts_with_consonant?(s)` que tome una cadena y devuelva true si inicia con una consonante y false en caso contrario. (Para nuestro caso, un consonante es cualquier letra diferente de A, E, I, O, U.) NOTA: ¡asegúrese que funciona para mayúsculas y minúsculas y para no letras!  Ejecuta las pruebas asociadas vía:  `$ rspec -e '#starts_with_consonant?' spec/part2_spec.rb`

0. Define un método `binary_multiple_of_4?(s)` que tome una cadena y devuelva true si la cadena representa un número binario que sea múltiple de 4. NOTA: ¡asegúrese que retorna false si la cadena no es un número binario válido!  Ejecuta las pruebas asociadas vía:  `$ rspec -e '#binary_multiple_of_4?' spec/part2_spec.rb`

Puedes comprobar tu progreso de todo lo anterior ejecutando `$ rspec spec/part2_spec.rb`.

# 3. Fundamentos de Orientación a Objetos


Define una clase `BookInStock` que represente un libro con un número ISBN, `isbn`, y precio del libro como un número en coma flotante, `price`, como atributos. Ejecuta las pruebas asociadas vía:  `$ rspec -e 'getters and setters' spec/part3_spec.rb` 

El constructor debería aceptar el número ISBN
(una cadena, dado que en la vida real los números ISBN pueden iniciar con cero y pueden incluir
guiones) como el primer argumento y precio como segundo argumento, y
deberá lanzar `ArgumentError` (uno de los tipos de excepciones incorporadas en Ruby) si
el ISBN es una cadena vacía o si el precio es menos o igual que cero.  Agregue los adecuados getters y setters para estos atributos. Ejecuta las pruebas asociadas vía:  `$ rspec -e 'constructor' spec/part3_spec.rb`

Incluya un método `price_as_string` que retorne el precio del
libro formateado con el signo dólar al inicio y dos puntos decimales, tal que, un precio
de 20 debería verse como "$20.00" y un precio de 33.8 debería formatearse como
"$33.80". Ejecuta las pruebas asociadas vía:  `$ rspec -e '#price_as_string' spec/part3_spec.rb`

Puedes comprobar tu progreso de todo lo anterior ejecutando `rspec spec/part3_spec.rb`.

## Más Retos

* Intenta configurar con 
un framewok de pruebas automatizadas como [guard](http://code.tutsplus.com/tutorials/testing-your-ruby-code-with-guard-rspec-pry--cms-19974) o [autotest](https://rubygems.org/gems/autotest).  Guard o AutoTest pueden configurarse de manera tal que
ellos ejecutarán las pruebas en `spec/`, pero cada vez que edites y guardes  
tu archivo de código, las pruebas son automáticamente re-ejecutadas, así que no tienes que  
ejecutarlas manualmente.  Como veremos posteriormente, esto es la parte "watch the test fail" (ver fallar la prueba) 
de TDD o el proceso de desarrollo dirigido-por-pruebas (test-driven): escribir las pruebas antes de
que escribas el código, ver fallar la prueba, completar el código y guardarlo, 
entonces ver pasar la prueba!

* Try pairing using the [one-undermanship pair programming style](http://www.agileventures.org/remote-pair-programming/pair-programming-protocols)



