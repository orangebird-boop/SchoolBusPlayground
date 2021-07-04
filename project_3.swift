// Just some comments
//new brach test
//third change
 
 

 
 
 
 //======================
 // MARK: - Classes
 //======================
class GameSession {
    var players = [Player]()
    var roundCounter = 0
    
}
 class Player {
    let playerID: Int
    var chosenCharacters = [Character]()
    //should have a list or a dictionnary of characters, each player 3 characters
    init(playerID: Int, chosenCharacters: [Character] = []){
        self.playerID = playerID
        self.chosenCharacters = chosenCharacters
    }
 }

class Character {
    let characterID: Int
    var characterName:String
    let description:String
    var lifePoints:Int
    var weapon:Int // needs to be changed to a type Weapon later
    var isDead = false
    
    init( characterName:String,  description:String,  lifePoints:Int,  weapon:Int){
        self.characterName = characterName
        self.description = description
        self.lifePoints = lifePoints
        self.weapon = weapon
        
    
    }
        // the list of all the characters
        var characterlList = [
            Character(characterID: 1, characterName: "Batman", description: "He has 15 lifepoints. His weapon is a Batarang, deals 5 points of damage, and has a medium healin potion.", lifePoints: 15, weapon: Int(Item.itemList[0]),
            Character(characterID: 2, characterName:  "Hermione Granger", description: "She is talented witch. She has 16 lifepoins. Her weapon is a magicwand, deals 4 damage, and has a strong healing potion.", lifePoints: 16, weapon: 1),
            Character(characterID: 3, characterName: "Antman", description: "He can became small. Like an ant. He has 13 lifepoints. His weapon is ant acid, deals 6 damage, and has a  medium healing potion.", lifePoints: 13, weapon: 2),
            Character(characterID: 4, characterName: "Tank Girl", description: "A girl with a tank. She has 8 lifepoins. Her weapon is a tank, deals 13 damage, and has a weak healing potion.", lifePoints: 8, weapon: 3),
            Character(characterID: 5, characterName: "Ace Ventura", description: "He is the pet detective. He has 17 lifepoints. His weapon the rhinoceros mating call, deals 3 damage, and has a  medium healing potion.", lifePoints: 17, weapon: 4),
            Character(characterID: 6, characterName: "Zohan", description: "He is a hairdesser ex israeli soldier. He has 20 lifepoints. His weapon are his scissors, deals 15 damage, and has no healing potion.", lifePoints: 20, weapon: 5),
            Character(characterID: 7, characterName: "Kato", description: "He is the sidekick of Green Hornet. He has 16 lifepoints. His weapon is a hornet shaped dart, deals 5 damage, and has a  medium healing potion.", lifePoints: 16, weapon: 6),
            Character(characterID: 8, characterName: "Aggretsuko", description: "She is a red panda working in an office. She has 11 lifepoints. Her weapon is deathmetal scream, deals 8 damage, and has a strong healing potion.", lifePoints: 11, weapon: 7)
            ]
    }
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
    let itemList = [
        Item(itemID: 1, nameOfItem: "Batarang", effect: -5),
        Item(itemID: 2, nameOfItem: "magicwand", effect: -4),
        Item(itemID: 3, nameOfItem: "antacid", effect: -6),
        Item(itemID: 4, nameOfItem: "tank", effect: -13),
        Item(itemID: 5, nameOfItem: "rhinocall", effect: -3),
        Item(itemID: 6, nameOfItem: "scissors",effect -15),
        Item(itemID: 7, nameOfItem: "dart", effect: -5),
        Item(itemID: 8, nameOfItem: "scream", effect: -8),
        Item(itemID: 9, nameOfItem: "lasersword", effect: -10),
        Item(itemID: 10, nameOfItem: "machete", effect: -9),
        Item(itemID: 11, nameOfItem: "small potion", effect: 3),
        Item(itemID: 12, nameOfItem: "medium potion", effect: 6),
        Item(itemID: 13, nameOfItem: "big potion", effect: 9),
    ]
    
 //method useItem(),
 
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
            print("Choose your fighters")
            whoAmI()
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
func whoAmI() {
    print("Who are you?"
            + "\n1. PLAYER 1"
            + "\n2. PLAYER 2"
            + "\n3. Return to MAIN MENU")
    if let playerChoice = readLine() {
        switch playerChoice {
        case "1":
            print(" PLAYER 1 choose your characters ")
            chooseCharacter()
        case "2":
            print(" PLAYER 2 choose your characters ")
            chooseCharacter()
        case "3":
            print(" You chose to return to MAIN MENU")
            mainMenu()
        default:
            print("I dont understand")
        }
    }
}
//======================
// MARK: - 3th Menu - Choose your character
//======================
let test = Character.creatCharacters()
func chooseCharacter() {
    print("Who is gonna fight on your side today ?"
            + "\n1. Batman"
            + "\n2. Hermione Granger"
            + "\n3. Antman"
            + "\n4. Tank Girl"
            + "\n5. Ace Ventura"
            + "\n6. Zohan"
            + "\n7. Kato"
            + "\n8. Aggretsuko"
            + "\n9. Return to MAIN MENU")
    if let characterChoice = readLine() {
        switch characterChoice {
        case "1":
            print(" You chose Batman")
            print(test[0].description)
        case "2":
            print(" You chose Hermione Granger")
            print(test[1].description)
        case "3":
            print(" You chose Antman")
            print(test[2].description)
        case "4":
            print(" You chose Tank Girl")
            print(test[3].description)
        case "5":
            print(" You chose Ace Ventura")
            print(test[4].description)
        case "6":
            print(" You chose Zohan")
            print(test[5].description)
        case "7":
            print(" You chose Kato")
            print(test[6].description)
        case "8":
            print(" You chose Aggretsuko")
            print(test[7].description)
        case "9":
            print(" You chose to return to MAIN MENU")
            mainMenu()
        default:
            print("I dont understand")
        }
    }
    
}

//main loop of the game
var MYGAME = true
while MYGAME == true {
    mainMenu()
}
