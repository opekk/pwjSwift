import Foundation

class Punkt{
    private var x: Double
    private var y: Double
    
    init(){
        self.x = 0
        self.y = 0
    }
    
    init(x: Double){
        self.x = x
        self.y = x
    }
    
    init(x: Double, y: Double){
        self.x = x
        self.y = y
    }
    
    func getX() -> Double{
        return x
    }
    
    func getY() -> Double{
        return y
    }
    
    func obliczanieOdleglosci(Punkt: Punkt) -> Double{
        return sqrt(pow(Punkt.x - self.x, 2) + pow(Punkt.y - self.y, 2))
    }
    
    func jakaCwiartka(x: Double, y: Double) -> Int{
        if x > 0 && y > 0{
            return 1
        } else if x > 0 && y < 0{
            return 2
        } else if x < 0 && y < 0{
            return 3
        } else if x < 0 && y > 0{
            return 4
        } else {
            return 0
        }
    
    }
        func infoOPunckie(Punkt: Punkt){
            print("x: \(Punkt.x), y: \(Punkt.y)")
            print("Cwiartka:", jakaCwiartka(x: Punkt.x, y: Punkt.y))
        }
    
    static func > (Punkt1: Punkt, Punkt2: Punkt) -> Int {
        let cwiartkaPunkt1 = Punkt1.jakaCwiartka(x: Punkt1.x, y: Punkt1.y)
        let cwiartkaPunkt2 = Punkt1.jakaCwiartka(x: Punkt2.x, y: Punkt2.y)
        
        if(cwiartkaPunkt1 > cwiartkaPunkt2){
            return 2
        } else if(cwiartkaPunkt1 == cwiartkaPunkt2){
            return 1
        } else {return 0}
    }
    
}

func PunktWzgledemKwadratu(p: Punkt, k: Double) -> Int{
    if p.getX() > k || p.getY() > k || p.getX() < -k || p.getY() < -k {
        return 1
    } else if p.getX() == k || p.getY() == k || p.getX() == -k || p.getY() == -k {
        return 0
    } else { return -1}
}
