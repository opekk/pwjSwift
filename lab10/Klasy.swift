class Osoba_lab10{
    var imie: String
    var nazwisko: String
    var rokUrodzenia: Int
    
    init(imie: String, nazwisko: String, rokUrodzenia: Int) {
        self.imie = imie
        self.nazwisko = nazwisko
        self.rokUrodzenia = rokUrodzenia
    }
    
    func info() -> String{
        return "Imie: \(imie), Nazwisko: \(nazwisko), Rok urodzenia: \(rokUrodzenia)"
    }
}

enum Stanowisko: String{
    case dyrektor = "Dyrektor"
    case kierownik = "Kierownik"
    case pracownik = "Pracownik"
}

class Pracownik: Osoba{
    var rokZatrudenia: Int
    var stanowisko: Stanowisko
    var stawkaGodzinowa: Double
    var liczbaGodzin: Double
    var nazwaFirmy: String
    
    init(imie: String, nazwisko: String, rokUrodzenia: Int, rokZatrudenia: Int, stanowisko: Stanowisko, stawkaGodzinowa: Double, liczbaGodzin: Double, nazwaFirmy: String) {
        self.rokZatrudenia = rokZatrudenia
        self.stanowisko = stanowisko
        self.stawkaGodzinowa = stawkaGodzinowa
        self.liczbaGodzin = liczbaGodzin
        self.nazwaFirmy = nazwaFirmy
        super.init(imie: imie, nazwisko: nazwisko, rokUrodzenia: rokUrodzenia)
        
    }
    
    func getLataPracy() -> Int{
        return 2024 - rokZatrudenia
    }
    
    func getWynagrodzenie() -> Double{
        return stawkaGodzinowa * liczbaGodzin
    }
    
    override func info() -> String{
        return super.info() + ", Rok zatrudnienia: \(rokZatrudenia), Stanowisko: \(stanowisko.rawValue), Stawka godzinowa: \(stawkaGodzinowa), Liczba godzin: \(liczbaGodzin), Nazwa firmy: \(nazwaFirmy)"
    }
    
    
}
