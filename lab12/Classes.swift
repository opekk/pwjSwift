
class Wykonawca{
    private var imie: String
    private var nazwisko: String
    
    init(imie: String, nazwisko: String) {
        self.imie = imie
        self.nazwisko = nazwisko
    }
    
    func show() -> String{
        return "Imie: \(imie), Nazwisko: \(nazwisko)"
    }
}

class Utwor{
    private var tytul: String
    private var czasTrwania: Double
    
    init(tytul: String, czasTrwania: Double) {
        self.tytul = tytul
        self.czasTrwania = czasTrwania
    }
    
    func show() -> String{
        return "Tytul: \(tytul), Czas trwania: \(czasTrwania)"
    }
    
    func getCzasTrwania() -> Double{
        return czasTrwania
    }

}

class Album: Wykonawca{
    private var rokWydania: Int
    private var tablicaUtworow: [Utwor] = []
    
    init(imie: String, nazwisko: String, rokWydania: Int, tablicaUtworow: [Utwor]) {
        self.rokWydania = rokWydania
        self.tablicaUtworow = tablicaUtworow
        super.init(imie: imie, nazwisko: nazwisko)
    }
    
    override func show() -> String{
        var utwory = ""
        for utwor in tablicaUtworow{
            utwory += utwor.show() + "\n"
        }
        return super.show() + ", Rok wydania: \(rokWydania), Utwory: \n\(utwory)"
    }
    
    func getTablicaUtworow() -> [Utwor]{
        return tablicaUtworow
    }
    
    
    func dodajUtwor(Utwor: Utwor){
        tablicaUtworow.append(Utwor)
    }
    
}


func sredniCzas(album: Album) -> Double{
    var suma = 0.0
    for utwor in album.getTablicaUtworow(){
        suma += utwor.getCzasTrwania()
    }
    return suma / Double(album.getTablicaUtworow().count)
}

func czasy(album: Album) ->(Double, Double){
    var min = album.getTablicaUtworow()[0].getCzasTrwania()
    var max = album.getTablicaUtworow()[0].getCzasTrwania()
    
    for utwor in album.getTablicaUtworow(){
        if utwor.getCzasTrwania() > max{
            max = utwor.getCzasTrwania()
        }
        if utwor.getCzasTrwania() < min{
            min = utwor.getCzasTrwania()
        }
    }
    return (min,max)
}
