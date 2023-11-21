//
//  ContentView.swift
//  firstiosapp
//
//  Created by jaeho on 11/8/23.
//

import SwiftUI


struct ContentView: View {

    var body: some View {
        VStack {
            Image(systemName: "bolt")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .padding([.bottom, .top], 100)
                .background(.green)
                .foregroundColor(.red)
            Image(systemName: "bolt")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .padding(.leading, 100)
                .background(.green)
                .foregroundColor(.red)
        }
    }
}


#Preview {
    ContentView()
}
