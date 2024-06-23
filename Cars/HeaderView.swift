//
//  HeaderView.swift
//  Cars
//
//  Created by Ahmed Rady on 22/06/2024.
//

import SwiftUI

struct HeaderView: View {
    var car : Car
    @State var animation : Bool = false
    var body: some View {
        ZStack{
            Image(car.image)
                .resizable()
                .scaledToFit()
                .scaleEffect(animation ? 1 : 0.6)
                .animation(.linear(duration: 1) , value: animation)
            
        }.frame(height: 450 , alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: car.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing))
            .onAppear(){
            animation = true
        }
    }
}


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(car: CarData[2])
    }
}
