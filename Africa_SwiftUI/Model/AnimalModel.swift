//
//  AnimalModel.swift
//  Africa_SwiftUI
//
//  Created by Vandan Patel on 2/19/21.
//

import Foundation

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
