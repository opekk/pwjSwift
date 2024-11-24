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
    print("1 - dodawanie, 2 - odjemowanie, 3 - mnozenie: ")
    let choice = Int(readLine()!)!
    
    switch choice{
    case 1:
        let sum = dodwanieLiczbZespolonych(a: imNum1, b: imNum2)
        print("suma: \(sum)")
    case 2:
        let diff = odejmowanieLiczbZespolonych(a: imNum1, b: imNum2)
        print("roznica: \(diff)")
    case 3:
        let prod = mnozenieLiczbZespolonych(a: imNum1, b: imNum2)
        print("iloczyn: \(prod)")
    default: print("nie ma takiej opcji")
        
    }
}


func zad8_2(){
    
    struct rzutOszczepem: Hashable{
        var ID: String;
        var proba1: Double
        var proba2: Double
        var proba3: Double
        var srednia: Double
        
        init(ID: String, proba1: Double, proba2: Double, proba3: Double) {
            self.ID = ID
            self.proba1 = proba1
            self.proba2 = proba2
            self.proba3 = proba3
            self.srednia = (self.proba1 + self.proba2 + self.proba3) / 3.0
        }
    }
    
    var tablica: [(rzutOszczepem, Double)] = []
    
    for i in 0...3{
        print("podaj ID:")
        let ID = readLine()!
        print("podaj proba1:")
        let proba1 = Double(readLine()!)!
        print("podaj proba2:")
        let proba2 = Double(readLine()!)!
        print("podaj proba3:")
        let proba3 = Double(readLine()!)!
        var uczestnik = rzutOszczepem.init(ID: ID, proba1: proba1, proba2: proba2, proba3: proba3)
        var srednia = uczestnik.srednia
        tablica.append((uczestnik, uczestnik.srednia))
    }
    
    var max = 0
    var min = 0
    for i in 0..<tablica.count{
        if tablica[i].1 > tablica[0].1{
            max = i
        }
        if tablica[i].1 < tablica[0].1{
            min = i       }
    }
    
    print("Usunieto uczestnika: \(tablica[min])")
    tablica.remove(at: min)
    print("Maksymalna srednia: \(tablica[max])")
    
}
    

func zad8_3(){
    
}


func zad8_4(){
    
    var studenci: [String: String] = [:]
    
    for i in 0..<5 {
        print("Podaj id studenta: ")
        var studentID: String = readLine()!
        print("Podaj nazwisko studenta: ")
        var studentNazwisko: String = readLine()!
        studenci[studentID] = studentNazwisko
    }
    print("Podaj id studenta")
    var szukanyStudentID: String = readLine()!
    print("Podaj nazwisko studenta")
    
    
    
    
    print(studenci.reversed())
    
}

func zad8_5(){
    
}
