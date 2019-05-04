# Variables: Numeros(int, double), String y booleanos
```
Dart permite estos tipos:
int
double
String
bool
```

>En dart todo es un objeto    

Se puede declararcon la palabra reservada **var**.  
>`var` numero;
  
Declarar una variable con dynamic permite cambiar el tipo en tiempo de ejecucion.

>`dynamic` numero = `true`;  
>`numero` = 4.0;  

Las comilas dobles y comillas simples son aceptadas igualmente por el lenguaje

~~~
print("Hola");
print('hola');
~~~

Para imprimir una variable se la coloca anteponiendo un $ dentro de las comillas 

>`var` numero = 5;  
>print($`numero`);  

Las comillas simples, puestas de forma triple, permiten escribir un texto que se imprimira respetando los saltos de linea que hicimos al editar el codigo

>print(`''' esto permite hacer saltos  de linea cuando se edita '''`)  

una **r** antes de las comillas significa que lo que sigue es de tipo raw, que permite omitir los caracteres de escape  

>print(`r"Esto s se va a imprimir \n"`) // *salida: Esto si se va a imprimir \n*  

# Colecciones
> List
>- Una de las colecciones más comunes en casi todos los lenguajes es el Array, en Dart los arreglos son objetos tipo List
>- Trabaja con index 0
>- Tiene muchas funciones por defecto

**Declaración:**

>`List list; //forma 1 List list<tipo>; //forma 2`

**Inicialización:**

>`list = ["negro","blanco"];`

**Agregar elemento:**

>`list.add("Rosa");`

**Borrar elemento:**

>`list.removeAt(indice);`

**Borrar último elemento:**

>`list.removeLast();`

**Añadir elementos de otra lista:**

>`list.addAll(lista_auxiliar);`

>Set
>- En este tipo de colección un elemento puede existir una sola vez. Si intentamos enviar uno repetido no lo permitirá (pero tampoco mandará un error)
>- Esta no regresará en el mismo orden y por este mismo motivo no se puede pedir por index

**Declaración:**

>`Set set;`

**Inicialización:**

>`set = set.from(['Argel', 'Juan']);`

**Agregar elemento:**

>`set.add("Erika");`

**Eliminar elemento:**

>`set.remove("Argel");`

> Ejemplo  
`Set`<`String`> names = {`"Cristian"`, `"David"`};  
  `print`(names);// {Cristian, David}

# Diccionarios
>Los Maps, también llamadas Hash o Diccionarios son objetos que tienen una asociación entre llaves y valores.  
> > **Diccionarios/Maps/Hash:** Son objetos que tienen una asociación entre llaves y valores, ambas de cualquier tipo. Las llaves son únicas, pero los valores pueden repetirse.  
  
**Declaración:**

> `Map`<tipo_llave, tipo_valor> `map`;

**Inicialización:**

> map = {1:`"Rojo"`,2:`"Verde"`};

**Agregar elemento:**

> map[3]=`"Azul"`;

**Eliminar elemento:**

> `map.remove`(llave);

**Saber si el map está vacío:**

> `map.isEmpty` //Retorna un valor `"true"` si está vacío y `"false"` en caso contrario

**Saber longitud:**

> `map`.lenght //Retorna un valor entero con la longitud del mapa

Es muy normal usar el tipo dynamic en la declaración de los Maps.

# Constantes (final y const)

>***final:*** solo se pueden declarar una vez y es inicializada cuando se accede a ella.  
> >`final` nombre = `"Argel"`;    

>***const:*** son implícitamente tipo final pero son constantes de tiempo de compilación. Si se requiere una constante a nivel de clase, debe anteponerse el prefijo “static”.  
> >`const` numeroAureo = `1.618`;

**Principal diferencia:** final se inicializa al momento de utilizarse, const desde el inicio.

# Operadores
Los operadores utilizados en Dart son los siguientes:  

> Unario PostExpresion
```
 expresion++    expresion--    ()    []    .    ?. 
```

> Unario PreExpresion
```
-expresion    !expresion    ~expresion    ++expresion    --expresion	
```

> Multiplicativo
```
  *    /    %  ~/
```

> Adición
```
 +    -
```

> Shift
```
<<    >>
```

> Bitwise
```
&    ^    |
```

> Relacional y tipo prueba
```
>=    >    <=    <    as    is    is!
```

> Igualdad
```
==    !=
```

> Logicos
```
&&    ||
```

> Si Nulo
```
??
```

> Condicional
```
expr1 ? expr2 : expr3
```

> Cascada
```
..
```

> Asignación
```
*=    /=    ~/=    %=    +=    -=    <<=    >>=    &=    ^=    |=    ??=
```

> Con los operadores puedes crear expresiones, algunos ejemplos son:
```
a++
a + b
a = b
a == b
c ? a : b
a is T
```

En la tabla de operadores, cada operador tiene mayor precedencia que los operadores de las filas siguientes. Por ejemplo, el operador multiplicativo % tiene mayor precedencia que (y por lo tanto ejecuta antes) el operador de igualdad ==, que tiene mayor precedencia que el operador lógico AND (&&). Esa precedencia significa que las siguientes dos líneas de código se ejecutan de la misma manera:
```
// Los paréntesis mejoras la lectura
if ((n % i == 0) && (d % i == 0)) …

// Mas difícil de leer, pero equivalente.
if (n % i == 0 && d % i == 0) …
```

# Operadores Aritmeticos

Dart soporta los operadores aritméticos habituales:
* Suma ( +)
* Resta ( - )
* -expr Unario menos también conocido como negación (invierte el signo de la expresión)
* Multiplicación
* / División
* ~/ Divide, regresando el valor entero
* % regresa el restante del entero en una división (modulo)

Dart también soporta operadores de incrementos y decrementos de prefijos y postfijos.
```
var El cual se leería; var = var + 1 (expression value is var + 1)
var	El cual se leería; var = var + 1 (expression value is var)
–var El cual se leería; var = var – 1 (expression value is var – 1)
var-- El cual se leería; var = var – 1 (expression value is var)
```

# Operadores de Igualdad y relacionales

Enumeraremos el significado de la igualdad y de los operadores relacionales.
>* == Igual
>* != No igual (diferente)
>* \> Mayor que
>* < Menor que
>* \>= Mayor que o igual a
>* <= Menor que o igual a

# Operadores de prueba de tipo

Los operadores as, is, and is! son útiles para verificar los tipos en tiempo de ejecución.
```
as Typecast (También utilizado para especificar prefijos de biblioteca)
is Verdadero si el objeto es el tipo especificado
is! Falso si el objeto tiene el tipo especificado
```

# Operadores de Asignación

Como ya has visto, puedes asignar valores usando el operador =. Para asignar sólo si la variable asignada es nula, utilice el operador ??=.
```
// Asigna valor a variable a
a = value;
```
```
// Asigna valor a b, si b es nulo; de lo contrario b se mantiene igual
b ??= value;
```
```
Operadores que existen
= –= /= %= >>= ^=
+= *= ~/= <<= &= |=
```
```
//Así es como trabajan
Donde op es un operador a op= b a = a op b
Ejemplo a += b a = a + b
```
# Operadores Lógicos

Puedes invertir o combinar expresiones booleanas utilizando los operadores lógicos
```
!expr invierte la expresión que le sigue (cambia falso a verdadero y viceversa)
|| OR lógico
&& AND lógico
```
# Operadores Bitwise y Shift

Puedes manipular los bits individuales de los números en Dart. Por lo general, se utilizan estos operadores de bits y de desplazamiento con enteros.
>* & AND
>* | OR
>* ^ XOR
>* ~expr Complemento unario bitwise (0s a 1s; 1s a 0s)
>* << Desplazamiento hacia la izq
>* ->> Desplazamiento hacia la derecha
---
El uso de estos lo estaremos viendo mientras avancemos en el curso algunos de estos no serán visto pero te invito a probarlos y conocer la forma en que estos son utilizados, son fiel seguidor de la documentación te invito a visitarla por si tiene alguna duda o bien déjala en nuestra sección de comentarios y te ayudaremos a resolverla.

# Declaración de funciones y la función Main()
>
> Las funciones son una colección de declaraciones agrupadas para desarrollar una operación, éstas pueden ser llamadas y reutilizadas.  

> Una función tendrá un tipo (mismo que regresará al utilizarse), un nombre, argumentos e instrucciones y seguirá la siguiente estructura.
```
type functionName([args]) {
        //code
    return returnValue;
}
```
> **main()** es la función de alto nivel que define el inicio de la aplicación y sigue la siguiente estructura, recuerda que en web no se requieren los argumentos.
```
void main(List<String> arguments) {
    //code
}
```
> >Nota: En Dart las variables también son objetos, así que las podemos asignar a una variable.
---
**Funciones**

**main():** Es el punto de entrada de todas las aplicaciones. Es de tipo void y tiene como parametro opcional una lista de strings.
```
void main(List<String> arguments) {

}
```

**Declaración de una función:**
```
tipo_funcion nombre_funcion (argumentos){
	//codigo
	return elemento_tipo_funcion;
}

//Por ejemplo:

int sumar(int a, int b){
	print("A continuación se retornará una suma");
	return a+b;
}
```

Como todo en Dart es un objeto, podemos hacer que una variable almacene la dirección de memoria de la función, o pasarla como parámetro a otras funciones.

# Funciones de sintaxis corta (Arrow) y Anónimas (Lambda)

Las funciones de sintaxis corta (Arrow) son declaradas en la misma línea y sólo pueden tener una expresión, misma que se declara después de una flecha (=>), por ejemplo:
```
void functionName(int a, int b) => a + b;
```
Las funciones anónimas, también conocidas como lambda o closures son similares a las nombradas pero con la diferencia de que no llevan nombre y suelen utilizarse para realizar una acción dentro de otro proceso, por ejemplo:
```
List list=["Rojo","Rosa","Verde"];
  list.forEach((val){
    print(val);
  });
}
```
---
**Funciones Arrow y Anónimas**

**Arrow** (también conocida como fat arrow): Se utiliza cuando la función tiene una sola línea de código. No se permiten llaves ni la palabra return. Ejemplo:
```
void functionArrow(int a, int b) => print("El resultado será ${a+b}");

//Si a la función le asignamos un tipo, la sentencia debe ser el retorno, así:

int sumar(int a, int b) => a + b;
```
**Anónimas** (también conocidas como lambda o closures): Poseen cero o más parámetros separados por comas. Se suelen utilizar al momento de recorrer colecciones. Ejemplo:
```
//Utilizando el método forEach que posee cada objeto lista al ser creado, recorremos la misma:

List lista = [1, 2, 3];

lista.forEach((val){
  print(val);
});
```

# Parámetros requeridos, opcionales, posicionados, nombrados y por defecto

**Parámetros requeridos:** Al momento de invocar la función deben enviarse sí o sí, o el compilador indicará un error.
```
void main() => paramReq(24, 17); 

void paramReq(int a, int b){
	print("Parametro 1: $a");
	print("Parametro 2: $b");
}

//Salida
Parametro 1: 24
Parametro 2: 17
```

**Parámetros opcionales posicionados:** Los corchetes indican que el parámetro es opcional posicionado. Por lo tanto, no es obligatorio invocar la función con ese parámetro.
```
void main() => paramOpcPos(24); 

void paramOpcPos(int a, [int b]){
	print("Parametro 1: $a");
	print("Parametro 2: $b");
}

//Salida
Parametro 1: 24
Parametro 2: null
```

**Parámetros opcionales nombrados:** Poseen la misma lógica que el anterior tipo, pero aquí podemos nombrarlos al momento de la invocación.
```
void main() => paramOpcNom(24, segundoParametro:17);  

void paramOpcNom(int a, {int segundoParametro}){
	print("Parametro 1: $a");
	print("Parametro 2: $b");
}

//Salida
Parametro 1: 24
Parametro 2: 17
```

**Parámetros opcionales por defecto:** Poseen la misma lógica que el anterior tipo nombrado, pero podemos asignar un valor por defecto si no se invoca a la función con otro diferente.
```
void main() => paramOpcNom(24);  

void paramOpcNom(int a, {int b = 16}){
	print("Parametro 1: $a");
	print("Parametro 2: $b");
}

//Salida
Parametro 1: 24
Parametro 2: 16
```

# If-Else y Expresiones Condicionales

El if/else ejecuta una sentencia si una condición especificada es evaluada como verdadera. Si la condición es evaluada como falsa, otra sentencia puede ser ejecutada.
La sintaxis básica es:
```
if(condicion){
      //Codigo al cumplir condicion
}else{
      //Codigo al No cumplirse
} 
```
Los operadores de las condicionales son:
>* == ¿El primero es Igual que el segundo?
>* != ¿El primero es Diferente que el segundo?
>* \> ¿El primero es Mayor que el segundo?
>* < ¿El primero es Menor que el segundo?
>* \>= ¿El primero es Mayor o igual que el segundo?
>* <= ¿El primero es Menor o igual que el segundo?
>* !expr Niega la expresión
>* || ¿El primero O el segundo?
>* && ¿El primero Y el segundo?
>* ?? Si la primera es null evalúa la segunda
---
Puede utilizarse también un if-else en escalera, con varias condiciones, de esta manera:
```
if(condición){
	//Código
}
elseif(condición2)
{

}
elseif(condición3)
{

}
else{
	//Código
}
```
**Expresiones condicionales:**

Si queremos evaluar una expresión y si esta es null utilizar otra, usaremos el operador ?? de la siguiente manera:

expresion1 ?? expresion2

Ejemplo:
```
var nombre;
print(nombre ?? "invitado");

//Salida
invitado
```
Podemos transformar un if-else a una línea de código, de esta manera:
```
var edad = 19;
var adulto = edad >= 18 ? "Sí" : "No";

//Lo que está antes de "?"es la condición, lo que está despúes lo que pasa si se cumple, y lo que está despues de ":" lo que pasa si no se cumple
```

# Switch y Case

Switch/Case es una estructura de control utilizada para la toma de decisiones múltiples en las que se evalúa un valor y realiza un set de acciones dependiendo de cuál es el valor.
Ejemplo:
```
switch(valor) { 
   case expresion1: { 
      // acciones; 
   } 
   break; 
   case expresion2: { 
      //acciones; 
   } 
   break; 
      
   default: { 
      //acciones si no aplican las demás;  
   }
   break; 
} 
```
---
Reglas

- Se puede utilizar int, String y Enum como tipo para evaluar la condición.
- La claúsula case debe terminar con break, continue, throw o return.
- Si ningun case coincide con el valor evaluado, se utiliza la claúsula default.

**Sintaxis**
```
switch(opción){

	case expresion1:
		print("caso 1");
		break;
	case expresion2:
		print("caso 2");
		break;
	default:
		print("por defecto");
}
```
**Información adicional**

Con la claúsula continue se puede mandar al programa a una etiqueta definida. Por ejemplo:
```
//...//
case1:
	continue EtiquetaUno;
//...//
Etiqueta Uno:
	print("hola");
```

# For
El for es una estructura de control en la que se indica el número de iteraciones.

La estructura de un ciclo for es:
```
for(inicializador, condicion, incrementar/decrementar){
      //codigo
}
```
El ciclo for in recorre el contenido de una lista.

La estructura de un ciclo for in es:
```
List lista = ['a','b','c','d'];
for(Tipo nombreVariable in lista){
      print(nombreVariable);
}
```
---
**Ciclo for:** Ejecuta un bloque de código por n cantidad de veces.

**Sintaxis**
```
for(inicializador, condición, incrementar/decrementar){
	//Código
}
```
**Ciclo for…in:** Recorre el contenido de una lista.

**Sintaxis**
```
List lista = [1,2,3];

for(tipo nombreVariable in lista){
	print(nombreVariable);
}
```
**Ciclo forEach:** Es un metodo interno del objeto lista, y la recorre al igual que el ciclo for…in.

Sintaxis
```
List lista = [1,2,3];

lista.forEach((numero) {
	print(numero);
});
```
