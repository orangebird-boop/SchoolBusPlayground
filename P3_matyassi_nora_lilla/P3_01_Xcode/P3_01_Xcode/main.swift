
var gameSession = GameSession()

while gameSession.myGame {
    gameSession.roundCounter = 1
    print("Welcome, this is the beginning of the game")
    //printMainMenu(game: gameSession)
    
    gameSession.players.append(Player(playerID: 1))
    gameSession.players.append(Player(playerID: 2))

    for currentPlayer in gameSession.players {
        printCharacterSelection(for: currentPlayer)
        
    }
    for currentPlayer in gameSession.players {
        printActionSelection(for: currentPlayer)
    }
    
    
}


func printCharacterSelection(for player: Player) {
    print("Please, Player \(player.playerID) choose your characters")

    while player.chosenCharacters.count < 3 {
        printCharacterCreation(for: player)
    }
    for character in player.chosenCharacters{
        print(character.characterName, character.health, character.weapon.name, character.potion.name)
    }
}

func printCharacterCreation(for player: Player) {
    print("Enter a new character name:")

    if let newCharacterName = readLine() {
        player.chosenCharacters.append(Character( characterName: newCharacterName, maxHealth: 10, health: 10, weapon: listOfWeapons.randomElement()!, potion: listOfPotions.randomElement()! ))
        
    }
}



func printActionSelection(for player: Player) {
    //print("Please, \(player.playerID) choose an action for \(character.name)")
    print("Please, Player \(player.playerID) choose an action")

  
        print("What do you want to do?"
                + "\n1. Attack"
                + "\n2. Heal")

        if let actionChoice = readLine() {
            switch actionChoice {
            case "1":
                chooseAttacker(for: player)
                chooseTarget(for: player)
                player.fight(for: player)
                

            case "2":
                heal(for: player)

            default:
                print("I don't understand. Choose between 1 or 2")

            
        }
    }
}

func chooseAttacker(for player: Player){
    var characterInAction = false
    
    while !characterInAction {
        var index = 0
    print("Please, Player \(player.playerID) chose a character from the list by it's number")
        for characters in player.chosenCharacters {
            //player.chosenCharacters.firstIndex { $0.characterName == characters.characterName }! + 1
            if characters.health >= 1 {
                index += 1
                print(index, characters.characterName)
            }
    }
        index = 0
            if let characterChoice = readLine() {
                for characters in player.chosenCharacters {
                    if characters.health >= 1 {
                        index += 1
                    }
                    if let choice = Int(characterChoice){
                        if index == choice {
                           player.currentAttacker = characters
                           characterInAction = true
    
                        }else{
                            print("You need to pick a number from the list")
                        }
                }
                    
            }
        }
    }
}

func chooseTarget(for player: Player){
    var selectedTarget = false
    
    while !selectedTarget {
        var index = 0
        
    print("Please, Player \(player.playerID) chose your target from the list by it's number")
        
        for characters in player.chosenCharacters {
            
            if characters.health >= 1 {
                index += 1
                print(index, characters.characterName)
            }
    }
        index = 0
            if let characterChoice = readLine() {
                for characters in player.chosenCharacters {
                    if characters.health >= 1 {
                        index += 1
                    }
                    if let choice = Int(characterChoice){
                        if index == choice {
                           player.currentTarget = characters
                            selectedTarget = true
    
                        }else{
                            print("You need to pick a number from the list")
                        }
                }
                    
            }
        }
    }
}

func heal(for player: Player){
    var selectedCharacter = false
    
    while !selectedCharacter {
        var index = 0
        print("Pick the character you want to heal")
        
        for character in player.chosenCharacters {
            if character.health >= 1 && character.maxHealth > character.health {
                index += 1
                print(index, character.characterName, character.health, character.potion)
            }else{
                print("All your characters are on max health, you have no other choice than attacking")
                printActionSelection(for: player)
            }
        }
        index = 0
        
        if let selection = readLine() {
            for character in player.chosenCharacters {
                if character.health >= 1 && character.maxHealth > character.health {
                    index += 1
                }
                if let choice = Int(selection) {
                    if index == choice {
                        player.currentHeal = character
                        print("You selected \(player.currentHeal) for healing")
                        player.usePotion()
                        selectedCharacter = true
                    }
                }
            }
        }
    }
}
