//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Bikal Binod Adhikari on 12/14/20.
//

import SwiftUI

// MARK: - PROPERTIES

var fruit : [Fruit] = fruitData

// MARK: - BODY

struct OnBoardingView: View {
    var body: some View {
        TabView {
            ForEach (fruit[0...5]) {
                item in
                CardView(fruit: item)
            } //: LOOP
        } //: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
