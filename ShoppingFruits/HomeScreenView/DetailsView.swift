//
//  DetailsView.swift
//  ShoppingFruits
//
//  Created by Radhakrishnan Iyer, Aishwarya on 10/10/22.
//

import SwiftUI

struct RoundedCornerShape: Shape {
    let cornerRadius: UIRectCorner
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: .allCorners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
    
}

struct DetailsView: View {
    let fruit: FruitTitle
    var body: some View {
        
        VStack(alignment: .leading, spacing: 25) {
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.top)
                .clipShape(RoundedCornerShape.init(cornerRadius: [.bottomLeft, .bottomRight], radius: 50))
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2.8, alignment: .top)
                .edgesIgnoringSafeArea(.all)
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                .overlay(Image("\(fruit.rawValue)")
                    .resizable()
                    .frame(width: 250, height: 250, alignment: .center)
                    .shadow(color: .gray, radius: 5, x: 5, y: 5)
                    .offset(y: 80)
                )
            Spacer()
            
            detailsView()
            HStack {
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color("bgColor"))
                    .opacity(0.15)
                    .overlay(Image(systemName: "hourglass"))
                    .font(.system(size: 40))
                    .frame(width: 50, height: 50)
                VStack(alignment: .leading, spacing: 5) {
                    Text("Delivery Time")
                    Text("25-30 Min ")
                }
                
            }.padding(.horizontal)
            
            HStack{
                Text("$1.99")
                    .fontWeight(.medium)
                    .font(.title)
                    .padding(.horizontal)
                Spacer()
                CounterView()
            }
            
            Image("bg").resizable().frame(width: 350, height: 50, alignment: .center)
                .cornerRadius(10)
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                .overlay(
                    Text("Add to Cart")
                        .font(.system(.title3))
                        .fontWeight(.medium)
                ).padding(.horizontal)
        }
    }
    
    func detailsView() -> some View {
        VStack(alignment: .leading, spacing: 25) {
            Text("\(fruit.rawValue) - Medium")
                .fontWeight(.medium)
                .font(.system(.title))
                .padding(.horizontal)
                .textCase(.uppercase)
            
            Text("Each (500g - 700g)")
                .padding(.horizontal)
            
            Text("Organic agriculture is intended to produce high quality, nutritious food that contributes to preventive health care and well-being. In view of this, it avoids the use of fertilizers, pesticides, animal drugs and food additives that may have adverse health effects.")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .lineLimit(6)
                .padding(.horizontal)
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(fruit: .orange)
    }
}
