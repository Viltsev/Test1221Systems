//
//  Colors.swift
//  TestApp
//
//  Created by Данила on 14.08.2023.
//

import SwiftUI
import UIKit

extension Color {
    enum Name: String {
        case blue1
        case blue2
        case lightGreen
        case lightPink
    }
}

extension Color.Name {
    var path: String { "\(rawValue)" }
}

extension Color {
    init(_ name: Color.Name) {
        self.init(name.path)
    }

    static let blue1 = Color(.blue1)
    static let blue2 = Color(.blue2)
    static let lightGreen = Color(.lightGreen)
    static let lightPink = Color(.lightPink)
}

extension UIColor {
    convenience init(named name: Color.Name) {
        self.init(named: name.path)!
    }
}

