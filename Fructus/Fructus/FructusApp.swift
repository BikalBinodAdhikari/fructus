//
//  FructusApp.swift
//  Fructus
//
//  Created by Bikal Binod Adhikari on 12/14/20.
//

import SwiftUI

@main
struct FructusApp: App {
    
    // MARK: - PROPERTIES
    
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
    
    // MARK: - BODY
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingView()
            } else {
                ContentView()
            }
        }
    }
}
