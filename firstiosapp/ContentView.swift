//
//  ContentView.swift
//  firstiosapp
//
//  Created by jaeho on 11/8/23.
//

import SwiftUI


struct ContentView: View {
    @State private var isAirplainModeOn = false
    
    var body: some View {

            Text("설정")
            NavigationView {
                List {
                    Section {
                        NavigationLink {
                             Text("프로필 화면")
                        } label: {
                            profileCell()
                        }
                    }

                    Section {
                        toggleCell(
                            imageName: "airplane",
                            iconColor: .yellow,
                            cellTitle: "에어플레인 모드",
                            isAirplainModeOn: $isAirplainModeOn
                        )
                        navigationLinkcell(
                            imageName: "wifi",
                            iconColor: .blue,
                            cellTitle: "Wi-Fi",
                            subTitle: "SK_WIFIGIGAAD9BC") {
                                Text("Wi-Fi 화면")
                            }

                        navigationLinkcell(
                            imageName: "antenna.radiowaves.left.and.right",
                            iconColor: .yellow,
                            cellTitle: "셀룰러",
                            subTitle: nil ) {
                                Text("셀룰러 화면")
                            }
                    }

                    Section {
                        navigationLinkcell(
                            imageName: "hourglass",
                            iconColor: .indigo,
                            cellTitle: "스크린 타임",
                            subTitle: nil ) {
                                Text("스크린 타임")
                            }
                    }
                    
                    Section {

                        navigationLinkcell(
                            imageName: "computermouse.fill",
                            iconColor: .gray,
                            cellTitle: "일반",
                            subTitle: nil ) {
                                Text("일반 화면")
                            }
                        
                        navigationLinkcell(
                            imageName: "computermouse.fill",
                            iconColor: .blue,
                            cellTitle: "손쉬운 사용",
                            subTitle: nil ) {
                                Text("손쉬운 사용 화면")
                            }
                        
                        navigationLinkcell(
                            imageName: "hand.raised.fill",
                            iconColor: .blue,
                            cellTitle: "개인 정보 보호 화면",
                            subTitle: nil) {
                                Text("개인 정보 보호")
                        }
                                            
                    }
                    
                    Section {
                        
                        navigationLinkcell(
                            imageName: "key.fill",
                            iconColor: .gray,
                            cellTitle: "암호",
                            subTitle: nil ) {
                                Text("암호  화면")
                        }

                    }
                }
            }.navigationTitle(Text("설정"))
    }
    
    @ViewBuilder
    private func profileCell() -> some View {
        HStack {
            Image(systemName: "airplane")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .padding(.all, 10)
                .background(.green)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 3) {
                Text("jaeho")
                    .font(.system(size: 24))
                    .fontWeight(.regular)
                Text("Apple ID, iCloud, 미디어 및 구입")
                    .font(.system(size: 14))
            }.padding(.leading, 6)
        }
        .padding(.vertical, 10)

    }

    @ViewBuilder
    private func imageIcon(imageName: String, iconColor: Color) -> some View {
        Image(systemName: imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 20, height: 20)
            .padding(.all, 4)
            .background(iconColor)
            .foregroundColor(.white)
            .cornerRadius(6)
    }
    
    @ViewBuilder
    private func toggleCell(
        imageName: String,
        iconColor: Color,
        cellTitle: String,
        isAirplainModeOn: Binding<Bool>) -> some View {
            HStack {
                imageIcon(imageName: imageName, iconColor: iconColor)
                Toggle(cellTitle, isOn: $isAirplainModeOn)
            }
                
    }
    
    @ViewBuilder
    private func navigationLinkcell<V: View>(
        imageName: String,
        iconColor: Color,
        cellTitle: String,
        subTitle: String? = nil,
        destination: @escaping () -> V) -> some View {
            
            HStack {
                imageIcon(imageName: imageName, iconColor: iconColor)
                
                if let subTitle = subTitle {
                    NavigationLink {
                        destination()
                    } label: {
                        HStack {
                            Text(cellTitle)
                            Spacer()
                            Text(subTitle)
                                .foregroundColor(.gray)
                        }
                    }
                } else {
                    NavigationLink(cellTitle) {
                        destination()
                    }
                }
            }
            
        }


}


#Preview {
    ContentView()
}
