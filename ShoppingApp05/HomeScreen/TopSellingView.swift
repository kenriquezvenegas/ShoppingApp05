//
//  TopSellingView.swift
//  ShoppingApp05
//
//  Created by Beatriz Enríquez on 30/01/24.
//

import SwiftUI

struct TopSellingView: View {
    
    let images: [FruitModel] = [
        .init(id: 0, title: .Apple, image: "apple", price: "$1.99 each", color: "1"),
        .init(id: 1, title: .Apricot, image: "apricot", price: "$2.04 each", color: "2"),
        .init(id: 2, title: .Avocado, image: "avocado", price: "$1.04 each", color: "3"),
        .init(id: 3, title: .Banana, image: "banana", price: "$2.06 each", color: "4"),
        .init(id: 4, title: .Cherry, image: "cherry", price: "$3.00 each", color: "5"),
        .init(id: 5, title: .Dragonfruit, image: "dragonfruit", price: "$1.04 each", color: "6"),
        .init(id: 6, title: .Fig, image: "fig", price: "$2.00 each", color: "1"),
        .init(id: 7, title: .Orange, image: "orange", price: "$1.00 each", color: "2"),
        .init(id: 8, title: .Grapes, image: "grapes", price: "$2.54 each", color: "3"),
        .init(id: 9, title: .Raspberry, image: "raspberry", price: "$3.04 each", color: "4"),
        .init(id: 10, title: .Papaya, image: "papaya", price: "$1.04 each", color: "5"),
        .init(id: 11, title: .Kiwi, image: "kiwi", price: "$2.78 each", color: "6"),
        .init(id: 12, title: .Lemon, image: "lemon", price: "$2.04 each", color: "1"),
        .init(id: 13, title: .Blackberry, image: "blackberry", price: "$2.04 each", color: "2"),
        .init(id: 14, title: .Mango, image: "mango", price: "1.00 each", color: "3"),
        .init(id: 15, title: .Muskmelon, image: "muskmelon", price: "$1.56 each", color: "4"),
        .init(id: 16, title: .Pear, image: "pear", price: "$2.04 each", color: "5"),
        .init(id: 17, title: .Pineapple, image: "pineapple", price: "$2.84 each", color: "6"),
        .init(id: 18, title: .Plum, image: "plum", price: "$1.15 each", color: "1"),
        .init(id: 19, title: .Strawbery, image: "strawbery", price: "$2.35 each", color: "2"),
        .init(id: 20, title: .Watermelon, image: "watermelon", price: "$1.64 each", color: "3")
    ]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
                ForEach(images, id: \.id) { fruit in
                    NavigationLink(destination: DetailView(fruit: fruit)) {
                        FruitCardView(fruits: fruit)
                    }
                }
            }
        }
    }
}

#Preview {
    TopSellingView()
}
