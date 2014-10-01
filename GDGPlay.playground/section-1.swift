// Playground - Exploremos características de Swift jugando :3
/**
@author: Joel Humberto Gómez Paredes
@group: GDG Monterrey
@version: 1.0.3
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

//También tenemos algo cool llamado tuplas

var tupla = (1,0)
tupla.0
tupla.1

//También puedes ponerle clave como a los diccionarios
var tuplaNombrada = (valor1: "Valor uno", valor2: "Valor dos")
tuplaNombrada.0
tuplaNombrada.1

tuplaNombrada.valor1
tuplaNombrada.valor2

//Bueno ahora que entramos en temas más interesantes vamos a ver condicionales, recuerden que la sentencia if evalua el resultado de una expresión booleana

if false | 1 == 1 {
    println("Hola")
}


//Tenemos if-else, pero también if-else if
if false {

} else if true {
    println("Hola again")
}

//Ese if es muy cool si tenemos operaciones arrojarán un valor opcional, un valor opcional puede contener un valor o puede contener un dato nulo, si el resultado es nulo pues no se ejecuta lo que esta dentro del if, vamos prueba :D
if let numero = "1".toInt() {
    println("\(numero) esta establecido")
} else {
    println("No esta definido, es nulo, demos vueltas y lloremos D:")
}


//Muy cool verdad? Bueno ahora haremos algo con Switch, un Switch muy coqueto, dejenme contarles una historia, hay una sentencia llamada break que va en cada sentencia "case" de un switch, resulta algo molesta ya que sino la pones hace todo lo demas...es horrible, pero en swift es al reves, para ejecutar "cases" consecutivos se usa la palabra reservada fallthrough

let numero = 10


switch numero {
case 1: "Es uno"
default: "No es uno" // Default es obligatorio
}

//Podemos evaluar rangos
switch numero {
case 1: "Es uno"
case 2...10: "Esta entre 2 y 11"
    //Descomenten la linea de abajo y vean que no les miento
    //fallthrough
default: "No es uno"
}

//Algo muy cool tambien es que podemos hacer una evaluación del valor, usando let y where :D
switch numero {
case 1: "Es uno"
case let x where  2...10 ~=  x && x % 2 == 0: "Es par y esta entre 2 y 10"
    //Descomenten la linea de abajo y vean que no les miento
    //fallthrough
default: "No es uno"
}

//Tambien podemos evaluar cadenas y tuplas con switch :D




switch tupla{
    //Podemos evaluar la tupla completa
case (1,1): "Hola :D"
    //Podemos evaluar solo parte de la tupla
case (_,0): "Uno de sus valores es 0"
//Podemos evaluar rangos en la tupla
case (0...1, 0...1): "Rangos, cool"
default: "No coinciden"
}

//Muy bien, si llegaste hasta aqui mis respetos, ahora veremos ciclos y en el próximo playground haremos algoritmos, funciones, structs y clases ya que tenemos los conocimientos básicos vistos en este play...jajaja, no esta tan bueno pero hay algunas cosas coquetas

//Primero comencemos con el while, con su sintaxis clásica
var i = 0;
while i < 10{
    i++
}

//El famoso do-while
i = 0
do{
    i++
} while i < 10

//Y ahora el padre de los ciclos, el poderoso for
for var x = 0; x < 10; x++ { //Un clásico
    println(x)
}

//El for de rangos u objetos
for x in 1...10 {
    println(x)
}

//Cadenas :3
for x in "Hola" {
    println(x)
}

//Y algo muy cool, podemos dejar el espacio para el iterador vacio :) por si solo necesitamos hacer iteraciones sin necesidad de un contador

for _ in 1...10 {
    println("hola")
}

//Tambien podemos iterar diccionarios
let numeros = ["uno": 1, "dos": 2, "tres": 3]
for (clave, valor) in numeros {
    println("Clave: \(clave) Valor:\(valor)")
}

// Y valores opcionales
for (_, valor) in numeros {
    println(" Valor:\(valor)")
}

//Bueno ahora hablaremos de funciones, estas son pequeños fragmentos de código con una funcionalidad definida, esta organización nos permite reutilizar el código

//Función que no recibe parametros ni regresa un valor
func holaFuncion(){
    println("Hola Funcion")
}

holaFuncion()

//Ahora una función que recibe 2 parametros
func dosValores(hola: String, mundo: String)->String{
    return hola+" "+mundo;
}

dosValores("hola", "mundo")

//Ahora veamos una función que regresa multiples parametros
func dosValoresMultiples(hola: String, mundo: String)->(String, String){
    return ( hola, mundo)
}

//Tambien podemos regresar múltipleas valores y acceder a ellos mediante un indice o su nombre local
let mensaje = dosValoresMultiples("Hola ", "Mundo")
println(mensaje.0)

//Les podemos poner nombres a los parametros para que se diviertan
func dosValoresFancy(aquivahola hola: String, aquivamundo mundo: String)->String{
    return hola+" "+mundo
}


let mensaje2 = dosValoresFancy(aquivahola: "Hola", aquivamundo:"Mundo")
println(mensaje2)

//También podemos usar parámetros por default :D
func imprimeMensaje(mensajeDefault:String = "Hola Monterrey"){
    println(mensajeDefault)
}

imprimeMensaje()

//Se puede escribir el nombre de los parametros o no hacerlo, esto aplica solo para aquellos parametros que no tengan un valor por defecto
func imprimeMensajeOpcional(mensajeDefault:String = "Hola Monterrey", stringNoOpcional: String){
    println(mensajeDefault)
}

imprimeMensajeOpcional(mensajeDefault: "Hola","" )

//Cantidad de argumentos variables...también esta dospoble en swift
func sumaArgumentosVariables(numeros: Int...)->Int{
    var suma:Int = 0
    for i in numeros{
        suma += i;
    }
    return suma
}

sumaArgumentosVariables(2,3,10)

//Normalmento los parametros en las funciones son pasados por valor pero también pueden ser usados como referencia. Esto poniendo la palabra inout antes de la declareción del parametro y pasando el "apuntador" a la función

func argumentosVariables (inout numero:Int)->Int{
    return ++numero
}

var myNumber = 11;
argumentosVariables(&myNumber)
myNumber






