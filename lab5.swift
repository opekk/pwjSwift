import Foundation

func zad5_1(){
    let tab: [Int] = Array(repeating: 1, count: 12)     // 1 zamiast 1.0 (1.0 to typ double, 1 to typ int)
    for i in tab {
        print(i)
    }
}

func zad5_2(){
    var tab: [Int] = []
    
    for _ in 1...10 {
        tab.append(Int.random(in: 1..<100))
    }
    print("tablica przed zmianiami: ", tab)
    var temp = Int(readLine()!)!
    tab.insert(temp, at: 0)
    tab.insert(temp, at: Int.random(in: 1...10))
    print("tablica po zmianach: ", tab)
    
}

func zad5_3(){
    var tab: [Int] = []
    var n = Int(readLine()!)!
    if n > 0 {
        for _ in 1...n {
            var temp = Int(readLine()!)!
            tab.append(temp)
        }
        var x = Int(readLine()!)!
        if tab[0] == x || tab[tab.count-1] == x {
            print("dziala")
        }
    }
}

func zad5_4(){
    let n = Int.random(in: 3...100)
    var tab: [Int]  = []
    var prodGeometryczna: Double = 1
    var prodHarmoniczna: Double = 0
    var j = 1

    for i in 0..<n {
        var x = Int.random(in: 3...100)
        tab.append(x)
    }
    
    for i in 0..<n{
        prodHarmoniczna += 1.0 / Double(tab[i])
        if i % 2 == 1 { prodGeometryczna *= Double(tab[i]) }
    }
    
    let sredniaA = Double(tab.reduce(0,+)) / Double(tab.count)
    let sredniaW = pow(prodGeometryczna, 1.0 / Double(n))
    
    prodHarmoniczna = pow(prodHarmoniczna, Double(n))
    let sredniaH = Double(n) / Double(prodHarmoniczna)
    
    print("Srednia artmetyczna: \(sredniaA)")
    print("Srednia geometryczna: \(String(format:"%.2f",sredniaW))")
    print("Srednia harmoniczna: \(sredniaH)")
    
    
}

func zad5_5(){
    guard let n  = Int(readLine()!), n > 0 else{ fatalError("zla liczba")}
    var tab1: [Int] = [], tab2: [Int] = []
    for _ in 1...n {
        var temp1 = Int.random(in: 1..<21); var temp2 = Int.random(in: 1..<21)
        tab1.append(temp1); tab2.append(temp2)
    }
    tab1.sort(); tab2.sort()
    print(tab1); print(tab2)
    if(tab1 == tab2) {print("tablice sa takie same")}
    else {print("tablice nie sa takie same")}
    
}




// 6 do zrobienia
