func zadanie12_1(){
    
    var album = Album(imie: "Jan", nazwisko: "Kowalski", rokWydania: 2020, tablicaUtworow: [])
    
    album.dodajUtwor(Utwor: Utwor(tytul: "Utwor1", czasTrwania: 3.0))
    album.dodajUtwor(Utwor: Utwor(tytul: "Utwor2", czasTrwania: 4.0))
    album.dodajUtwor(Utwor: Utwor(tytul: "Utwor3", czasTrwania: 5.0))
    album.dodajUtwor(Utwor: Utwor(tytul: "Utwor4", czasTrwania: 6.0))
    album.dodajUtwor(Utwor: Utwor(tytul: "Utwor5", czasTrwania: 7.0))
    album.dodajUtwor(Utwor: Utwor(tytul: "Utwor6", czasTrwania: 8.0))
    album.dodajUtwor(Utwor: Utwor(tytul: "Utwor7", czasTrwania: 9.0))
    album.dodajUtwor(Utwor: Utwor(tytul: "Utwor8", czasTrwania: 10.0))
    
    print("sredni czas utworu: ", sredniCzas(album: album))
    print("max i min czas utworu na albumie to:", czasy(album: album))
    print(album.show())
    
}
