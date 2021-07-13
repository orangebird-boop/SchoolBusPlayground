class Character {
    var characterName : String
//    let characterID : Int
    let maxHealth: Int
    var health : Int
    
    var weapon : Weapon
    var potion : Potion
    
    init(characterName: String, maxHealth: Int, health: Int, weapon: Weapon, potion: Potion){
        self.characterName = characterName
    //    self.characterID = characterID
        self.maxHealth = maxHealth
        self.health = health
        self.weapon = weapon
        self.potion = potion
    }
    
}
