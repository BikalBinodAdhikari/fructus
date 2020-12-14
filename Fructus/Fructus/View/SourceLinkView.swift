//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Bikal Binod Adhikari on 12/14/20.
//

import SwiftUI

struct SourceLinkView: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://www.wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            } //: Hstack
            .font(.footnote)
        } //: GroupBOx
    }
}

    // MARK: - PREVIEW
struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
