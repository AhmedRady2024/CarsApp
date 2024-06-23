//
//  DeatialedView.swift
//  Cars
//
//  Created by Ahmed Rady on 22/06/2024.
//

import SwiftUI

struct DeatialedView: View {
    var car : Car
    var body: some View {
        ScrollView(.vertical){
            VStack{
                
                HeaderView(car: car)//for car header
                
                VStack(alignment: .leading, spacing: 10){
                    Text(car.name)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(car.gradientColors[1])
                    Text(car.headline)
                        .font(.title3)
                        .fontWeight(.bold)
                        .lineLimit(3)
                        .multilineTextAlignment(.leading)
                    
                    ModelsView(car: car) //for groupbox
                    
                    Text("Learn about \(car.name)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(car.gradientColors[1])
                    Text(car.description)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    FotterView() // for wiki link
                        .padding(.bottom,30)
                    
                }//vstack of text
                .padding(.horizontal , 15)
                
            }//vstack of main screen
            
        }.ignoresSafeArea(.all)
    }
}

struct DeatialedView_Previews: PreviewProvider {
    static var previews: some View {
        DeatialedView(car: CarData[7])
    }
}



