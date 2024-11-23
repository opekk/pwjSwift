import Foundation

func zad7_1() {
    
    typealias osoba = (imie: String, nazwisko: String, wiek: Int)
    
    let osoba1 = osoba("Jan", "Kowalski", 14)
    let osoba2 = osoba("Anna", "Kowalczyk", 18)
    
    if osoba1.wiek > osoba2.wiek { print("\(osoba1.imie) ma wiecej lat niz \(osoba2.imie)")}
    else { print("\(osoba2.imie) ma wiecej lat niz \(osoba1.imie)")}
}

func zad7_2() {
    
    enum Ocena: Double{
        case A = 5.0
        case B = 4.5
        case C = 4.0
        case D = 3.5
        case E = 3.0
        case F = 2.0
        case empty = 0.0
    }
    
    func srednia(s: student) -> Double{
        let srednia = (s.ocena1.rawValue + s.ocena2.rawValue + s.ocena3.rawValue) / 3.0
        return srednia
    }
    
    func wpisanieDanychStudent(s: inout student) {
        print("podaj nazwisko studenta: ")
        var nazwisko1 = readLine()!
        s.nazwisko = nazwisko1
        print("podaj ocene1: ")
        var ocena1 = Double(readLine()!)!
        s.ocena1 = Ocena(rawValue: ocena1)!
        print("podaj ocene2: ")
        var ocena2 = Double(readLine()!)!
        s.ocena2 = Ocena(rawValue: ocena2)!
        print("podaj ocene3: ")
        var ocena3 = Double(readLine()!)!
        s.ocena3 = Ocena(rawValue: ocena3)!
    }
    
    func wyswietlenieStudent(s: student){
        print("nazwisko: \(s.nazwisko)")
        print("ocena1: \(s.ocena1)")
        print("ocena2: \(s.ocena2)")
        print("ocena3: \(s.ocena3)")
        print("srednia: \(sredniaStudent(s: s))")
    }
    
    func sredniaStudent(s: student) -> Double{
        return (s.ocena1.rawValue + s.ocena2.rawValue + s.ocena3.rawValue) / 3.0
    }
    
    typealias student = (nazwisko: String, ocena1: Ocena, ocena2: Ocena, ocena3: Ocena)
    var student1: student = (" ", .empty, .empty, .empty)
    var student2: student = (" ", .empty, .empty, .empty)
    var student3: student = (" ", .empty, .empty, .empty)
    
    wpisanieDanychStudent(s: &student1)
    wpisanieDanychStudent(s: &student2)
    wpisanieDanychStudent(s: &student3)
    wyswietlenieStudent(s: student1)
    wyswietlenieStudent(s: student2)
    wyswietlenieStudent(s: student3)

}

func zad7_3() {
    enum Miesiac{
        case Styczen, Luty, Marzec, Kwiecien, Maj, Czerwiec, Lipiec, Sierpien, Wrzesien, Pazdziernik, Listopad, Grudzien
        
        
        func jakiMiesiac(){
            switch self{
            case .Styczen, .Luty, .Grudzien: print("Jest zima")
            case .Marzec, .Kwiecien, .Maj: print("Jest wiosna")
            case .Czerwiec, .Lipiec, .Sierpien: print("Jest lato")
            case .Wrzesien, .Pazdziernik, .Listopad: print("Jest jesien")
            }
        }
    }
    
    var miesiac = Miesiac.Luty
    miesiac.jakiMiesiac()
    
}

func zad7_4() {
    
}
