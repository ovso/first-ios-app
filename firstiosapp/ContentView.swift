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
                        airPlainToggleCell()
                        
                        plainCell(
                            imageName: "wifi",
                            iconBackgroundColor: .blue,
                            cellTitle: "Wi-Fi",
                            subTitle: "SK_WIFIGIGAAD9BC") {
                                Text("Wi-Fi 화면")
                            }

                        plainCell(
                            imageName: "antenna.radiowaves.left.and.right",
                            iconBackgroundColor: .yellow,
                            cellTitle: "셀룰러 화면",
                            subTitle: nil ) {
                                Text("셀룰러 화면")
                            }
                    }

                    Section {
                        plainCell(
                            imageName: "hourglass",
                            iconBackgroundColor: .indigo,
                            cellTitle: "스크린 타임",
                            subTitle: nil ) {
                                Text("스크린 타임")
                            }
                    }
                    
                    Section {

                        plainCell(
                            imageName: "computermouse.fill",
                            iconBackgroundColor: .gray,
                            cellTitle: "일반",
                            subTitle: nil ) {
                                Text("일반 화면")
                            }
                        
                        plainCell(
                            imageName: "computermouse.fill",
                            iconBackgroundColor: .blue,
                            cellTitle: "손쉬운 사용",
                            subTitle: nil ) {
                                Text("손쉬운 사용 화면")
                            }
                        
                        plainCell(
                            imageName: "hand.raised.fill",
                            iconBackgroundColor: .blue,
                            cellTitle: "개인 정보 보호 화면",
                            subTitle: nil) {
                                Text("개인 정보 보호")
                        }
                                            
                    }
                    
                    Section {
                        
                        plainCell(
                            imageName: "key.fill",
                            iconBackgroundColor: .gray,
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
    private func airPlainToggleCell() -> some View {
        HStack {
            Image(systemName: "airplane")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(.all, 4)
                .background(.indigo)
                .foregroundColor(.white)
                .cornerRadius(6)
            
            Toggle("에어플레인 모드", isOn: $isAirplainModeOn)
        }
    }

    
    @ViewBuilder
    private func plainCell<V: View>(
        imageName: String,
        iconBackgroundColor: Color,
        cellTitle: String,
        subTitle: String?,
        destination: @escaping() -> V
    ) -> some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(.all, 4)
                .background(iconBackgroundColor)
                .foregroundColor(.white)
                .cornerRadius(6)
            
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
