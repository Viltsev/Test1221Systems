//
//  BonusView.swift
//  TestApp
//
//  Created by Данила on 14.08.2023.
//

import SwiftUI

struct BonusView: View {
    var body: some View {
        Button {
          
        } label: {
            ZStack {
                Image("bonus")
                    .resizable()
                    .frame(width: .infinity, height: 150)
                    .cornerRadius(25)
                    .shadow(radius: 5)
                    .padding(16)
                Text("0 бонусов")
                    .frame(width: 320, height: 110, alignment: .topLeading)
                    .lineLimit(2)
                    .font(.title2.bold())
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.leading)
            }
        }
    }
}
