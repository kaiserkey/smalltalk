# Repositorio de Codigo Smalltalk
Smalltalk es un lenguaje reflexivo de programación, orientado a objetos y con tipado dinámico. Por sus características, Smalltalk puede ser considerado también como un entorno de objetos, donde incluso el propio sistema es un objeto.

# Diferencia entre theTarget y self
En el contexto de Smalltalk, theTarget y self son dos conceptos relacionados pero con diferentes significados:

self:se refiere al objeto actual en el cual se está ejecutando el método. Es una referencia al receptor del mensaje actual. En otras palabras, cuando llamas a un método en un objeto, el self dentro del método se refiere a ese objeto en especifico. self se utiliza para acceder a los métodos y propiedades del objeto actual.

```smalltalk
Persona>>saludar
    Transcript show: 'Hola, soy ', self nombre; cr.
```
En este ejemplo, dentro del método saludar de la clase Persona, self hace referencia a la instancia de la clase Persona que está ejecutando el método.

theTarget: es un término que generalmente se utiliza en el contexto de los frameworks gráficos de Smalltalk, como Morphic o Squeak. Representa el objeto al cual se le está enviando un mensaje en un entorno gráfico. Por ejemplo, si haces clic en un botón en una interfaz gráfica, el botón sería theTarget del evento.

```smalltalk
boton onClick: [ :event | 
    "El código que se ejecuta cuando se hace clic en el botón"
    event theTarget doSomething.
].
```
En este caso, event theTarget se refiere al objeto que fue clicado y desencadenó el evento.

Mientras que self se refiere al objeto actual en el que se está ejecutando un método, theTarget se refiere al objeto que está relacionado con un evento en un contexto gráfico, como en los frameworks de interfaz de usuario de Smalltalk.