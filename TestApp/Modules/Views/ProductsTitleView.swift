//
//  ProductsTitleView.swift
//  TestApp
//
//  Created by Данила on 14.08.2023.
//

import SwiftUI

struct ProductsTitleView: View {
    @State var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.title.bold())
            Spacer()
        }.padding(16)
    }
}
