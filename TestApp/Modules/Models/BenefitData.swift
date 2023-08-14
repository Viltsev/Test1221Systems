//
//  BenefitData.swift
//  TestApp
//
//  Created by Данила on 14.08.2023.
//

import Foundation
import SwiftUI

struct Benefit: Identifiable {
    var id = UUID()
    let title: String
    let color: Color
}

var benefits: [Benefit] = [
    Benefit(title: "Абонемент на кофе", color: Color(.blue1)),
    Benefit(title: "Мои\nскидки", color: Color(.lightPink)),
    Benefit(title: "Карта\nв подарок", color: Color(.lightGreen)),
    Benefit(title: "Доставим\nза 1 час", color: Color(.blue2))
]
