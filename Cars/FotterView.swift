//
//  FotterView.swift
//  Cars
//
//  Created by Ahmed Rady on 22/06/2024.
//

import SwiftUI

struct FotterView: View {
    var body: some View {
        GroupBox(){
            HStack{
                Link("Source Wikibedia", destination: URL(string: "http:/wikibedia.com")!)
                Spacer()
                Image(systemName: "link.circle")
                    .foregroundColor(.blue)
            }
        }
    }
}

struct FotterView_Previews: PreviewProvider {
    static var previews: some View {
        FotterView()
    }
}
