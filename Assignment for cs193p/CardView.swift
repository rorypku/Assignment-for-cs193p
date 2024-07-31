//
//  CardView.swift
//  Assignment for cs193p
//
//  Created by 老公公爱宝宝 on 2024/7/29.
//

import SwiftUI

struct CardView: View {
    
    typealias Card = MemoryGame<String>.Card
    
    let card: Card
    
    init(_ card: Card) {
        self.card = card
    }
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            Group {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(card.content)
                    .font(.largeTitle)
            }
            .opacity(card.isFaceUp ? 1 : 0)
            base.fill().opacity(card.isFaceUp ? 0 : 1)
        }

    }
}
 
struct CardView_Previews: PreviewProvider {
    
    static var previews: some View {
        VStack {
            CardView(MemoryGame<String>.Card(isFaceUp: true, id: "test1", content: "X"))
                .font(.largeTitle)
            CardView(MemoryGame<String>.Card(isFaceUp: false, id: "test2", content: "X"))
                .font(.largeTitle)
        }
        .padding()
    }
}

