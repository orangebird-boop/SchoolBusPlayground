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
        Weapon(name: "big axe", damage: 7),
        Weapon(name: "stick", damage: 2)
    ]



class Potion: Item {
    let healingAmount: Int
    
    init(name: String, healingAmount: Int) {
        self.healingAmount = healingAmount
        
        super.init(name: name)
    }

    
}

    let listOfPotions = [
        Potion(name: "empty bottle", healingAmount: 0),
        Potion(name: "small bottle", healingAmount: 3),
        Potion(name: "big bottle", healingAmount: 6)
    ]
