//
//  CellView.swift
//  Cars
//
//  Created by Ahmed Rady on 22/06/2024.
//

import SwiftUI

struct CellView: View {
    var car : Car
    var body: some View {
        HStack{
            Image(car.image)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 100 , maxHeight: 100)
                .background(LinearGradient(gradient: Gradient(colors: car.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(10)
            
            VStack(alignment: .leading , spacing: 10){
                Text(car.name)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(car.headline)
                    .font(.caption)
                    .foregroundColor(.accentColor)
                    .multilineTextAlignment(.leading)
                    .lineLimit(3)
            }
            Spacer()
        }
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(car: CarData[1])
    }
}
