//
//  SettingRowView.swift
//  Fructus
//
//  Created by Bikal Binod Adhikari on 12/14/20.
//

import SwiftUI

struct SettingRowView: View {
    
    // MARK: - PROPERTIES
    
    var name: String
    var content: String? = nil
    var linkLabel : String? = nil
    var linkDestination : String? = nil
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkDestination != nil && linkLabel != nil) {
                    Link(linkLabel!, destination:  URL(string: "Https://\(linkDestination!)")! )
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
                
              
            }
        }  //: End of HStack
    }
}

    // MARK: - PREVIEW

struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingRowView(name: "Developer", content: "Bikal Binod Adhikari")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingRowView(name: "Website", linkLabel: "Personal Website", linkDestination: "adhikaribikalbinod.com.np")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
