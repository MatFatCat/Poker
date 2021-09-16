//
//  ContentView.swift
//  Poker
//
//  Created by Matthew Popov on 12.08.2021.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    @State var combinationFirst = ""
    @State var combinationSecond = ""
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Image("redBack")
                    .resizable()
                    .ignoresSafeArea(.all)
                VStack {
                    Button("Generate Cards") {
                        self.viewModel.prepareCards()
                        self.viewModel.combinationFirst = CombinationsManager.getCombination(hand: self.viewModel.firstHand, table: self.viewModel.tableCards)
                        self.viewModel.combinationSecond = CombinationsManager.getCombination(hand: self.viewModel.secondHand, table: self.viewModel.tableCards)
                    }
                    .frame(width: geometry.size.width*0.55, height: geometry.size.height*0.07)
                    .background(Color.green)
                    .foregroundColor(.black)
                    .cornerRadius(30)
                    
                    Spacer()
                    VStack(spacing: 20) {
                        TwoCardsView(cards: self.viewModel.secondHandImageSet, withOfCard: geometry.size.width*0.18, heightOfCard: geometry.size.height*0.15)
                        
                        Text("\(self.viewModel.combinationSecond)")
                        
                        Text("Pot: \(self.viewModel.potSize)$")
                            .foregroundColor(.white)
                            .font(.system(size: 50, weight: .bold, design: .default))
        
                        FlopView(cards: self.viewModel.flopImageSet, withOfCard: geometry.size.width*0.18, heightOfCard: geometry.size.height*0.15)
                        
                        Text("\(self.viewModel.combinationFirst)")
                        
                        TwoCardsView(cards: self.viewModel.firstHandImageSet, withOfCard: geometry.size.width*0.18, heightOfCard: geometry.size.height*0.15)
                    }.onAppear() {
                        self.viewModel.prepareCards()
                        self.viewModel.combinationFirst = CombinationsManager.getCombination(hand: self.viewModel.firstHand, table: self.viewModel.tableCards)
                        self.viewModel.combinationSecond = CombinationsManager.getCombination(hand: self.viewModel.secondHand, table: self.viewModel.tableCards)
                        
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

