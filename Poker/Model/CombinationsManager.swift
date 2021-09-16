import SwiftUI


enum Combinations: String  {
    case highCard = "High Card"
    case pair = "Pair"
    case twoPair = "Two Pairs"
    case set = "Set"
    case straight = "Straight"
    case flush = "Flush"
    case fullHouse = "Full House"
    case fourOfKind = "Four Of A Kind"
    case straightFlush = "Straight Flush"
    case royalFlush = "Royal Flush"
}


final class CombinationsManager {
    
    private func checkCombinations(hand: [Card], table: [Card]) -> [Combinations] {
        
        var combinations: [Combinations] = []
        var flashCounter: Int = 1
        var pairOrSetOrFourOfKindCounter: Int = 1
        var equelledCards: Bool = false
        
        if hand[0].symbol.rawValue == hand[1].symbol.rawValue {
            pairOrSetOrFourOfKindCounter += 1
            equelledCards = true
        }
        
        if hand[0].suit.rawValue == hand[1].suit.rawValue { flashCounter += 1 }
        
        hand.forEach { handCard in
            table.forEach { tableCard in
                if handCard.symbol.rawValue == tableCard.symbol.rawValue {
                    pairOrSetOrFourOfKindCounter += 1
                }
                
                if handCard.suit.rawValue == tableCard.suit.rawValue {
                    flashCounter += 1
                }
            }
            
            if pairOrSetOrFourOfKindCounter == 2 { combinations.append(.pair) }
            if pairOrSetOrFourOfKindCounter == 3 { combinations.append(.set) }
            if pairOrSetOrFourOfKindCounter == 4 { combinations.append(.fourOfKind) }
            
            if equelledCards != true { pairOrSetOrFourOfKindCounter = 1 }
        }
        
        if flashCounter >= 5 { combinations.append(.flush) }
        if combinations.isEmpty { combinations.append(.highCard) }
        
        var thereIsSet: Bool = false
        var thereIsPair: Bool = false
        
        combinations.forEach { combination in
            if combination == .set { thereIsSet = true }
            if combination == .pair { thereIsPair = true }
        }
        
        if thereIsSet == true && thereIsPair == true {
            for index in 0..<combinations.count {
                if combinations[index] == .pair || combinations[index] == .set {
                    combinations.remove(at: index)
                }
            }
            
            combinations.append(.fullHouse)
        }
        
        return combinations
    }
    
    static func getCombination(hand: [Card], table: [Card]) -> String {
        
        let combinations: [ Combinations ] = CombinationsManager().checkCombinations(hand: hand, table: table)
        var conclusion = ""
        
        combinations.forEach { combination in
            conclusion += combination.rawValue + " "
        }
        
        return conclusion
    }
}
