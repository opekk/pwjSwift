func zadanie9_1(){
    var punkt1 = Punkt(x: 1, y: 1)
    var punkt2 = Punkt(x: -2)
    var punkt3 = Punkt()
    
    print("Punkt1:, \(punkt1.infoOPunckie(Punkt: punkt1))")
    print("Punkt2:, \(punkt1.infoOPunckie(Punkt: punkt2))")
    print("Punkt3:, \(punkt1.infoOPunckie(Punkt: punkt3))")
    print("-----------------------------")
    print("Odleglosc miedzy Punkt1 a Punkt2", punkt1.obliczanieOdleglosci(Punkt: punkt2))
    print(punkt2 > punkt1)
    
}

func zadanie9_2(){
    
    print("info o osobach: \n")
    let osoba1 = Osoba(imie: "Micek", nazwisko: "Oldakowksi", rokUrodzenia: 2003)
    let osoba2 = Osoba(imie: "Jan", nazwisko: "Kowalski", rokUrodzenia: 1990)
    
    print(osoba1.info())
    print(osoba2.info())
    
    print("-----------------------------")
    
    let ksiazka1 = Ksiazka(tytul: "Ksiazka1", autor: osoba1, liczbaStron: 100, rokWydania: 2024)
    let ksiazka2 = Ksiazka(tytul: "Ksiazka2", autor: osoba2, liczbaStron: 200, rokWydania: 2010)
    let ksiazka3 = Ksiazka(tytul: "Ksiazka3", autor: Osoba(imie: "Franek", nazwisko: "Frankowski", rokUrodzenia: 1985), liczbaStron: 300, rokWydania: 2003)
    let ksiazka4 = Ksiazka(tytul: "Ksiazka4", autor: Osoba(imie: "Jan", nazwisko: "Jankowski", rokUrodzenia: 2001), liczbaStron: 300, rokWydania: 2020)
    let ksiazka5 = Ksiazka(tytul: "Ksiazka5", autor: Osoba(imie: "Prangad", nazwisko: "Magodwski", rokUrodzenia: 1967), liczbaStron: 300, rokWydania: 1990)

    var tablicaKsiazek: [Ksiazka] = [ksiazka1, ksiazka2, ksiazka3, ksiazka4, ksiazka5]
    tablicaKsiazek.sort(by: {$0.getLiczbaStron() < $1.getLiczbaStron()})
    for ksiazka in tablicaKsiazek{
        print(ksiazka.info())
    }
   
}
