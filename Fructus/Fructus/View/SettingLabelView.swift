//
//  SettingLabelView.swift
//  Fructus
//
//  Created by Bikal Binod Adhikari on 12/14/20.
//

import SwiftUI

struct SettingLabelView: View {
    
    // MARK: - PROPERTIES
    
    var labelText : String
    var labelImage : String
    
    // MARK: - BODY
    
    var body: some View {
        Text(labelText.uppercased()).fontWeight(.bold)
        Spacer()
        Image(systemName: labelImage)
    }
}

    // MARK: - PREVIEW

struct SettingLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingLabelView(labelText: "FRUIT", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
