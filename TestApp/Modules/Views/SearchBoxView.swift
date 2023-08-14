//
//  SearchBoxView.swift
//  TestApp
//
//  Created by Данила on 14.08.2023.
//

import SwiftUI

struct SearchBox: View {
    var body: some View {
        HStack(spacing: -25) {
            SearchField()
            GreenButton()
        }
        Divider()
    }
}

struct SearchField: View {
    @State private var text: String = "Москва, Москва и Московская область"
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(.locationImage)
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color.red)
            }
            TextField("Search...", text: $text)
                .font(.system(size: 13))
        }.modifier(customViewModifier(roundedCornes: 25, textColor: .black))
    }
}

struct GreenButton: View {
    var body: some View {
        VStack {
            Button {
                
            } label: {
                Image(systemName: "line.3.horizontal")
                    .resizable()
                    .frame(width: 25, height: 20)
                    .foregroundColor(.green)
                    .padding(8)
            }
            .frame(alignment: .topTrailing)
            .padding(.horizontal, 10)
        }
    }
}

struct customViewModifier: ViewModifier {
    var roundedCornes: CGFloat
    var textColor: Color

    func body(content: Content) -> some View {
        content
            .padding(10)
            .cornerRadius(roundedCornes)
            .foregroundColor(textColor)
            .overlay(RoundedRectangle(cornerRadius: roundedCornes)
                .stroke(Color.gray))
            .padding(.horizontal, 16)
    }
}
