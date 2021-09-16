//
//  Card.swift
//  Poker
//
//  Created by Matthew Popov on 12.08.2021.
//

import SwiftUI


enum Suit: String {//spades(♠), hearts(♥), diamonds(♦) and clubs(♣)
    case spade = "S"
    case heart = "H"
    case diamond = "D"
    case club = "C"
}

enum Symbol: String {
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case ten = "10"
    case jack = "J"
    case queen = "Q"
    case king = "K"
    case ace = "A"
}

struct Card: Identifiable {
    var id = UUID()
    var suit: Suit
    var symbol: Symbol
}

final class CardDeck {
    static var deck: [Card] = [
        //spade ♠
        Card(suit: .spade, symbol: .two),
        Card(suit: .spade, symbol: .three),
        Card(suit: .spade, symbol: .four),
        Card(suit: .spade, symbol: .five),
        Card(suit: .spade, symbol: .six),
        Card(suit: .spade, symbol: .seven),
        Card(suit: .spade, symbol: .eight),
        Card(suit: .spade, symbol: .nine),
        Card(suit: .spade, symbol: .ten),
        Card(suit: .spade, symbol: .jack),
        Card(suit: .spade, symbol: .queen),
        Card(suit: .spade, symbol: .king),
        Card(suit: .spade, symbol: .ace),
        //heart ♥
        Card(suit: .heart, symbol: .two),
        Card(suit: .heart, symbol: .three),
        Card(suit: .heart, symbol: .four),
        Card(suit: .heart, symbol: .five),
        Card(suit: .heart, symbol: .six),
        Card(suit: .heart, symbol: .seven),
        Card(suit: .heart, symbol: .eight),
        Card(suit: .heart, symbol: .nine),
        Card(suit: .heart, symbol: .ten),
        Card(suit: .heart, symbol: .jack),
        Card(suit: .heart, symbol: .queen),
        Card(suit: .heart, symbol: .king),
        Card(suit: .heart, symbol: .ace),
        //diamond ♦
        Card(suit: .diamond, symbol: .two),
        Card(suit: .diamond, symbol: .three),
        Card(suit: .diamond, symbol: .four),
        Card(suit: .diamond, symbol: .five),
        Card(suit: .diamond, symbol: .six),
        Card(suit: .diamond, symbol: .seven),
        Card(suit: .diamond, symbol: .eight),
        Card(suit: .diamond, symbol: .nine),
        Card(suit: .diamond, symbol: .ten),
        Card(suit: .diamond, symbol: .jack),
        Card(suit: .diamond, symbol: .queen),
        Card(suit: .diamond, symbol: .king),
        Card(suit: .diamond, symbol: .ace),
        //club ♣
        Card(suit: .club, symbol: .two),
        Card(suit: .club, symbol: .three),
        Card(suit: .club, symbol: .four),
        Card(suit: .club, symbol: .five),
        Card(suit: .club, symbol: .six),
        Card(suit: .club, symbol: .seven),
        Card(suit: .club, symbol: .eight),
        Card(suit: .club, symbol: .nine),
        Card(suit: .club, symbol: .ten),
        Card(suit: .club, symbol: .jack),
        Card(suit: .club, symbol: .queen),
        Card(suit: .club, symbol: .king),
        Card(suit: .club, symbol: .ace),
        
    ]
}


