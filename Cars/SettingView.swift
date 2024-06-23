//
//  SettingView.swift
//  Cars
//
//  Created by Ahmed Rady on 23/06/2024.
//

import SwiftUI

struct SettingView: View {
    
    @AppStorage("IsOnbording") var IsOnbording : Bool = true
    
    @Environment (\.presentationMode) var presentationMode
    
    var body: some View {
        
        NavigationStack{
            VStack {
                GroupBox {
                    HStack{
                        Text("CARS")
                            .font(.title)
                            .fontWeight(.heavy)
                        Spacer()
                        Image(systemName: "info.circle")
                            .font(.title)
                    }//first hstack
                    Divider()
                    HStack{
                        Image("icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80 , height: 80 , alignment: .center)
                        Text("This App Is Include Very Important Information About The Luxury Car , It Has Also Details About Its History And Diffrient Modles . ")
                    }//secound hstack
                }//groub box
                
                Toggle(isOn: $IsOnbording) {
                    if IsOnbording{
                        Text("Restarted".uppercased())
                            .fontWeight(.heavy)
                            .font(.title)
                            .foregroundColor(.green)
                    }else{
                        Text("Restart".uppercased())
                            .fontWeight(.heavy)
                            .font(.title)
                            .foregroundColor(.red)
                    }
                } .padding()
                    .foregroundColor(.accentColor)
                    .background(.ultraThinMaterial)
                    
            }//vstack
            Spacer()
                .navigationTitle("Setting")
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark.circle")
                        .font(.title2)
                }))
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
