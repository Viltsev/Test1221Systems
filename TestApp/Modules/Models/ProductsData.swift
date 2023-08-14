//
//  ProductsData.swift
//  TestApp
//
//  Created by Данила on 14.08.2023.
//

import Foundation
import SwiftUI

struct Product: Identifiable {
    var id = UUID()
    let image: Image
    let price: Double
    var prevPrice: Double?
    var superPrice: String?
}

var recommendations: [Product] = [
    Product(image: Image(.rec1), price: 259.90),
    Product(image: Image(.rec2), price: 99.90, superPrice: "Супер Цена"),
    Product(image: Image(.rec3), price: 159.90, prevPrice: 199.90, superPrice: "Удар по ценам"),
    Product(image: Image(.rec4), price: 399.90),
    Product(image: Image(.rec5), price: 69.90),
]

var sweetMood: [Product] = [
    Product(image: Image(.sm6), price: 99.90),
    Product(image: Image(.sm7), price: 99.90),
    Product(image: Image(.sm8), price: 99.90),
    Product(image: Image(.sm1), price: 99.90),
    Product(image: Image(.sm2), price: 99.90),
    Product(image: Image(.sm3), price: 99.90),
    Product(image: Image(.sm4), price: 99.90),
    Product(image: Image(.sm5), price: 99.90),
]
