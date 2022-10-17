//
//  CounterView.swift
//  ShoppingFruits
//
//  Created by Radhakrishnan Iyer, Aishwarya on 10/10/22.
//

import SwiftUI

struct CounterView: View {
    
    @State var count = 0
    var body: some View {
        HStack(spacing: 20) {
            Button(action: {
                count += 1
            }, label: {
                Image(systemName: "plus").resizable().frame(width: 15, height: 15)
            })
            Text("\(count)").font(.title)
            Button(action: {
                if count != 0 {
                    count -= 1
                }
            }, label: {
                Image(systemName: "minus").resizable().frame(width: 15, height: 2).contentShape(Rectangle())
            })
        }.foregroundColor(.black)
            .background(Color("bgColor").opacity(0.15))
        
            .frame(width: 130, height: 50)
            .cornerRadius(12)
        
           
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
