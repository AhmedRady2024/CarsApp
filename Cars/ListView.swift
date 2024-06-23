//
//  ListView.swift
//  Cars
//
//  Created by Ahmed Rady on 22/06/2024.
//

import SwiftUI

struct ListView: View {
    @State var PresentingSheet : Bool = false
    var body: some View {
        
        NavigationStack {
            List{
                ForEach(CarData) {
                    item in
                    NavigationLink( destination: DeatialedView(car: item)){
                        CellView(car: item)
                            .padding(.vertical , 10)
                    }//navigation link
                }//foreach
            } //list
            .frame(minWidth: 500)
            .navigationTitle("Cars")
            .navigationBarItems(trailing: Button(action: {
                PresentingSheet = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            }))
            .sheet(isPresented: $PresentingSheet) {
                SettingView()
            }
            
        } //navigation
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
