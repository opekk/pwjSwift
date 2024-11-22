//
//  main.swift
//  lab4
//
//  Created by Maciek on 27/10/2024.
//

import Foundation


func zad4_1(){
    var next = 0
    let licz = Int(readLine()!)!    // wartosc
    var zmienna = 0
    var temp1 = 0
    var temp2 = 1

    while licz > next {
        next = temp1 + temp2
        if next > licz {break;}
        if zmienna == 0 {
            print(0)
        } else if zmienna == 1 {
            print(1)
        } else {
            print(next)
            temp1 = temp2
            temp2 = next
        }

        zmienna += 1
    
    }
    
}

func zad4_2(){
    var number = Int(readLine()!)!
    var temp = 0
    
    for i in stride(from: 100000, through: 1, by: -1){
        if number.isMultiple(of: i){
            temp += 1
        }
    }
    if temp > 2 {print("liczba nie jest pierwsza."); exit(1)}
    else {print("liczba jest pierwsza.")}
    }

func zad4_3(){
    
    let ciag = Int(readLine()!)!
    let stringCiag = String(ciag)
    var suma = 1
    var pierwiastek: Double = 0
    
    if stringCiag.count < 3{print("zla dlugosc ciagu.")}
    else{
        for x in stringCiag{
            suma *= Int(String(x))!
            print(suma)
            pierwiastek += 1
        }
        let answer: Double = pow(Double(suma), Double(1)/pierwiastek)
        print("answer: ", String(format: "%.2f", answer))
    }

}

func zad4_4(){
    let ciag = readLine()!
    var temp1 = 0
    let temp2 = ciag.count
    while temp1 < temp2 / 2{
        if ciag[ciag.index(ciag.startIndex, offsetBy: temp1)] == ciag[ciag.index(ciag.endIndex, offsetBy: -temp1 - 1)]{
            temp1 += 1
        } else{print("nie jest palindromem"); return}
    }
    print("jest palindromem")
 }

func zad5(){
    var (a,b,c) = (Int(),Int(),Int())
    var (min,max) = (Int(),Int())
    
    let arrayTest: Array<Int> = [1,5,7,3,2,1,5,3]
    let numbCount = Int(arrayTest.count - 2)
    
    for x in stride(from: 0, to: numbCount, by: 1){
        a = arrayTest[x]
        b = arrayTest[x+1]
        c = arrayTest[x+2]
        if( b > a && b > c){ max += 1; print("znaleziono max w ", a, b, c )}
        else if( b < a && b < c){min += 1; print("znaleziono min w ", a, b, c )}
    }
    print("max: ", max)
    print("min: ", min)
}

