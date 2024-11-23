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

func zad6_2() {
    
}

