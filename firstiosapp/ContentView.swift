//
//  ContentView.swift
//  firstiosapp
//
//  Created by jaeho on 11/8/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("1")
            Text("2")
            Text("3")
                .background(.white)
            Text("1")
            Text("2")
            Text("3")
                .background(.white)
            Text("1")
            Text("2")
            Text("3")
                .background(.white)
            Text("1")
            Text("2")
            Text("3")
                .background(.white)
        }
        .frame(width: 300, height: 200, alignment: .leading)
        .background(.orange)
    }
}

#Preview {
    ContentView()
}
