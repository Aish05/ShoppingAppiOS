//
//  FruitCardView.swift
//  ShoppingFruits
//
//  Created by Radhakrishnan Iyer, Aishwarya on 10/10/22.
//

import SwiftUI

let image  = FruitModel(id:1, title: .orange, image: "apple", price: "$3.45", color: "1")

struct FruitCardView: View {
    let fruits: FruitModel
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text(fruits.title.rawValue)
                    .fontWeight(.bold)
                    .font(.system(.title3))
                    .foregroundColor(.black)
                
                Text(fruits.price)
                    .font(.system(.title3))
                    .foregroundColor(.black)
                    .opacity(0.7)
                
                Spacer()
            }
            .padding()
            .frame(width: 175, height: 150, alignment: .center)
            .background(Color(fruits.color))
            .cornerRadius(30)
            .padding()
            .shadow(color: .gray, radius: 5, x:5, y: 5)
            
            ZStack {
                Image(fruits.image).resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 110)
                   
            }.offset(y: 60)
                
        }.frame(width: 175, height: 250, alignment: .center)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruits: image)
    }
}
