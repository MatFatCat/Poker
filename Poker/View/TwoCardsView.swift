//
//  TwoCardsView.swift
//  Poker
//
//  Created by Matthew Popov on 13.08.2021.
//

import SwiftUI

struct TwoCardsView: View {
    
    var cards: [Image]
    var withOfCard: CGFloat
    var heightOfCard: CGFloat
    
    var body: some View {
        HStack {
            self.cards[0]
                .resizable()
                .frame(width: withOfCard, height: heightOfCard)
            self.cards[1]
                .resizable()
                .frame(width: withOfCard, height: heightOfCard)
        }
    }
}
