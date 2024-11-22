//
//  main.swift
//  lab2
//
//  Created by Maciek on 07/10/2024.
//

import Foundation

func zadanie2_1(){
    print("podaj dlugosc boku szescianu: ")
    let bokSzescianu = Double(readLine()!)!
    let poleSzescianu: Double = 6 * pow(bokSzescianu,2)
    let objetoscSzescianu: Double = pow(bokSzescianu,3)
    if  bokSzescianu >  0 {
        print("pole szescianu:", String(format: "%.2f", poleSzescianu), "objetosc szescianu:", String(format: "%2.f", objetoscSzescianu))
    }
    else { print("zla wartosc") }
}

func zadanie2_2(){
    
    print("podaj cene listwy.")
    let cenaListwy: Double = Double(readLine()!)!
    print("podaj wymiar a.")
    let wymiarA: Double = Double(readLine()!)!
    print("podaj wymiar b.")
    let wymiarB: Double = Double(readLine()!)!
    print("podaj wymiar z.")
    let wymiarZ: Double = Double(readLine()!)!
    print("podaj szerokosc drzwi.")
    let szerokoscDrzwi: Double = Double(readLine()!)!
    if(cenaListwy > 0 && wymiarA > 0 && wymiarB > 0 && wymiarZ > 0 && szerokoscDrzwi > 0){
        let obwodMieszkania = (wymiarA * wymiarB + wymiarZ * wymiarB) - szerokoscDrzwi
        let kosztListwy = cenaListwy * obwodMieszkania
        
        print("Obwod mieszkania wynosi: ", String(format:"%.2f", obwodMieszkania))
        
        print("Cena za listwe wynosi: ", String(format:"%.2f", kosztListwy))
    }
    else {
        print("Podano zle wartosci. ")
    }
}


func zadanie2_3(){
    var suma: Int = 0
    for _ in 1...3{
        var randomLiczba = Int.random(in:1...9)
        print("Wylosowana liczba to: ", String(randomLiczba))
        suma += randomLiczba
    }
    print("Suma wylosowanych liczb to: ", String(suma))
}

func zadanie2_4(){
    var srednia: Double
    var sumaOcen: Double = 0
    var sumaWag: Int = 0
    for _ in 1...3{
        print("podaj ocene: ")
        let ocena: Double = Double(readLine()!)!
        print("podaj wage: ")
        let waga: Int = Int(readLine()!)!
        if [2.0,3.0,3.5,4.0,4.5,5.0].contains(ocena){
            sumaOcen += ocena * Double(waga)
            sumaWag += waga
        }
        else{
            print("podano zle oceny")
        }
    }
    srednia = Double(sumaOcen) / Double(sumaWag)
    
    print("Srednia wynosi: ", String(format: "%.2f", srednia))
    
}

func zadanie2_5(){
    let string1 = "Napis jednolionowy"
    let string2 = """
    Napis
    dwulionowy
    """
    print("Napis jednoliniowy: ", string1)
    print("Napis dwuliniowy: ", string2)
}

func zadanie2_6(){
    let string = "\t Nauka kodowania to nie tylko nauka jezyka technologii \n \n \t To odkrywanie nowych sposobow myslenia \n \n \t i urzeczywistnianie rozmaitych koncepcji. \n"
    print(string)
}

func zadanie2_7(){
    var name: String = ""
    var secondName: String = ""
    var surname: String = ""
    var yearOfBirth: Int = 0
    
    print("Podaj swoje imie: ")
    name = readLine()!
    print("Podaj swoje drugie imie: ")
    secondName = readLine()!
    print("Podaj swoje nazwisko: ")
    surname = readLine()!
    print("Podaj swoj rok urodzenia: ")
    yearOfBirth = Int(readLine()!)!
    let yearOfBirthString = String(yearOfBirth)
    
    let components = [name, secondName, surname, yearOfBirthString]
    
    let polecenie1 = "\(components[0]) \(components[1]) \(components[2]) \(components[3])"
    print(polecenie1)
    
    var polecenie2 = polecenie1
    
    if let range = polecenie1.range(of: " \(components[1])") {
        polecenie2.removeSubrange(range)
        }
    print("polecenie2: ", polecenie2)
    
    var polecenie3 = polecenie1
    
    if let range = polecenie1.range(of: " \(components[3])") {
        polecenie3.removeSubrange(range)
        }
    let age = 2024 - yearOfBirth
    polecenie3.append(" \(age)")
    
    print("polecenie3: ", polecenie3)
    
    if name.hasPrefix("D") {
        print("Imie zaczyna sie na litere D. ")
    }
    else{
        print("Imie nie zaczyna sie na litere D. ")
    }
   
}
