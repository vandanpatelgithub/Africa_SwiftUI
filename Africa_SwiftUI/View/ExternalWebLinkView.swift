//
//  ExternalWebLinkView.swift
//  Africa_SwiftUI
//
//  Created by Vandan Patel on 2/22/21.
//

import SwiftUI

struct ExternalWebLinkView: View {
    let animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    if let url = URL(string: animal.link) {
                        Link(animal.name, destination: url)
                        Image(systemName: "arrow.up.right.square")
                    }
                }
                .foregroundColor(.accentColor)
            }
        }
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals")
    
    static var previews: some View {
        ExternalWebLinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
