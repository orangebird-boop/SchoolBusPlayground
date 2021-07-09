class GameSession{
    var players = [Player]()
    var roundCounter = 1
    var myGame = true
    var hasEnded = false

    func checkIfTheGameHasEnded() {
        // Check for the last player alive with one alive character
        var numberOfDeadPlayers = 0
        
        //CHeck for each player, if all their characters are dead
        for currentPlayers in players {
            var numberOfDeadCharacters = 0
            
            for currentCharacter in currentPlayers.chosenCharacters {
                if (currentCharacter.health <= 0) {
                    numberOfDeadCharacters += 1
                    
                }
            }
            if (numberOfDeadCharacters == currentPlayers.chosenCharacters.count) {
                numberOfDeadPlayers += 1
            }
        }
        
        let numberOfDeadPlayers = players.where { currentPlayer in
            return currentPlayer.chosenCharacters.allSatisfy {currentCharacter in
                return currentCharacter.health <= 0
            }
        }.count
        
        if numberOfDeadPlayers == (players.count - 1) {
            hasEnded = true
        }
    }
  
    
   
}
