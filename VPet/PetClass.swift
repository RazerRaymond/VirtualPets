
import Foundation

class pets {
    var breed : String
    var foodLevel : Int
    var happiness : Int
    var tFeed : Int
    var tPlayed : Int
    func feed() {
        if foodLevel >= 10{
        }
        else{
            foodLevel += 1
            tFeed += 1
        }
    }
    func play() {
        if happiness >= 10{
            if foodLevel >= 1{
                tPlayed += 1
                foodLevel -= 1
            }
        }
        else{
            if foodLevel >= 1{
                happiness += 1
                tPlayed += 1
                foodLevel -= 1
            }
        }
    }
    func advent(){
        if foodLevel >= 2 && happiness >= 2{
            let random = Int.random(in: 1...10)
            if(random <= 7){
                if(happiness >= 8){
                    happiness = 10
                }
                else{
                    happiness -= 2
                }
            }
            else{
                if(foodLevel >= 7){
                    foodLevel = 10
                }
                else{
                    foodLevel += 3
                }
            }
        }
    }
    init(breed : String) {
        self.breed = breed
        self.foodLevel = 0
        self.happiness = 0
        self.tFeed = 0
        self.tPlayed = 0
    }
}

//class Bird : pets{
//    var breed : String
//    init(breed : String) {
//        self.breed = breed
//        super.init()
//    }
//}
