# age-of-mixins-ruby

Código del ejercicio introductorio que vimos la primera clase.

## Organización de los ejemplos
El repositorio contiene muchas ramas (o _branches_), cada una apuntando al resultado de una decisión particular de diseño que tomamos durante la clase.

Por ejemplo, para resolver el último problema vimos:
- `jerarquia_forzada`
- `anti_clases`
- `delegacion`
- `feature_flags`
- `mixines`

Pueden navegar entre las ramas para ver el contenido de cada una.

Además, los _commits_ incluyen algunos cambios menores en forma más granular, que también pueden ser interesantes para ver por separado.

## Instrucciones para ejecutarlo localmente

Para poder hacer el _set-up_ del proyecto y ejecutar el código, `ruby` y la gema `bundler` tienen que estar instalados.

### Verificación de la instalación de Ruby y Bundler

Para verificar que tenemos Ruby instalado, se puede ejecutar el comando `ruby --version` en una consola, y como resultado van a ver el número de versión que tienen de Ruby.
Por ejemplo:

```
$ ruby --version
ruby 2.5.1p57 (2018-03-29 revision 63029) [x86_64-linux-gnu]
```

De manera similar, para verificar que tenemos Bundler, se puede correr el comando `bundle --version`.
Por ejemplo:

```
$ bundle --version
Bundler version 2.1.4
```

### Preparación del proyecto

Luego de clonar el repositorio, deben posicionarse sobre el directorio del proyecto y ejecutar el comando `bundle` para instalar las dependencias del proyecto.
Por ejemplo:
```
$ bundle
Using bundler 1.17.3
Using diff-lcs 1.3
Using rspec-support 3.9.2
Using rspec-core 3.9.1
Using rspec-expectations 3.9.1
Using rspec-mocks 3.9.1
Using rspec 3.9.0
Bundle complete! 1 Gemfile dependency, 7 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.
```

Una vez que las dependencias estén instaladas, para correr los tests deben usar el comando `bundle exec rspec`.
Por ejemplo:
```
$ bundle exec rspec
............

Finished in 0.00421 seconds (files took 0.08243 seconds to load)
12 examples, 0 failures
```
