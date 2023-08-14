//
//  FirstBlockData.swift
//  TestApp
//
//  Created by Данила on 14.08.2023.
//

import Foundation
import SwiftUI

struct FirstBlock: Identifiable {
    var id = UUID()
    let image: Image
}

var firstBlockImages: [FirstBlock] = [
    FirstBlock(image: Image(.fb1)),
    FirstBlock(image: Image(.fb2)),
    FirstBlock(image: Image(.fb3)),
    FirstBlock(image: Image(.fb4)),
    FirstBlock(image: Image(.fb5)),
]
