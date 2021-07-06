
 
 //======================
 // MARK: - Classes
 //======================
class GameSession {
   // var players = [Player]
    var roundCounter = 0
    
}

class Player {
   let playerID: Int
   var chosenCharacters = [Character]()
   var currentAttacker = Character()
   var currentVictim = Character()
   var currentHeal = Character()
   init(playerID: Int, chosenCharacters: [Character] = []){
       self.playerID = playerID
       self.chosenCharacters = chosenCharacters
   }
   init(playerID: Int){
       self.playerID = playerID
   }
    
    func setBlank(){
        currentAttacker = Character()
        currentVictim = Character()
        currentHeal = Character()
    }
    
    func fight(activePlayer: Player){
        print(currentVictim.lifePoints)
        let x = currentVictim.lifePoints - currentAttacker.weapon.effect
        print("value of x", x)
        currentVictim.lifePoints = x
        for character in activePlayer.chosenCharacters{
            if character.characterID == currentVictim.characterID{
                character.lifePoints = x
                if character.lifePoints < 1{
                    character.isDead = true
                    
                }
            }
           
        }
       
    }
    func usePotion(){
        print(currentHeal.lifePoints)
        let y = currentHeal.lifePoints + currentHeal.potion.effect
        print("the value of potion is ", y)
        currentHeal.lifePoints = y
        for character in chosenCharacters{
            if character.characterID == currentHeal.characterID{
                character.lifePoints = y
            }
        }
    }
    func isEverybodyDead()-> Bool{
        for characters in chosenCharacters{
            print(characters.isDead)
            if characters.isDead == false{
                return false
            }
            
        }
        return true
    }
}


class Character {
   let characterID: Int
   var characterName:String
   let description:String
   var lifePoints:Int
   var weapon:Item
   var potion: Item
   var isDead :Bool = false
   var usedInRound: Bool = false
   static var characterList = [
        Character(characterID: 1, characterName: "Batman", description: "He has 15 lifepoints. His weapon is a Batarang, deals 5 points of damage, and has a medium healin potion.", lifePoints: 15, weapon: Item.getitem(itemid: 1), potion: Item.getitem(itemid: 12)),
        Character(characterID: 2, characterName:  "Hermione Granger", description: "She is talented witch. She has 16 lifepoins. Her weapon is a magicwand, deals 4 damage, and has a strong healing potion.", lifePoints: 16, weapon: Item.getitem(itemid: 2), potion: Item.getitem(itemid: 13)),
        Character(characterID: 3, characterName: "Antman", description: "He can became small. Like an ant. He has 13 lifepoints. His weapon is ant acid, deals 6 damage, and has a  medium healing potion.", lifePoints: 13, weapon: Item.getitem(itemid: 3), potion: Item.getitem(itemid: 12)),
        Character(characterID: 4, characterName: "Tank Girl", description: "A girl with a tank. She has 8 lifepoins. Her weapon is a tank, deals 13 damage, and has a small healing potion.", lifePoints: 8, weapon: Item.getitem(itemid: 4), potion: Item.getitem(itemid: 11)),
        Character(characterID: 5, characterName: "Ace Ventura", description: "He is the pet detective. He has 17 lifepoints. His weapon the rhinoceros mating call, deals 3 damage, and has a  medium healing potion.", lifePoints: 17, weapon: Item.getitem(itemid: 5), potion: Item.getitem(itemid: 12)),
        Character(characterID: 6, characterName: "Zohan", description: "He is a hairdesser ex israeli soldier. He has 20 lifepoints. His weapon are his scissors, deals 15 damage, and a small healing potion.", lifePoints: 20, weapon: Item.getitem(itemid: 6),potion: Item.getitem(itemid: 11)),
        Character(characterID: 7, characterName: "Kato", description: "He is the sidekick of Green Hornet. He has 16 lifepoints. His weapon is a hornet shaped dart, deals 5 damage, and has a  medium healing potion.", lifePoints: 16, weapon: Item.getitem(itemid: 7), potion: Item.getitem(itemid: 12)),
        Character(characterID: 8, characterName: "Aggretsuko", description: "She is a red panda working in an office. She has 11 lifepoints. Her weapon is deathmetal scream, deals 8 damage, and has a strong healing potion.", lifePoints: 11, weapon: Item.getitem(itemid: 8), potion: Item.getitem(itemid: 13)),
     ]
    
    
    //here i try to get the characterID to be able ot associate it with the Players
    static func getcharacter(characterid: Int) -> Character {
        for y in characterList {              //for an item in the list of characterList
            if y.characterID == characterid {        // if the characterid is equal the character.ID
                return y                // return the character
            }
        }
        return Character(characterID: 14, characterName: "Nothing", description: "none", lifePoints: 0, weapon: Item.getitem(itemid: 14), potion: Item.getitem(itemid: 14))         // if not give back some made up value
    
    }

   // here i initialise the values: characterID, characterName, lifePoints and weapon (is dead is false by default)
   init( characterID: Int, characterName:String,  description:String,  lifePoints:Int,  weapon:Item, potion: Item){
       self.characterID = characterID
       self.characterName = characterName
       self.description = description
       self.lifePoints = lifePoints
       self.weapon = weapon
       self.potion = potion
   }
    
    init (){
        self.characterID = 0
        self.characterName = ""
        self.description = ""
        self.lifePoints = 0
        self.weapon = Item.getitem(itemid: 14)
        self.potion = Item.getitem(itemid: 14)
        
    }
       // the list of all the characters, I set the values of each availible character
     //methods: takeDamage(), die(), isdead()?
}

class Item{
    var nameOfItem:String
    var effect:Int
    let itemID: Int
    
    init(itemID: Int, nameOfItem: String, effect: Int) {
        self.itemID = itemID
        self.nameOfItem = nameOfItem
        self.effect = effect
    }
    static let itemList = [
        Item(itemID: 1, nameOfItem: "Batarang", effect: 50),
        Item(itemID: 2, nameOfItem: "magicwand", effect: 4),
        Item(itemID: 3, nameOfItem: "antacid", effect: 6),
        Item(itemID: 4, nameOfItem: "tank", effect: 13),
        Item(itemID: 5, nameOfItem: "rhinocall", effect: 3),
        Item(itemID: 6, nameOfItem: "scissors",effect: 15),
        Item(itemID: 7, nameOfItem: "dart", effect: 5),
        Item(itemID: 8, nameOfItem: "scream", effect: 8),
        Item(itemID: 9, nameOfItem: "lasersword", effect: 10),
        Item(itemID: 10, nameOfItem: "machete", effect: 9),
        Item(itemID: 11, nameOfItem: "small potion", effect: 3),
        Item(itemID: 12, nameOfItem: "medium potion", effect: 6),
        Item(itemID: 13, nameOfItem: "big potion", effect: 9),
    ]
    
    func toString() -> String{
        let s = "itemId: " + String(self.itemID) + " -- name of item: " + self.nameOfItem + " -- effect: " + String(self.effect)
        return s
    }
    static func getitem(itemid: Int) -> Item {        //here i try to get the itemID to be able ot associate it with the caracters
        for y in Item.itemList {              //for an item in the list of itemList
            if y.itemID == itemid {        // if the item is equal the item.ID
                return y                // return the item
            }
        }
        return Item(itemID: 14, nameOfItem: "Something", effect: 0)         // if not give back some value which i made up
    
    }
 }


class MagicBox: Item {
   
    // method randomPopUp()?
 
}


//======================
// MARK: - Main Menu
//======================
func mainMenu(){
   

    print("Welcome, if you want to play please choose 'NEW GAME', if you don't, choose 'QUIT GAME' !"
    + "\n1. NEW GAME"
    + "\n2. QUIT GAME")
    
    if let choiceMenu = readLine() {
        switch choiceMenu {
        case "1":
            print("New game")
           // whoAmI()
        case "2":
            print("Good bye !")
            MYGAME = false
        default:
            print("I don't understand. Press 1 or 2 .")
        }
    }
}

//======================
// MARK: - 2nd Menu - Who are you?
//======================
func createplayers(){
    var game = GameSession()
    var Player1 = Player(playerID: 1)
    var Player2 = Player(playerID: 2)
    Player1.chosenCharacters.append(chooseCharacter())
    Player2.chosenCharacters.append(chooseCharacter())
}
func whoAmI() ->Player {
    print("Who are you?"
            + "\n1. PLAYER 1"
            + "\n2. PLAYER 2"
            + "\n3. Return to MAIN MENU")
    if let playerChoice = readLine() {
        switch playerChoice {
        case "1":
            print(" PLAYER 1 choose your characters ")
            return Player(playerID:1)
            
        case "2":
            print(" PLAYER 2 choose your characters ")
            return Player(playerID:2)
            
        case "3":
            print(" You chose to return to MAIN MENU")
            mainMenu()
        default:
            print("I dont understand")
        }
        
    }
    return Player(playerID: 0)
}

//======================
// MARK: - 3th Menu - Choose your character
//======================

func chooseCharacter() ->Character {
    
    print("Who is gonna fight on your side today ?"
            + "\n1. \(Character.characterList[0].description)"
            + "\n2. \(Character.characterList[1].description)"
            + "\n3. \(Character.characterList[2].description)"
            + "\n4. \(Character.characterList[3].description)"
            + "\n5. \(Character.characterList[4].description)"
            + "\n6. \(Character.characterList[5].description)"
            + "\n7. \(Character.characterList[6].description)"
            + "\n8. \(Character.characterList[7].description)"
            + "\n9. Return to MAIN MENU")
    var choice = 0
    if let characterChoice = readLine(){
       
   
        switch characterChoice {
        case "1":
            print(" You chose Batman")
        case "2":
            print(" You chose Hermione Granger")
        case "3":
            print(" You chose Antman")
        case "4":
            print(" You chose Tank Girl")
        case "5":
            print(" You chose Ace Ventura")
        case "6":
            print(" You chose Zohan")
        case "7":
            print(" You chose Kato")
        case "8":
            print(" You chose Aggretsuko")
        case "9":
            print(" You chose to return to MAIN MENU")
           // mainMenu()
        default:
            print("I don't understand")
        }
        if let choice = Int(characterChoice){
            return Character.getcharacter(characterid: choice)
            
        }
        
    }
   
    return Character.getcharacter(characterid: choice)
    
    
}

//======================
// MARK: - 4th Menu - Action
//======================
// this function let you pick the action (attack or heal)
func chooseAction(P1: Player, P2: Player) {
    print("What do you want to do?"
            + "\n1. Attack"
            + "\n2. Heal")
    if let actionChoice = readLine() {
    switch actionChoice {
    case "1":
        chooseAttaker(A1: P1, A2: P2)
        chooseVictim(B1: P1, B2: P2)
        P1.fight(activePlayer: P2)
    case "2":
        healYourself(C1:P1)
    default:
        print("I don't understand. Choose between 1 or 2")
       
        }
    }
}

//choose the character which is doing the attack
func chooseAttaker(A1: Player, A2: Player){
    var selectedAttacker = false
    while selectedAttacker == false{
    print("Choose your attacker")
    for characters in A1.chosenCharacters{
        print(characters.characterID, characters.characterName )
    }
    if let attacker = readLine(){
    for characters in A1.chosenCharacters{
        if let choice = Int(attacker) {
            if characters.characterID == choice{
                A1.currentAttacker = characters
            selectedAttacker = true
            }
                }
            }
        }
    }
}
//choose the character you want to attack
func chooseVictim(B1: Player, B2: Player){
    var selectedVictim = false
    while selectedVictim == false {
        print("Chose your victim")
        for characters in B2.chosenCharacters{
            print(characters.characterID, characters.characterName )
        }
        if let victim = readLine(){
            for characters in B2.chosenCharacters{
                if let choice = Int(victim) {
                    if characters.characterID == choice{
                        B1.currentVictim = characters
                        print(B1.currentVictim.characterName)
                        selectedVictim = true
                    }
                }
            }
        }
    }
}
// heal your own character
func healYourself(C1: Player){
    var selectedCharacter = false
    while selectedCharacter == false {
        print("Pick the character you want to heal")
        for characters in C1.chosenCharacters{
            print(characters.characterID, characters.characterName)
        }
        if let selection = readLine(){
            for characters in C1.chosenCharacters{
                if let choice = Int(selection) {
                    if characters.characterID == choice{
                    C1.currentHeal = characters
                    print(C1.currentHeal)
                        C1.usePotion()
                    selectedCharacter = true
                    }
                }
            }
        }
    }
}
//main loop of the game
var MYGAME = true
while MYGAME == true {
    mainMenu()
    var player1 = whoAmI()
    while player1.chosenCharacters.count < 1{                               //player 1 choses 3 characters
        player1.chosenCharacters.append(chooseCharacter())
    }
    
    var player2 = whoAmI()
    while player2.chosenCharacters.count < 1{                                //player 1 choses 3 characters
        player2.chosenCharacters.append(chooseCharacter())
    }
    //FIRST ROUND
    /*chooseAction(P1: player1,P2: player2)
    player1.fight(activePlayer: player2)

    for i in player2.chosenCharacters{
        print(i.characterName, i.lifePoints)
    }
 */
    
    var turn = 1
    while turn > 0  {
        if turn % 2 == 1{
            chooseAction(P1: player1,P2: player2)
            if player2.isEverybodyDead(){
                turn = -100
            }
        }else {
            chooseAction(P1: player2, P2: player1)
            if player1.isEverybodyDead(){
                turn = -100
            }
        }
       turn += 1
        print("Starting turn")
    }
    
    
}

