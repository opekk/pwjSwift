//
//  main.swift
//  lab3
//
//  Created by Maciek on 21/10/2024.
//

import Foundation

func zad1(){
    
    var ciag: String = readLine()!
    var char: Character = readLine()!.first!
    var index: Int = Int(readLine()!)!
    
    
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

func zad2(){
    var ciag1: String = readLine()!
    var ciag2: String = readLine()!
    var prefiks: String = readLine()!
    var suffiks: String = readLine()!
    
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

func zad3(){
    let year = Int(readLine()!)!
    
    if (year.isMultiple(of: 4) && !year.isMultiple(of: 100) || year.isMultiple(of: 400)){
                print("rok \(year) jest przestepny")
            } else {
                print("rok \(year) nie jest przestepny")
            }
        
}

func zad4(){
    
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

func zad5(){
    

}


func zad7(){
    let char = Character(readLine()!)
    
}

zad3()
