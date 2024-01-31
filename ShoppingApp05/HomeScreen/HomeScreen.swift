//
//  HomeScreen.swift
//  ShoppingApp05
//
//  Created by Beatriz Enríquez on 30/01/24.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        ZStack{
            VStack(alignment: .leading, spacing: 10){
                HStack{
                    Image(systemName: "line.3.horizontal")
                    Spacer()
                    Image(systemName: "cart.badge.plus")
                }
                .font(.system(.title3))
                
                Text("Hey!")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Find fresh fruits that you want")
                RoundedRectangle(cornerRadius: 15)
                    .fill(.gray.opacity(0.3))
                    .overlay(
                        HStack{
                            Image(systemName: "magnifyingglass")
                            Text("Seach fresh fruits")
                                .foregroundColor(.gray)
                                .multilineTextAlignment(.leading)
                            Spacer()
                        }.padding()
                    ).frame(width: 350, height: 50, alignment: .center)
                Text("Top Selling")
                    .font(.title)
                    .fontWeight(.bold)
                TopSellingView()
                Text("Near you")
                    .font(.title)
                    .fontWeight(.bold)
                PlacesView()
                Spacer()
            }.padding()
        }
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

#Preview {
    HomeScreen()
}
