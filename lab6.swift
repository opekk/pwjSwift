//
//  main.swift
//  swiftLaby
//
//  Created by Maciek on 22/11/2024.
//
import Foundation


func zad6_1() {
    
   
    print("podaj i: ")
    var i = Int(readLine()!)!
    print("podaj j: ")
    let j = Int(readLine()!)!
    var arr = Array(repeating: Array(repeating: 0, count: j), count: i)
    for row in 0..<i {
        for column in 0..<j {
            var temp = Int.random(in: -100...100)
            arr[row][column] = temp
        }
    }
    print(arr)
    var szuakna = 0
    print("podaj wartosc szukana: ")
    let szukana = Int(readLine()!)!
    var max = arr[0][0]
    var min = arr[0][0]
    
    for row in 0..<i {
        for column in 0..<j {
            if arr[row][column] == szukana {
                szuakna += 1
            }
            if arr[row][column] > max {
                max = arr[row][column]
                }
            if arr[row][column] < min {
                min = arr[row][column]
            }
        }
    }
    print("max: \(max)")
    print("min: \(min)")
    print("szukana: \(szuakna)")
}


func macierzSymetryczna(macierz: [[Int]]) -> Bool{      //6.2.1
    var rows = macierz.count
    var cols = macierz[0].count
    return rows == cols
}

func 



func macierzNorma(macierz: [[Int]]) -> Double{      // 6.2.3
    
    var suma: Double = 0
    
    for i in 0..<macierz.count{
        for j in 0..<macierz[i].count {
            suma += pow(Double(macierz[i][j]),2)
        }
    }
    return Double(suma).squareRoot()
}


func macierzDiagonalna(macierz: [[Int]]) -> Bool{      //6.2.5
    var rows = macierz.count
    var cols = macierz[0].count
    if rows != cols {return false}
    
    for i in 0..<rows {
        if macierz[i][i] == 0  {
            return false
        }
    }
    return true
}

func macierzPrzekatnaDominujacaGlowna(macierz: [[Int]]) -> Bool{    // 6.2.6
    var rows = macierz.count
    var cols = macierz[0].count
    var suma = 0
    if rows != cols {return false}
    
    for i in 1..<rows {
        suma += macierz[i][i]
        }
    return macierz[0][0] > suma
}




func zad6_2() {

    let mac: [[Int]] = [[1, 2, 3], [4, 5, 6],[7,8,9]]
    
    print(macierzSymetryczna(macierz: mac))
    print(macierzNorma(macierz: mac))
    print(macierzDiagonalna(macierz: mac))
    print(macierzPrzekatnaDominujacaGlowna(macierz: mac))
    
    
}

