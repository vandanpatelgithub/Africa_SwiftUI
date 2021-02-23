//
//  ContentView.swift
//  Africa_SwiftUI
//
//  Created by Vandan Patel on 2/16/21.
//

import SwiftUI

struct HomePageView: View {
    let animals: [Animal] = Bundle.main.decode("animals")
    
    var body: some View {
        NavigationView {
            VStack {
                CoverImageView()
                    .frame(height: 250)
                    .padding()
                    .cornerRadius(12)
                List(animals) { animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)) {
                        AnimalListItemView(animal: animal)
                    }
                }
            }
            .navigationBarTitle("Africa", displayMode: .large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
