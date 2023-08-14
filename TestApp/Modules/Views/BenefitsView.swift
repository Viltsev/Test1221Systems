//
//  BenefitsView.swift
//  TestApp
//
//  Created by Данила on 14.08.2023.
//

import SwiftUI

struct BenefitsView: View {
    var body: some View {
        HStack(spacing: -10) {
            ForEach(benefits) { item in
                VStack {
                    Button {
                        
                    } label: {
                        ZStack {
                            Rectangle()
                                .frame(width: 130, height: 150)
                                .cornerRadius(25)
                                .shadow(radius: 5)
                                .foregroundColor(item.color)
                                .padding(16)
                            Text(item.title)
                                .frame(width: 110, height: 130, alignment: .topLeading)
                                .lineLimit(2)
                                .font(.system(size: 16).bold())
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                        }
                    }
                }
            }
        }
    }
}
