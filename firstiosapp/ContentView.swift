//
//  ContentView.swift
//  firstiosapp
//
//  Created by jaeho on 11/8/23.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    let name: String
    let imageName: String
}
struct ContentView: View {
    var body: some View {
        
        List {
            Section {
                HStack {
                    Image(systemName: "heart")
                    Text("jaeho")
                }
                HStack {
                    Image(systemName: "heart.fill")
                    Text("Dodo")
                }
                HStack {
                    Image(systemName: "bolt")
                    Text("Olivia")
                }
            } header: {
                Text("A Class")
            }
            Section {
                HStack {
                    Image(systemName: "heart")
                    Text("jaeho")
                }
                HStack {
                    Image(systemName: "heart.fill")
                    Text("Dodo")
                }
                HStack {
                    Image(systemName: "bolt")
                    Text("Olivia")
                }
            } header: {
                Text("B Class")
            }
            Section {
                HStack {
                    Image(systemName: "heart")
                    Text("jaeho")
                }
                HStack {
                    Image(systemName: "heart.fill")
                    Text("Dodo")
                }
                HStack {
                    Image(systemName: "bolt")
                    Text("Olivia")
                }
            } header: {
                Text("A Class")
            } footer: {
                Text("copy right by jaeho and 피터")
            }
        }
    }
}

#Preview {
    ContentView()
}
