"Comentarios Smalltalk"

3 factorial + 1 between: 'ay' size and: (3 raisedTo: 1) + 2 * 3.  true .

6 + 1 between: 'ay' size and: (3 raisedTo: 1) + 2 * 3. true .

('hola' at: 2) = $o. true .

('hola mundo' copyFrom: 1 to: 1) = 'h'.  true .

[ 3 factorial ] value. 6 .

"Condicionales"
3 < 4 ifTrue: [ 'una locura' ]. 'una locura' .

'hello' isEmpty ifTrue: [ 'esto no tiene sentido' ] ifFalse: ['esto tiene sentido']. 

"Numeros pares"
numero := 4
(numero \\ 2) = 0 ifTrue: [ 'es par!' ] ifFalse: [ 'es impar! '].

"Bucles en smalltalk"
nombres := #('Alice' 'Bob' 'Charlie' 'David').
nombres do:[ :nombre | Transcript show: nombre; cr.].
nombres first printString.
nombres last printString.


"Arreglos"
"Encontrar el primer valor que coincide"
numeros:=#(1 2 3 4 5 6 7 8).
buscar:= 3.
numeros detect:[:elemento | elemento == buscar]. 

"Encontrar todos los valores que coinciden y devolver un nuevo arreglo"
numeros:=#(1 2 2 4 5 2 7 8).
buscar:= 2.
numeros select:[:elemento | elemento == buscar]. 

"Verificar si un valor especifico esta en un arreglo"
numeros:=#(1 2 3 4 5 6 7 8).
buscar:= 2.
(numeros includes: buscar) ifTrue:['Se encontro el numero'] ifFalse:['No se encontro el numero']. 

"Encontrar la posicion de un elemento en el arreglo, si no lo encuentra devuelve 0"
nombres := #('Alice' 'Bob' 'Charlie' 'David').
nombres indexOf: 'Bob'.