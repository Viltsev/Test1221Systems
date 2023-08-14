//
//  FirstInfoBlockView.swift
//  TestApp
//
//  Created by Данила on 14.08.2023.
//

import SwiftUI

struct FirstInfoBlockView: View {
    var body: some View {
        HStack(spacing: -10) {
            ForEach(firstBlockImages) { item in
                VStack {
                    Button {
                        
                    } label: {
                        item.image
                            .resizable()
                            .frame(width: 330, height: 180)
                            .cornerRadius(30)
                            .padding(16)
                    }
                }
            }
        }
    }
}
