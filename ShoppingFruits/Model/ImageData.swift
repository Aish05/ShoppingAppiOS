//
//  ImageData.swift
//  ShoppingFruits
//
//  Created by Radhakrishnan Iyer, Aishwarya on 10/10/22.
//

import Foundation



struct FruitModel {
    var id: Int
    var title : FruitTitle
    var image: String
    var price: String
    var color: String
}

enum FruitTitle : String {
    case apple, apricot, avocado, banana,blackberry, cherry,
         dragonfruit, fig, grapes, kiwi, lemon, mango, muskmelon,
         orange,papaya, pear, pineapple, plum,raspberry, strawbery, watermelon
}
