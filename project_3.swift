// Just some comments
//new brach test
 
 

 
 
 
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
   //should have a list or a dictionnary of characters, each player 3 characters
   init(playerID: Int, chosenCharacters: [Character] = []){
       self.playerID = playerID
       self.chosenCharacters = chosenCharacters
   }
   init(playerID: Int){
       self.playerID = playerID
   }
  
}


class Character {
   let characterID: Int
   var characterName:String
   let description:String
   var lifePoints:Int
   var weapon:Item // needs to be changed to a type Weapon later
   var potion: Item
   var isDead :Bool = false
   
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
        Item(itemID: 1, nameOfItem: "Batarang", effect: -5),
        Item(itemID: 2, nameOfItem: "magicwand", effect: -4),
        Item(itemID: 3, nameOfItem: "antacid", effect: -6),
        Item(itemID: 4, nameOfItem: "tank", effect: -13),
        Item(itemID: 5, nameOfItem: "rhinocall", effect: -3),
        Item(itemID: 6, nameOfItem: "scissors",effect: -15),
        Item(itemID: 7, nameOfItem: "dart", effect: -5),
        Item(itemID: 8, nameOfItem: "scream", effect: -8),
        Item(itemID: 9, nameOfItem: "lasersword", effect: -10),
        Item(itemID: 10, nameOfItem: "machete", effect: -9),
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
            //chooseCharacter()
        case "2":
            print(" PLAYER 2 choose your characters ")
            return Player(playerID:2)
            //chooseCharacter()
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
            
           // print(test[0].description)
        case "2":
            print(" You chose Hermione Granger")
            //print(test[1].description)
        case "3":
            print(" You chose Antman")
          //  print(test[2].description)
        case "4":
            print(" You chose Tank Girl")
           // print(test[3].description)
        case "5":
            print(" You chose Ace Ventura")
            //print(test[4].description)
        case "6":
            print(" You chose Zohan")
           // print(test[5].description)
        case "7":
            print(" You chose Kato")
           // print(test[6].description)
        case "8":
            print(" You chose Aggretsuko")
            //print(test[7].description)
        case "9":
            print(" You chose to return to MAIN MENU")
           // mainMenu()
        default:
            print("I dont understand")
        }
        if let choice = Int(characterChoice){
            return Character.getcharacter(characterid: choice)
            print("Cast succesful")
        }
        
    }
   
    return Character.getcharacter(characterid: choice)
    
    
}

//main loop of the game
var MYGAME = true
while MYGAME == true {
    mainMenu()
    var player1 = whoAmI()
    while player1.chosenCharacters.count < 1{
        player1.chosenCharacters.append(chooseCharacter())
    }
    print(player1.chosenCharacters[0].characterName)
    var player2 = whoAmI()
    while player2.chosenCharacters.count < 1{
        player2.chosenCharacters.append(chooseCharacter())
    }
    print(player2.chosenCharacters[0].weapon.nameOfItem)
}
