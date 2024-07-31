//
//  EmojiMemoryGame.swift
//  Assignment for cs193p
//
//  Created by 老公公爱宝宝 on 2024/7/29.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {

    private static let emojis = ["🏀","🏈","⚽️","⚾️","🥎","🎾","🏐","🎱","🏓","🏸","🏒","🪃"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame(numberOfPairsOfCards: 4) { pairIndex in
            if emojis.indices.contains(pairIndex) {
                return emojis[pairIndex]
            } else {
                return "??"
            }
            
        }
    }

    @Published private var model = createMemoryGame()
    
    typealias Card = MemoryGame<String>.Card
    
    var cards: Array<Card> {
        model.cards
    }
        
        
}

