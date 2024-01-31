//
//  FruitCardView.swift
//  ShoppingApp05
//
//  Created by Beatriz Enríquez on 30/01/24.
//

import SwiftUI

let images: FruitModel = FruitModel(id: 1, title: .Apple, image: "apple", price: "$3.44", color: "1")

struct FruitCardView: View {
    let fruits: FruitModel
    var body: some View {
        ZStack{
            VStack(alignment: .leading, spacing: 5){
                Text(fruits.title.rawValue)
                    .fontWeight(.bold)
                    .font(.system(.title3))
                    .foregroundColor(.black)
                Text(fruits.price)
                    .font(.system(.title3))
                    .foregroundColor(.black.opacity(0.7))
                Spacer()
            }
            .padding()
            .frame(width: 175, height: 150, alignment: .center)
            .background(Color(fruits.color))
            .cornerRadius(30)
            .padding()
            ZStack{
                Image(fruits.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 110)
            }.offset(y: 60)
        }
        .frame(width: 175, height: 250, alignment: .center)
        .shadow(color:.gray, radius: 10, x: 5, y: 10)
    }
}

#Preview {
    FruitCardView(fruits: images)
}
