class Player{
    var playerID : Int
    
    var chosenCharacters = [Character]()
    var wins = 0
    var losses = 0
    
    var currentAttacker = Character (characterName: "0", maxHealth: 10, health: 10, weapon: listOfWeapons.randomElement()!, potion: listOfPotions.randomElement()! )
    var currentTarget = Character (characterName: "0", maxHealth: 10, health: 10, weapon: listOfWeapons.randomElement()!, potion: listOfPotions.randomElement()! )
    var currentHeal = Character (characterName: "0", maxHealth: 10, health: 10, weapon: listOfWeapons.randomElement()!, potion: listOfPotions.randomElement()! )
    init(playerID: Int){
        self.playerID = playerID
        
    }

    func getNumberOfDeadCharacters()-> Int{
        var numberOfDeadCharacters = 0
        for character in chosenCharacters{
            
            if character.health <= 0 {
                numberOfDeadCharacters += 1
            }
            
        }
        return numberOfDeadCharacters
    }
    
    
    func fight(for player : Player){
        currentTarget.health = currentTarget.health - currentAttacker.weapon.damage
        if currentTarget.health > 0 {
            print("\(currentTarget.characterName) has now \(currentTarget.health)")
        }else {
            print("\(currentTarget.characterName) is now dead")
        }
    }
    
    
    func usePotion(){
        print(currentHeal.characterName, currentHeal.health)
        currentHeal.health = currentHeal.potion.healingAmount + currentHeal.health
        print(currentHeal.characterName, currentHeal.health)
    }
    
    
}
