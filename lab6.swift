import Foundation


func zad6_1() {
    
   
    print("podaj i: ")
    var i = Int(readLine()!)!
    print("podaj j: ")
    let j = Int(readLine()!)!
    var arr = Array(repeating: Array(repeating: 0, count: j), count: i)
    for row in 0..<i {
        for column in 0..<j {
            var temp = Int.random(in: -100...100)
            arr[row][column] = temp
        }
    }
    print(arr)
    var szuakna = 0
    print("podaj wartosc szukana: ")
    let szukana = Int(readLine()!)!
    var max = arr[0][0]
    var min = arr[0][0]
    var maxIndexRow: Int = 0
    var maxIndexCol: Int = 0
    var minIndexRow: Int = 0
    var minIndexCol: Int = 0
    
    
    for row in 0..<i {
        for column in 0..<j {
            if arr[row][column] == szukana {
                szuakna += 1
            }
            if arr[row][column] > max {
                max = arr[row][column]
                maxIndexRow = row
                maxIndexCol = column
            }
            if arr[row][column] < min {
                min = arr[row][column]
                minIndexCol = column
                maxIndexCol = row
            }
        }
    }
    print("max: \(max) \nmaxIndexRow: \(maxIndexRow) \nmaxIndexCol: \(maxIndexCol)")
    print("min: \(min) \nminIndexRow: \(minIndexRow) \nminIndexCol: \(minIndexCol)")
    print("szukana: \(szuakna)")
}

func macierzSymetryczna(macierz: [[Int]]) -> Bool{      //6.2.1
    for i in 0..<macierz.count{
        for j in 0..<macierz[i].count{
            if( macierz[i][j] != macierz[j][i]) { return false}
        }
    }
    return true
}

//6.2.2
func macierzSumaWiersza(macierz: [[Int]], wiersz: Int) -> (Int, Int){
    var sumaWiersza: Int = 0
    for i in 0..<macierz[wiersz].count {
        sumaWiersza += macierz[wiersz][i]
    }
    return (sumaWiersza, macierz.joined().reduce(0, +))
}


func macierzNorma(macierz: [[Int]]) -> Double{      // 6.2.3
    var suma: Double = 0
    for i in 0..<macierz.count{
        for j in 0..<macierz[i].count {
            suma += pow(Double(macierz[i][j]),2)
        }
    }
    return Double(suma).squareRoot()
}


func macierzMaksymalnyElementKolumny(macierz: [[Int]], kolumna: Int) -> [Int]{
    var maxKolumnaArray: [Int] = []
    var max = 0
    for i in 0..<macierz.count{
        for j in 0..<macierz[i].count{
            if macierz[i][j] > max{
                max = [i][j]
            }
            maxKolumnaArray.append(max)
            max = 0
        }
    }
    return maxKolumnaArray
}


func macierzDiagonalna(macierz: [[Int]]) -> Bool{      //6.2.5
    var rows = macierz.count
    var cols = macierz[0].count
    if rows != cols {return false}
    
    for i in 0..<rows {
        if macierz[i][i] == 0  {
            return false
        }
    }
    return true
}

func macierzPrzekatnaDominujacaGlowna(macierz: [[Int]]) -> Bool{    // 6.2.6
    var rows = macierz.count
    var cols = macierz[0].count
    var suma = 0
    if rows != cols {return false}
    
    for i in 1..<rows {
        suma += macierz[i][i]
        }
    return macierz[0][0] > suma
}

func macierzWyswietlanie(macierz: [[Int]]){
    
    for i in 0..<macierz.count{
        for j in 0..<macierz[i].count{
            print("\(macierz[i][j])", terminator: "   ")
        }
        print("\n")
    }
}


func zad6_2() {
    print("podaj ilosc wierszy: ")
    let rows = Int(readLine()!)!
    print("podaj ilosc kolumn: ")
    let cols = Int(readLine()!)!
    var mac: [[Int]] = Array(repeating: Array(repeating: 0, count: cols), count: rows)
    print("1 - podaj elementy macierzy, 2 - wygeneruj losowo elementy tablicy ")
    var wybor = Int(readLine()!)
    
    switch wybor{
    case 1:
        for i in 0..<rows{
            for j in 0..<cols{
                var element: Int
                print("podaj element: ")
                element = Int(readLine()!)!
                mac[i][j] = element
            }
        }
    case 2:
        for i in 0..<rows {
            for j in 0..<cols{
                var element = Int.random(in: 1...10)
                mac[i][j] = element
            }
        }
    default: print("nie ma takiej opcji")
    }
    
    print(macierzWyswietlanie(macierz: mac))
    print("macierz symetryczna:  \(macierzSymetryczna(macierz: mac))")                                          // 6.2.1
    print("macierz suma wierszy: \(macierzSumaWiersza(macierz: mac, wiersz: 0))")                               // 6.2.2
    print("norma macierzy: \(macierzNorma(macierz: mac))")                                                      // 6.2.3
    print("maksymalny element kolumny: \(macierzMaksymalnyElementKolumny(macierz: mac, kolumna: 0))")           // 6.2.4
    print("macierz diagolanla:  \(macierzDiagonalna(macierz: mac))")                                            // 6.2.5
    print("macierz przekatna dominujaca glowna:  \(macierzPrzekatnaDominujacaGlowna(macierz: mac))")            // 6.2.6
    
    
}

