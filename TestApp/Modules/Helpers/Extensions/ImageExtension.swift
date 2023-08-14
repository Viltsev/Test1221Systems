//
//  ImageExtension.swift
//  TestApp
//
//  Created by Данила on 14.08.2023.
//

import SwiftUI

extension Image {
    init(_ image: AppImages) {
        self.init(image.rawValue)
    }
}
