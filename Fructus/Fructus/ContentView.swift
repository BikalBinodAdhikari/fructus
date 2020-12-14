//
//  ContentView.swift
//  Fructus
//
//  Created by Bikal Binod Adhikari on 12/14/20.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    var fruits : [Fruit] = fruitData
    @State private var isShowingSetting : Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailsView(fruits: item)) {
                        FruitRowView(fruits: item)
                            .padding(.vertical, 4)
                }
                }
            }  //: List
            .navigationTitle("Fruits")
                .navigationBarItems(trailing:
                                        Button(action: {
                                            isShowingSetting = true
                                        }) {
                                            Image(systemName: "slider.horizontal.3")
                                        }
                )  //:  Nav Bar Item
                .sheet(isPresented: $isShowingSetting, content: {
                    SettingSheet()
                })
        } .navigationViewStyle(StackNavigationViewStyle())
        //: NavigationView
}

    // MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitData)
            .previewDevice("iphone 11")
    }
}
}
