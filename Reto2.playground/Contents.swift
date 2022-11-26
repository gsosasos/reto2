import UIKit

/*
 *
 Genera una funcion que permita recibir un texto y que pueda imprimir la cantidad de veces que se repite una letra

 Ejem:la historia de mi vida
 Resultado:
 l = 1
 a = 3
 h = 1
 i = 4
 s = 1
 t = 1
 o = 1
 r = 1
 d = 2
 e = 1
 m = 1
 v = 1
 */
func getFunctionCountCharacters(sentence: String)  {
    
    let words = sentence.split { !$0.isLetter }
    
    print(words) // "["I", "want", "to", "an", "algorithm", "that", "could", "help", "find", "out", "how", "many", "words", "are", "there", "in", "a", "string", "separated", "by", "space", "or", "comma", "or", "some", "character", "And", "then", "append", "each", "word", "separated", "by", "a", "character", "to", "an", "array", "which", "could", "be", "added", "up", "later", "I", "m", "making", "an", "average", "calculator", "so", "I", "want", "the", "total", "count", "of", "data", "and", "then", "add", "up", "all", "the", "words", "By", "words", "I", "mean", "the", "numbers", "separated", "by", "a", "character", "preferably", "space", "Thanks", "in", "advance"]\n"

    print(words.count)  // 80
    
}

func getotherfunction(sentence:String){
    
    
    print("Oracion original : "+sentence)
    
    let oracionSinEspacios:String = sentence.replacingOccurrences(of: " ", with: "")
    
    
    //let trimmedString = sentence.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
  
    print("Oracion sin espacios : "+oracionSinEspacios)
    
    var lista = [String]()
    
    for caracter in oracionSinEspacios {
        let stTexto=String(caracter)
               
        if (!lista.contains(stTexto)){
            lista.append(stTexto)
        }
    }
    
    for letra in lista{
            
            let cantidad=oracionSinEspacios.filter{String($0) == letra}.count
             print(letra+"= \(cantidad)")
        }
    
    
}


let paragraph = "la historia de mi vida"

//getFunctionCountCharacters(sentence: paragraph)
getotherfunction(sentence:paragraph)
