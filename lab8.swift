//
//  lab8.swift
//  swiftLaby
//
//  Created by Maciek on 22/11/2024.
//

import Foundation


func zad8_1(){
    
    struct LiczbaZespolona{
        var re: Double
        var im: Double
        
        init(re: Double, im: Double){
            self.re = re
            self.im = im
        }
    }
    
    func dodwanieLiczbZespolonych(a: LiczbaZespolona, b: LiczbaZespolona) -> (Double, Double){
        return (a.re + b.re, a.im + b.im)
    }
    func odejmowanieLiczbZespolonych(a: LiczbaZespolona, b: LiczbaZespolona) -> (Double, Double){
        return (a.re - b.re, a.im - b.im)
    }
    func mnozenieLiczbZespolonych(a: LiczbaZespolona, b: LiczbaZespolona) -> (Double, Double){
        
        return (a.re * b.re - a.im * b.im, a.re * b.im + a.im * b.re)
    }
    
    let imNum1 = LiczbaZespolona(re: 7.0, im: 5.0)
    let imNum2 = LiczbaZespolona(re: 4.0, im: 3.0)
   
    let sum = dodwanieLiczbZespolonych(a: imNum1, b: imNum2)
    let diff = odejmowanieLiczbZespolonych(a: imNum1, b: imNum2)
    let prod = mnozenieLiczbZespolonych(a: imNum1, b: imNum2)
    
    
    print("suma: \(sum)")
    print("odejmowanie: \(diff)")
    print("mnozenie: \(prod)")
    
    // menu
   
}


func zad8_2(){
    
    struct rzutOszczepem: Hashable{
        var ID: String;
        let proby: [Double]
        var srednia: Double
        
        init(ID: String, proby: [Double], srednia: Double) {
            self.ID = ID
            self.proby = []
            self.srednia = 0
        }
    }
    
    func sredniaZProb(proby: [Double]) -> Double{
        return proby.reduce(0, +) / Double(proby.count)
    }
    
    
    var setRzutOszczepem: Set<rzutOszczepem> = []
    
    for i in 0...3{
        print("podaj ID:")
        let ID = readLine()!
        print("podaj proba1:")
        let proba1 = Double(readLine()!)!
        print("podaj proba2:")
        let proba2 = Double(readLine()!)!
        print("podaj proba3:")
        let proba3 = Double(readLine()!)!
        setRzutOszczepem.insert(rzutOszczepem(ID: ID, proby: [proba1, proba2, proba3], srednia: sredniaZProb(proby: [proba1, proba2, proba3])))
    
    }
    
    
    print(setRzutOszczepem)
    
    
    
}
