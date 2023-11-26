//
//  ContentView.swift
//  firstiosapp
//
//  Created by jaeho on 11/8/23.
//

import SwiftUI


struct ContentView: View {
    var body: some View {

            Text("설정")
            NavigationView {
                List {
                    Section {
                        Text("Jaeho")
                    }

                    Section {
                        HStack {
                            Image(systemName: "hourglass")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .padding(.all, 4)
                                .background(.indigo)
                                .foregroundColor(.white)
                                .cornerRadius(6)
                            
                            NavigationLink("스크린타임") {
                                Text("스크린 타임 화면")
                            }
                        }
                        
                    }
                    Section {
                        HStack {
                            Image(systemName: "hourglass")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .padding(.all, 4)
                                .background(.indigo)
                                .foregroundColor(.white)
                                .cornerRadius(6)
                            
                            NavigationLink("일반") {
                                Text("일반 화면")
                            }

                        }
                        
                        HStack {
                            Image(systemName: "hourglass")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .padding(.all, 4)
                                .background(.indigo)
                                .foregroundColor(.white)
                                .cornerRadius(6)
                            
                            NavigationLink("손쉬운 사용") {
                                Text("손쉬운 사용 화면")
                            }

                        }
                        
                        HStack {
                            Image(systemName: "hourglass")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .padding(.all, 4)
                                .background(.indigo)
                                .foregroundColor(.white)
                                .cornerRadius(6)
                            
                            NavigationLink("개인 정보 보호") {
                                Text("개인 정보 보호 화면")
                            }

                        }

                    }
                }
            }.navigationTitle(Text("설정"))
    }
}


#Preview {
    ContentView()
}
