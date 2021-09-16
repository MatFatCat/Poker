//
//  ViewModel.swift
//  Poker
//
//  Created by Matthew Popov on 24.08.2021.
//

import SwiftUI



final class ViewModel: ObservableObject {
    @Published var firstHand: [Card] = []
    @Published var secondHand: [Card] = []
    @Published var tableCards: [Card] = []
    @Published var deck: [Card] = []
    @Published var potSize: Int = 10
    @Published var combinationFirst: String = ""
    @Published var combinationSecond: String = ""
    
    @Published var firstHandImageSet: [Image] = [
        
        Image("AS"),
        Image("AS")
        
    ]
    
    @Published var secondHandImageSet: [Image] = [
        
        Image("AS"),
        Image("AS")
        
    ]
    @Published var flopImageSet: [Image] = [
        Image("AS"),
        Image("AS"),
        Image("AS"),
        Image("AS"),
        Image("AS")
    ]
    
    
    
    func makeImagesFromHand(_ hand: [Card]) -> [Image] {
        
        var imageSet: [Image] = []
        
        for card in hand {
            imageSet.append(Image("\(card.symbol.rawValue)\(card.suit.rawValue)"))
        }
        
        return imageSet
    }
    
    func prepareCards() {
        self.deck = CardDeck.deck
        self.firstHand = ShuffleManager.getTwoCardsForEachPlayer(&self.deck)
        self.secondHand = ShuffleManager.getTwoCardsForEachPlayer(&self.deck)
        self.tableCards = ShuffleManager.getPostFlop(&self.deck)
        self.firstHandImageSet = makeImagesFromHand(self.firstHand)
        self.secondHandImageSet = makeImagesFromHand(self.secondHand)
        self.flopImageSet = makeImagesFromHand(self.tableCards)
    }
}
