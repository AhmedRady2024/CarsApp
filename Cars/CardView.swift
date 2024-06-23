//
//  CardView.swift
//  Cars
//
//  Created by Ahmed Rady on 20/06/2024.
//

import SwiftUI

struct CardView: View {
    
    var car : Car
    @State var foranimation : Bool = false
    
    @AppStorage("IsOnbording") var IsOnbording : Bool = true
    
    var body: some View {
        VStack{
            Image(car.image)
                .resizable()
                .scaledToFit()
                .padding()
                .scaleEffect(foranimation ? 1 : 0.3)
                .animation(.linear(duration: 1), value: foranimation)
            
            Text(car.name)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.white)
            
            Text("Detailse : \(car.headline)")
                .font(.title2)
                .padding()
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .foregroundColor(.white)
                .padding()
            
            Button {
                IsOnbording = false
            } label: {
                Text("Start")
                Image(systemName: "arrow.right.circle")
            }.foregroundColor(.white)
            .padding(.horizontal,15)
            .padding(.vertical,10)
            .background(Capsule().strokeBorder(Color.white,lineWidth: 3))
            
        }.shadow(color:.gray ,radius: 2 , x: 2 , y: 2)
            .frame(maxWidth: .infinity , maxHeight: .infinity , alignment: .center )
            .background(LinearGradient(gradient: Gradient(colors: car.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing))
            .onAppear {
                foranimation = true
            }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(car: CarData[1])
    }
}
