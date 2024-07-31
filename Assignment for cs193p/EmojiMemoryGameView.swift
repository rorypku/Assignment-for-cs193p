//
//  ContentView.swift
//  Assignment for cs193p
//
//  Created by 老公公爱宝宝 on 2024/7/29.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    
    @ObservedObject var viewModel = EmojiMemoryGame()
    
    var body: some View {
        cards
    }
    
    private var cards: some View {
        VStack {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 85))]) {
                ForEach(viewModel.cards.indices, id: \.self) { index in
                    VStack {
                        CardView(viewModel.cards[index])
                            .aspectRatio(2/3, contentMode: .fit)
                            .padding(3)
                        Text("ID: \(viewModel.cards[index].id)")
                    }
                }
            }
        }
        .padding()
    }    
}

#Preview {
    EmojiMemoryGameView()
}


