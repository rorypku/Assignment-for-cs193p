//
//  MemoryGame.swift
//  Assignment for cs193p
//
//  Created by 老公公爱宝宝 on 2024/7/29.
//

import Foundation

struct MemoryGame<CardContent> where CardContent: Equatable {
    
    private(set) var cards: Array<Card>

    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = []
        for pairIndex in 0 ..< max(2, numberOfPairsOfCards) {
            cards.append(Card(id: "\(pairIndex+1)a", content: cardContentFactory(pairIndex)))
            cards.append(Card(id: "\(pairIndex+1)b", content: cardContentFactory(pairIndex)))
        }
    }

    struct Card: Identifiable, Equatable  {
        var isFaceUp: Bool = true
        var id: String
        let content: CardContent
    }
}



