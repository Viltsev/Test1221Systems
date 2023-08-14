//
//  StoriesData.swift
//  TestApp
//
//  Created by Данила on 14.08.2023.
//

import Foundation
import SwiftUI

struct Story: Identifiable {
    var id = UUID()
    let image: Image
    let description: String
}

var stories: [Story] = [
    Story(image: Image(.spar), description: "Привилегии «Мой SPAR»"),
    Story(image: Image(.tg), description: "Мы в соцсетях"),
    Story(image: Image(.cocktail), description: "3 рецепта коктейлей"),
    Story(image: Image(.degustation), description: "Дегустации в SPAR"),
    Story(image: Image(.news), description: "Новинки недели")
]
