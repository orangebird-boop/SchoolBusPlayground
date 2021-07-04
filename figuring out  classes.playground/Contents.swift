class Character {
    let characterID: Int
    var characterName:String
    let description:String
    var lifePoints:Int
    var weapon:Item // needs to be changed to a type Weapon later
    var isDead :Bool = false
    
    // here i initialise the values: characterID, characterName, lifePoints and weapon (is dead is false by default
    init( characterID: Int, characterName:String,  description:String,  lifePoints:Int,  weapon:Item){
        self.characterID = characterID
        self.characterName = characterName
        self.description = description
        self.lifePoints = lifePoints
        self.weapon = weapon
        
    
    }
        // the list of all the characters, I set the values of each availible character
        var characterlList = [
            Character(characterID: 1, characterName: "Batman", description: "He has 15 lifepoints. His weapon is a Batarang, deals 5 points of damage, and has a medium healin potion.", lifePoints: 15, weapon: Item.getitem(itemid: 1)),
            Character(characterID: 2, characterName:  "Hermione Granger", description: "She is talented witch. She has 16 lifepoins. Her weapon is a magicwand, deals 4 damage, and has a strong healing potion.", lifePoints: 16, weapon: Item.getitem(itemid: 2)),
            Character(characterID: 3, characterName: "Antman", description: "He can became small. Like an ant. He has 13 lifepoints. His weapon is ant acid, deals 6 damage, and has a  medium healing potion.", lifePoints: 13, weapon: Item.getitem(itemid: 3)),
            Character(characterID: 4, characterName: "Tank Girl", description: "A girl with a tank. She has 8 lifepoins. Her weapon is a tank, deals 13 damage, and has a weak healing potion.", lifePoints: 8, weapon: Item.getitem(itemid: 4)),
            Character(characterID: 5, characterName: "Ace Ventura", description: "He is the pet detective. He has 17 lifepoints. His weapon the rhinoceros mating call, deals 3 damage, and has a  medium healing potion.", lifePoints: 17, weapon: Item.getitem(itemid: 5)),
            Character(characterID: 6, characterName: "Zohan", description: "He is a hairdesser ex israeli soldier. He has 20 lifepoints. His weapon are his scissors, deals 15 damage, and has no healing potion.", lifePoints: 20, weapon: Item.getitem(itemid: 6)),
            Character(characterID: 7, characterName: "Kato", description: "He is the sidekick of Green Hornet. He has 16 lifepoints. His weapon is a hornet shaped dart, deals 5 damage, and has a  medium healing potion.", lifePoints: 16, weapon: Item.getitem(itemid: 7)),
            Character(characterID: 8, characterName: "Aggretsuko", description: "She is a red panda working in an office. She has 11 lifepoints. Her weapon is deathmetal scream, deals 8 damage, and has a strong healing potion.", lifePoints: 11, weapon: Item.getitem(itemid: 8)),
            ]
    }
    //methods: takeDamage(), die(), isdead()?
 

class Item {                 // this is the class which contains the elements to do action
    var nameOfItem:String
    var effect:Int                  // this is a negative value in case of an attack and positive in case of a heal
    let itemID: Int                 // all items have an id to identify them later in the game
    
    init(itemID: Int, nameOfItem: String, effect: Int) {    //here I initialise the variables of th class Item
        self.itemID = itemID
        self.nameOfItem = nameOfItem
        self.effect = effect
    }
    static let itemList = [                                     // the list of useble items in the game
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
        for y in itemList {              //for an item in the list of itemList
            if y.itemID == itemid {        // if the item is equal the item.ID
                return y                // return the item
            }
        }
        return Item(itemID: 14, nameOfItem: "Something", effect: 0)         // if not give back some value which i made up
    
    }
   
}


var x = Item.getitem(itemid: 13)
print(x.toString())
var y = ""
print(x.itemID, x.effect, x.nameOfItem)

    /*
    var x = getitem(itemid: 1)
    x.weapon
    var t = x.weapon
    var new = Item.getitem(itemID:t )
    var new = Item.getitem(itemID: x.weapon)
    new.effect
 //method useItem(),
 
 */

