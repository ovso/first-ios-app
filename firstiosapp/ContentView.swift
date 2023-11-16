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
        
        let persons: [Person] = [
            Person(name: "jaeho", imageName: "heart"),
            Person(name: "jaeho2", imageName: "heart.fill"),
            Person(name: "jaeho3", imageName: "bolt")
        ]
        
        List(persons) { person in
            HStack {
                Image(systemName: person.imageName)
                Text(person.name)
            }
        }
//        List {
//            HStack {
//                Image(systemName: "heart")
//                Text("jaeho")
//            }
//            HStack {
//                Image(systemName: "heart.fill")
//                Text("Dodo")
//            }
//            HStack {
//                Image(systemName: "bolt")
//                Text("Olivia")
//            }
//        }
    }
}

#Preview {
    ContentView()
}
