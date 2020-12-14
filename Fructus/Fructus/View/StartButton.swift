//
//  StartButton.swift
//  Fructus
//
//  Created by Bikal Binod Adhikari on 12/14/20.
//

import SwiftUI

struct StartButton: View {
    
    // MARK: - PROPERTIES
    
    @AppStorage("isOnboarding") var isOnboarding : Bool?
    
    // MARK: - BODY
    
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack (spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            } .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        } //: BUTTON
        .accentColor(Color.white)
    }
}

    // MARK: - PREVIEW

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}