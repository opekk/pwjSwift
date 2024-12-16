class Osoba{
    private var imie: String
    private var nazwisko: String
    private var rokUrodzenia: Int
    
    
    init(imie: String, nazwisko: String, rokUrodzenia: Int) {
        self.imie = imie
        self.nazwisko = nazwisko
        self.rokUrodzenia = rokUrodzenia
    }
    
    func info() -> String{
        return "Imie: \(imie), Nazwisko: \(nazwisko), Rok urodzenia: \(rokUrodzenia)"
    }
}
