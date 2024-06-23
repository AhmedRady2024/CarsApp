//
//  ContentView.swift
//  Cars
//
//  Created by Ahmed Rady on 19/06/2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ForEach(CarData) {
                item in
                CardView(car: item)
                    .padding(.horizontal , 10)
                    
            }//foreach
        }//tabview
        .tabViewStyle(PageTabViewStyle())
            .ignoresSafeArea()
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
