//
//  CarsApp.swift
//  Cars
//
//  Created by Ahmed Rady on 19/06/2024.
//

import SwiftUI

@main
struct CarsApp: App {
    @AppStorage("IsOnbording") var IsOnbording : Bool = true
    var body: some Scene {
        WindowGroup {
            if IsOnbording{
                MainView()
            }else{
                ListView()
            }
        }
    }
}
