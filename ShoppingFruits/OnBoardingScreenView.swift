//
//  OnBoardingScreenView.swift
//  ShoppingFruits
//
//  Created by Radhakrishnan Iyer, Aishwarya on 10/10/22.
//

import SwiftUI

struct OnBoardingScreenView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Spacer()
                Image("img")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding()
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Order your Favourite fruits")
                        .fontWeight(.bold)
                        .font(.system(.largeTitle))
                    
                    Text("Eat fresh fruits and try to be healthy")
                        .font(.system(.title3))
                        .foregroundColor(.black).opacity(0.7)
                    
                }
                Spacer()
                NavigationLink(destination: HomeScreenView(), label: {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color("6"))
                        .frame(width: 280, height: 60, alignment: Alignment.center)
                        .overlay(HStack(spacing: 10) {
                            Text("Next")
                                .fontWeight(.bold)
                                .font(.title)
                            
                            Image(systemName: "chevron.right")
                        }).foregroundColor(.black)
                    
                })
                Spacer()
                
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct OnBoardingScreenView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingScreenView()
    }
}
