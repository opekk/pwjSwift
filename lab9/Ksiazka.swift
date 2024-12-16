class Ksiazka{
    
    private var tytul: String
    private var autor: Osoba
    private var liczbaStron: Int
    private var rokWydania: Int

    init(tytul: String, autor: Osoba, liczbaStron: Int, rokWydania: Int) {
        self.tytul = tytul
        self.autor = autor
        self.liczbaStron = liczbaStron
        self.rokWydania = rokWydania
    }
    
    func info(){
        print("Tytul: \(tytul), Autor: \(autor.info()), Liczba stron: \(liczbaStron), Rok wydania: \(rokWydania)")
    }
    
}
