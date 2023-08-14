//
//  StoriesView.swift
//  TestApp
//
//  Created by Данила on 14.08.2023.
//

import SwiftUI

struct StoriesView: View {
    var body: some View {
        HStack(spacing: 0) {
            ForEach(stories) { item in
                VStack(spacing: -10) {
                    Button {
                        
                    } label: {
                        item.image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 75, height: 75)
                            .cornerRadius(37.5)
                            .overlay(RoundedRectangle(cornerRadius: 37.5)
                                .strokeBorder(Color.green, style: StrokeStyle(lineWidth: 3.0))
                            )
                            .padding(16)
                    }
                    Text(item.description)
                        .frame(width: 100, height: 50)
                        .lineLimit(2)
                        .font(.system(size: 16))
                        .multilineTextAlignment(.center)
                }
            }
        }
        .padding(10)
    }
}

