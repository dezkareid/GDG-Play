// Playground - Exploremos características de Swift jugando :3
/**
Author: Joel Humberto Gómez Paredes
Group: GDG Monterrey
*/
import UIKit

//Con var definimos una variable, las variables definen el tipo mas adecuado de acuerdo al valor asignado solo la primera vez
var GDG_Monterrey_Saludo = "Hola amigos del GDG"

//Una vez definido el tipo no puedes cambiarlo, descomenta y ve el error
//saludo = 1

//También podemos definir el tipo de dato desde un principio
var tipoDefinido : Int = 1

//En swift no necesitamos ; hell yes, sin embargo podemos usar ; para separar instrucciones en una misma linea
var valor1 = 1; var valor2 = 2, valor3 = 3

//Con let definimos una constante
let start = "Swiftastic"

//Aqui marca error porque no podemos cambiar el valor de una constante, descomenta y ve el error
//start = "Otro mensaje"

//Podemos concatenar de manera fácil
GDG_Monterrey_Saludo += " Monterrey"

//Para imprimir valores no necesitamos aplicar formato  a una cadena, solo especificar el valor dentro de \(aqui va la variable)

println("Un mensaje: \(start) Una variable: \(valor1) Hasta resultados de operaciones\(valor2+valor3)")

//El casting es algo simple tambien, para realizarlo basta con poner el tipo de dato y entre parentesis ira la variable a convertir
var valor1String : String = String(valor1)

//Aunque en algunos casos esto no funciona, ya que no esta definida la conversión para el tipo de dato que queremos realizar, en el caso de conversion de cadena a número lo hacemos usando el metodo toInt, pero este no regresa un entero sino una entero opcional, para poder acceder al valor de ese dato opcional debemos hacer uso del simbolo de admiracion !
valor1 = valor1String.toInt()!
var valor1Double = Double(valor1)

//Esto de los tipos opcionales esta de lujo porque nos permite hacer verificaciones de datos fácilmente

if valor1String.toInt() != nil {
    valor1 = valor1String.toInt()!
}

//Notaron el if? No usa parentesis :)

//Continuemos, ahora vamos a definir arreglos

var arreglo = [1,2,3]

var arregloDefinido : [Int] = [1,2,3]

var arregloVacio = []

//Ahora con diccionarios...si, es similar a un arreglo

var diccionario = ["GDG": "Monterrey", "eventos" : 2]

var diccionarioDefinido : [String : Int] = ["one":1]