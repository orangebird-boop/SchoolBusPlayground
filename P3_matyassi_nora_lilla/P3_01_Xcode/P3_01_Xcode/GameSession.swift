


class GameSession{
    var players = [Player]()
    var roundCounter = 1
    var myGame = true
    var hasEnded = false

    func checkIfTheGameHasEnded() {
        // Check for the last player alive with one alive character
     var numberOfDeadPlayers = 0

    //    let numberOfDeadPlayers = players.filter { $0.chosenCharacters.allSatisfy { $0.health <= 0 } }.count
     //   print(numberOfDeadPlayers)
    //    if numberOfDeadPlayers == (players.count - 1) {
      //      hasEnded = true
 
      //  }
        
        
        //CHeck for each player, if all their characters are dead
       for currentPlayer in players {
        let numberOfDeadCharacters = currentPlayer.getNumberOfDeadCharacters()
            
        /*    for currentCharacter in currentPlayers.chosenCharacters {
                if (currentCharacter.health <= 0) {
                    numberOfDeadCharacters += 1
                    
                }
            }
 */
            if (numberOfDeadCharacters == currentPlayer.chosenCharacters.count) {
                numberOfDeadPlayers += 1
            }
        }
        
  /*      let numberOfDeadPlayers = players.where { currentPlayer in
            return currentPlayer.chosenCharacters.allSatisfy {currentCharacter in
                return currentCharacter.health <= 0
            }
        }.count
         
         players.where dont know how to make it work
     */
        
        
        if numberOfDeadPlayers == (players.count - 1) {
            hasEnded = true
 
        }

    }
  
    
   
}
