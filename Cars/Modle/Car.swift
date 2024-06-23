//
//  Car.swift
//  Cars
//
//  Created by Ahmed Rady on 20/06/2024.
//

import SwiftUI

struct Car : Identifiable {
    let id = UUID()
    let name : String
    let headline : String
    let image : String
    let gradientColors : [Color]
    let description : String
    let models : [String]
}
