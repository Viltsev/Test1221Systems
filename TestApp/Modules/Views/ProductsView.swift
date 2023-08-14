//
//  ProductsView.swift
//  TestApp
//
//  Created by Данила on 14.08.2023.
//

import SwiftUI

struct ProductsView: View {
    @State var products: [Product]
    var body: some View {
        HStack(spacing: -15) {
            ForEach(products) { item in
                ZStack {
                    GetProductInfoButton(image: item.image, price: item.price, superPrice: item.superPrice, prevPrice: item.prevPrice)
                    BuyProductButton()
                    
                }
            }
        }
    }
}

struct SuperPriceView: View {
    @State var title: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 100, height: 30, alignment: .topLeading)
                .cornerRadius(10)
                .opacity(0.5)
                .foregroundColor(Color.red)
                .padding(-5)
            Text(title)
                .font(.system(size: 12))
                .offset(x: 3, y: 3)
                .foregroundColor(.white)
        }.frame(width: 150, height: 200, alignment: .topLeading)
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

struct GetProductInfoButton: View {
    @State var image: Image
    @State var price: Double
    @State var superPrice: String?
    @State var prevPrice: Double?
    var y: CGFloat {
        prevPrice != nil ? CGFloat(-8) : CGFloat(2)
    }
    var height: CGFloat {
        prevPrice != nil ? CGFloat(190) : CGFloat(170)
    }
    
    var body: some View {
        Button {
            
        } label: {
            ZStack {
                Rectangle()
                    .frame(width: 150, height: 200)
                    .cornerRadius(20)
                    .shadow(radius: 5)
                    .foregroundColor(.white)
                    .padding(16)
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 135, height: 130)
                    .cornerRadius(20)
                    .offset(y: -25)
                HStack(spacing: 1) {
                    VStack {
                        Text(String(format: "%.2f", price))
                            .foregroundColor(.black)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        if (prevPrice != nil) {
                            Text(String(format: "%.2f", prevPrice!))
                                .foregroundColor(.gray)
                                .font(.headline)
                                .multilineTextAlignment(.leading)
                                .strikethrough()
                        }
                    }
                    Image("priceImage")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .offset(y: y)
                }
                .frame(width: 130, height: height, alignment: .bottomLeading)
                if (superPrice != nil) {
                    SuperPriceView(title: superPrice!)
                }
            }
        }
    }
}

struct BuyProductButton: View {
    var body: some View {
        Button {
            
        } label: {
            ZStack {
                Rectangle()
                    .frame(width: 40, height: 40, alignment: .bottomTrailing)
                    .cornerRadius(20)
                    .foregroundColor(Color.green)
                    .padding(-5)
                Image(systemName: "basket.fill")
                    .foregroundColor(.white)
            }
        }.frame(width: 130, height: 170, alignment: .bottomTrailing)
    }
}
