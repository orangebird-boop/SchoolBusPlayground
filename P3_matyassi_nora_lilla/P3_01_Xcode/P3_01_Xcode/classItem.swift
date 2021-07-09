class Item {
    let name : String
    
    init (name : String) {
        self.name = name
    }
}


class Weapon: Item {
    let damage: Int
    
    init(name: String, damage: Int){
        self.damage = damage
        
        super.init(name: name)
    }
}

let listOfWeapons = [
    Weapon(name: "sword", damage: 5),
    Weapon(name: "bigAxe", damage: 7),
    Weapon(name: "stick", damage: 2)
]

class Potion: Item {
    let healingAmount: Int
    
    init(name: String, healingAmount: Int) {
        self.healingAmount = healingAmount
        
        super.init(name: name)
    }
}
