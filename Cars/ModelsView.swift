//
//  ModlesView.swift
//  Cars
//
//  Created by Ahmed Rady on 22/06/2024.
//

import SwiftUI

struct ModelsView: View {
    var car :Car
    var body: some View {
        GroupBox(){
            DisclosureGroup("Car Modles"){
                ForEach(0..<7){
                    item in
                    Divider()
                    HStack{
                        Image(systemName: "car")
                            .foregroundColor(car.gradientColors[1])
                        Text("Modle \(item+1) :")
                            .foregroundColor(car.gradientColors[1])
                            .fontWeight(.heavy)
                        Spacer()
                        Text(car.models[item])
                            .fontWeight(.bold)
                            .foregroundColor(car.gradientColors[1])

                    }//hstack
                    .padding(.vertical,3)
                }//foreach
            }//disclousre
            .foregroundColor(car.gradientColors[1])
        }//groupbox
    }
  }


struct ModelsView_Previews: PreviewProvider {
    static var previews: some View {
        ModelsView(car: CarData[0])
    }
}
