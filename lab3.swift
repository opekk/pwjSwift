//
//  main.swift
//  lab3
//
//  Created by Maciek on 21/10/2024.
//

import Foundation

func zad3_1(){
    
    let ciag: String = readLine()!
    let char: Character = readLine()!.first!
    let index: Int = Int(readLine()!)!
    
    
    if (ciag[ciag.startIndex] == char){
        print("ciag znaczyna sie na \(char)")
    }
    if (ciag[ciag.index(before: ciag.endIndex)] == char){
        print("ciag konczy sie na \(char)")
    }
    if(ciag[ciag.index(ciag.startIndex, offsetBy: index)] == char){
        print("\(char) znajduje sie na \(index) od przodu")
        }
    if (ciag[ciag.index(ciag.endIndex, offsetBy: -index - 1)] == char){
        print("\(char) znajduje sie na \(index) od tylu")
    }
}

func zad3_2(){
    let ciag1: String = readLine()!
    let ciag2: String = readLine()!
    let prefiks: String = readLine()!
    let suffiks: String = readLine()!
    
    if(ciag1 == ciag2){
        print("sa idnetyczne.")
    }
    
    if (ciag1.hasPrefix(prefiks) && ciag2.hasPrefix(prefiks)){
        print("oba ciagi maja prefiks: \(prefiks)")
    }
    
    if (ciag1.hasSuffix(suffiks) && ciag2.hasSuffix(suffiks)){
        print("oba ciagi maja suffiks: \(suffiks)")
    }
}

func zad3_3(){
    let year = Int(readLine()!)!
    
    if (year.isMultiple(of: 4) && !year.isMultiple(of: 100) || year.isMultiple(of: 400)){
                print("rok \(year) jest przestepny")
            } else {
                print("rok \(year) nie jest przestepny")
            }
        
}

func zad3_4(){
    
    let year = String(readLine()!)
    if Int(year)! >= 2 && Int(year)! <= 3010{
        var answer: Int = 0
        var yearPrefix: String = " "
        if year.last != "0"{
               answer+=1
        }
        yearPrefix = String(year.prefix(2))
        answer += Int(yearPrefix)!
        print("wiek: ", answer)
    }
    
}


func zad3_5(){
    let srednia = Double(readLine()!)!
    var stypendium: Int
    
    switch srednia{
    case _ where srednia >= 4.5: stypendium = 200
    case _ where srednia >= 4.0 && srednia < 4.5: stypendium = 150
    case _ where srednia >= 3.5 && srednia < 4.0: stypendium = 100
    case _ where srednia < 3.0: stypendium = 0
    default: stypendium = 0
    }
    
}



func zad3_6(){
    print("podaj liczbe1: ")
    let liczba1 = Int(readLine()!)!
    print("podaj liczbe2: ")
    let liczba2 = Int(readLine()!)!
    print("podaj wartosc: 1 - dodawanie, 2 - odejmowanie, 3 - mnozenie, 4 - dzielenie: ")
    let wybor = readLine()!
    switch wybor{
    case "1": print(liczba1 + liczba2)
    case "2": print(liczba1 - liczba2)
    case "3": print(liczba1 * liczba2)
    case "4": if(liczba2 != 0) { print(liczba1 / liczba2) }
        else { print("nie mozna dzielic przez 0") }
    default: print("nie ma takiej opcji")
        
    }
    
}


func zad3_7(){
    print("podaj znak: ")
    let char = Character(readLine()!)
    let samogloski = ["a", "e", "i", "o", "u", "y"]
    let spolgloski = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z"]
    
    switch true {
        case samogloski.contains(String(char)): print("to jest samogloska")
        case spolgloski.contains(String(char)): print("to jest spolgloska")
        case char.isNumber: print("to jest liczba")
        default: print("to jest inny znak")
    }
    
}

