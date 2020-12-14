//
//  HeaderView.swift
//  Fructus
//
//  Created by Bikal Binod Adhikari on 12/14/20.
//

import SwiftUI

struct HeaderView: View {
    
    // MARK: - PROPERTIES
    
    var fruits : Fruit
    
    @State private var isAnimatingImage : Bool = false
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: fruits.gradientColors), startPoint: .top, endPoint: .bottom)
            
            Image(fruits.image)
                .resizable()
                .scaledToFit()
                .padding(.vertical, 20)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
            
        }
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut (duration: 0.5)) {
                isAnimatingImage = true
            }
        }
        //: ZStack
    }
}

// MARK: - PREVIEW
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(fruits: fruitData[1])
            .previewLayout(.sizeThatFits)
    }
}
