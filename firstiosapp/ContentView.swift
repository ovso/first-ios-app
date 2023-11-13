//
//  ContentView.swift
//  firstiosapp
//
//  Created by jaeho on 11/8/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Text("1")
                    .frame(width: 300, height: 500)
                    .background(.red)
                Text("2")
                    .frame(width: 300, height: 500)
                    .background(.blue)
                Text("3")
                    .frame(width: 300, height: 500)
                    .background(.orange)

            }
        }
        .background(.yellow)
    }
}

#Preview {
    ContentView()
}
