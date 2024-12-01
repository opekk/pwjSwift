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
            min = i}
    }
    print("Usunieto uczestnika: \(tablica[min])")
    tablica.remove(at: min)
    print("Maksymalna srednia: \(tablica[max])")
    
}
    

func zad8_3(){
    
    var auta = Set<String>()
    for i in 0..<5{
        print("podaj marke auta: ")
        let marka = readLine()!
        auta.insert(marka)
    }
    print("\n wszystkie auta: ")
    for auto in auta{
        print(auto)
    }
    print("podaj marke auta do usuniecia: ")
    let usunAuto = readLine()!
    if auta.contains(usunAuto) {auta.remove(usunAuto)}
    else {print("nie ma takiego auta")}
    
    print("\n wszystkie auta po usunieciu: ")
    for auto in auta{
        print(auto)
    }
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
    for stu in studenci{
        print("id studenta: \(stu.key), nazwisko studenta: \(stu.value)")
    }
    
    print("\n Podaj id studenta")
    var szukanyStudentID: String = readLine()!
    print("Podaj nazwisko studenta")
    var szukanyStudentNazwisko: String = readLine()!
    
    if(studenci[szukanyStudentID] == szukanyStudentNazwisko){
        print("Student o podanym id i nazwisku istnieje \n")
    }
    else{
        print("Student o podanym id i nazwisku nie istnieje \n")
    }
    print(" Podaj id studenta")
    var szukanyStudentIDdoUsuniecia: String = readLine()!
    print("Podaj nazwisko studenta")
    var szukanyStudentNazwiskoDoUsuniecia: String = readLine()!
    if(studenci[szukanyStudentIDdoUsuniecia] == szukanyStudentNazwisko){
        studenci.removeValue(forKey: szukanyStudentIDdoUsuniecia)
    }
    print("lista studentow po usunieciu: \n")
    for stu in studenci{
        print("id studenta: \(stu.key), nazwisko studenta: \(stu.value)")
    }
}

func zad8_5(){
    struct Lot {
        var miejsceWylotu: [String: String]
        var miejsceDocelowe: [String: String]
        var czasPodrozy: Int

        static func wczytajLoty() -> [Lot] {
            print("Podaj liczbę lotów do wczytania:")
            let liczbaLotow = Int(readLine() ?? "0") ?? 0
            var loty: [Lot] = []

            for i in 1...liczbaLotow {
                print("\nWczytywanie danych dla lotu \(i):")
                print("Podaj numer lotniska wylotu:")
                let numerWylotu = readLine() ?? ""
                print("Podaj nazwę lotniska wylotu:")
                let nazwaWylotu = readLine() ?? ""

                print("Podaj numer lotniska docelowego:")
                let numerDocelowe = readLine() ?? ""
                print("Podaj nazwę lotniska docelowego:")
                let nazwaDocelowe = readLine() ?? ""

                print("Podaj czas podróży (w minutach):")
                let czasPodrozy = Int(readLine() ?? "0") ?? 0

                loty.append(
                    Lot(
                        miejsceWylotu: ["Numer": numerWylotu, "Nazwa": nazwaWylotu],
                        miejsceDocelowe: ["Numer": numerDocelowe, "Nazwa": nazwaDocelowe],
                        czasPodrozy: czasPodrozy
                    )
                )
            }

            return loty
        }
        static func wypiszLot(lot: Lot) {
            print("Miejsce wylotu: \(lot.miejsceWylotu["Numer"] ?? "") - \(lot.miejsceWylotu["Nazwa"] ?? "")")
            print("Miejsce docelowe: \(lot.miejsceDocelowe["Numer"] ?? "") - \(lot.miejsceDocelowe["Nazwa"] ?? "")")
            print("Czas podróży: \(lot.czasPodrozy) minut")
        }

        static func sredniCzasPodrozy(loty: [Lot]) -> Double {
            let sumaCzasow = loty.reduce(0) { $0 + $1.czasPodrozy }
            return Double(sumaCzasow) / Double(loty.count)
        }

        static func wypiszLotyDluzejNizSrednia(loty: [Lot]) {
            let srednia = sredniCzasPodrozy(loty: loty)
            print("\nLoty, które trwają dłużej niż średnia (\(srednia) minut):")
            for lot in loty where Double(lot.czasPodrozy) > srednia {
                wypiszLot(lot: lot)
                print("--------------------")
            }
        }
        static func usunLotyKrocejNizSrednia(loty: inout [Lot]) {
            let srednia = sredniCzasPodrozy(loty: loty)
            loty = loty.filter { Double($0.czasPodrozy) >= srednia }
        }
        static func wypiszLoty(loty: [Lot]) {
            for lot in loty {
                wypiszLot(lot: lot)
                print("--------------------")
            }
        }
    }

    func zad5(){
        var loty = Lot.wczytajLoty()
        print("\nWszystkie loty:")
        Lot.wypiszLoty(loty: loty)
        Lot.wypiszLotyDluzejNizSrednia(loty: loty)
        print("\nUsuwanie lotów krótszych niż średnia...")
        Lot.usunLotyKrocejNizSrednia(loty: &loty)
        print("\nLoty po usunięciu krótszych niż średnia:")
        Lot.wypiszLoty(loty: loty)
    }
    
}

