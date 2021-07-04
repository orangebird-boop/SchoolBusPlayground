// let price = 1499.0 // prix du voyage

// var day = 0 // how long Joe needs to save money

//======================
// MARK: - Parameters
//======================
var money = 0.0 // Joe's curent money

var barn = ["milk" : 0 , "wheat" :  0 ,"wool" : 0] //Milk , wheat, wool



//======================
// MARK: - Functions
//======================

/*
func calculateBarnSize() -> Int {
    var barnSize = 0
    for (goods,count) in barn {
        barnSize += count
    }
    return barnSize
}
*/
func feedCow() {
    money -= 4
}

func sell() {
        money += Double(barn["milk"]!) * 0.50      //milk
        money += Double(barn["wheat"]!) * 0.30      //wheat
        money += Double(barn["wool"]!) * 1         //wool
        
        barn = ["milk" : 0 , "wheat" :  0 ,"wool" : 0]
}

func harvest(retrieving  quantity: Int){
    barn["wheat"]! += quantity
}

func mowSheep(retrieving  quantity: Int){
    barn["wool"]! += quantity
}

func milkCows(retrieving  quantity: Int){
    barn["milk"]! += quantity
}

/*
 while money < price {
    feedCow()
   
    if calculateBarnSize() >= 500 {
        sell()
    } else {

        if day % 30 == 1 {   //wheat
            harvest()
        } else if day % 30 == 10 || day % 30 == 20 {     //wool
            mowSheep()
        } else {
           milkCows()        //milk
        }
    }

    day += 1
}

print("Il aura fallu \(day) jours à Joe pour économiser \(money) €")
 */

//======================
// MARK: - Conversation
//======================
func readQuantity(of type: String) -> Int?{
    print("Combien de \(type) avez vous recupere?")
    if let line = readLine() {
        if let quantity = Int(line) {
            return quantity
        
        }
    }
    
    print("Je n'ai pas compris")
    return nil
}
func addNewActivity() {
    print("Qu’avez-vous fait aujourd'hui?"
        + "\n1. 🥕  J’ai nourri mes animaux"
        + "\n2. 💰  J’ai vendu mes produits"
        + "\n3. 🐄  J’ai trait mes vaches"
        + "\n4. 🌾  J’ai moissonné"
        + "\n5. 🐑  J’ai tondu mes moutons")
    if let choice2 = readLine() {
        switch choice2 {
        case "1": // Nourrir les vaches
            feedCow()
        case "2": //Vendre les produits
            sell()
        case "3": // Traire les vaches
            if let quantity = readQuantity(of: "🍼") {
                milkCows(retrieving: quantity)
            }
        case "4": // Moissonner
            if let quantity = readQuantity(of: "🌾") {
                harvest(retrieving: quantity)
            }
        case "5": // Tondre les moutons
            if let quantity = readQuantity(of: "⚪️") {
                mowSheep(retrieving: quantity)
            }
        default:
            print("Je ne comprends pas")
        }
        
        print("C'est compris")
    }
}

func MenuPrincipal() {
        print("Que voulez vous faire ?"
        + "\n1. 🤸  Enregistrer une nouvelle activité"
        + "\n2. 🏦  Consulter ma banque"
        + "\n3. 🏠  Consulter ma grange")

    if let choice = readLine() {
        switch choice {
            case "1":
                print("Qu'avez vous fait aujourd'hui?")
                addNewActivity()
            case "2":
                print("Vous avez \(money) euros sur votre compte")
            case "3":
                print("Votre grange contient :"
                    + "\n🍼  \(barn["milk"]!) bidons de lait"
                    + "\n🌾  \(barn["wheat"]!) bottes de blé"
                    + "\n⚪️  \(barn["wool"]!) pelottes de laine")
            default:
                print("Je ne comprends pas")
        }
    }
}

// la boucle du program
while true {
    MenuPrincipal()
}
