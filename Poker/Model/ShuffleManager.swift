//
//  ShuffleManager.swift
//  Poker
//
//  Created by Matthew Popov on 12.08.2021.
//

import SwiftUI


final class ShuffleManager {
    static func getPostFlop(_ deck: inout [Card]) -> [Card] {
        
        var fiveCards: [Card] = []
        var shuffeldDeck = deck.shuffled()
        
        ShuffleManager.manageHandOrFlopFor(5, startDeck: &shuffeldDeck, finishArrOfCards: &fiveCards)
        
        deck = shuffeldDeck
        
        return fiveCards
    }
    
    static func getTwoCardsForEachPlayer(_ deck: inout [Card]) -> [Card] {
        var twoCardsForPlayer: [Card] = []
        var shuffeldDeck = deck.shuffled()
        
        ShuffleManager.manageHandOrFlopFor(2, startDeck: &shuffeldDeck, finishArrOfCards: &twoCardsForPlayer)
        
        deck = shuffeldDeck
        
        return twoCardsForPlayer
    }
    
    private static func manageHandOrFlopFor(_ number: Int, startDeck: inout [Card], finishArrOfCards: inout [Card]) {
        
        for (index, item) in startDeck.enumerated() {
            if index < number {
                finishArrOfCards.append(item)
                startDeck.remove(at: index)
            }
        }
        
    }
}
