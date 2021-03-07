//
//  SettingsViewRow.swift
//  Fructus
//
//  Created by Дарья Федяшова on 07.03.2021.
//

import SwiftUI

struct SettingsViewRow: View {
    // MARK: - PROPERTIES
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

// MARK: - PREVIEW
struct SettingsViewRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsViewRow(name: "Developer", content: "John / Jane").previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsViewRow(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
