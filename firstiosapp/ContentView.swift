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
                        wifiTextCell()
                        palinCell(
                            imageName: "antenna.radiowaves.left.and.right",
                            iconBackgroundColor: .yellow,
                            cellTitle: "셀룰러 화면" ) {
                                Text("셀룰러")
                        }
                    }

                    Section {
                        palinCell(
                            imageName: "hourglass",
                            iconBackgroundColor: .indigo,
                            cellTitle: "스크린 타임") {
                                Text("스크린 타임")
                        }
                    }
                    
                    Section {
                        
                        palinCell(
                            imageName: "paperplane.circle.fill",
                            iconBackgroundColor: .gray,
                            cellTitle: "일반 화면") {
                                Text("일반")
                        }

                        palinCell(
                            imageName: "computermouse.fill",
                            iconBackgroundColor: .blue,
                            cellTitle: "손쉬운 사용 화면") {
                                Text("손쉬운 사용")
                        }
                        
                        palinCell(
                            imageName: "hand.raised.fill",
                            iconBackgroundColor: .blue,
                            cellTitle: "개인 정보 보호 화면") {
                                Text("개인 정보 보호")
                        }
                                            
                    }
                    
                    Section {
                        
                        palinCell(
                            imageName: "key.fill",
                            iconBackgroundColor: .gray,
                            cellTitle: "암호 화면") {
                                Text("암호")
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
    private func wifiTextCell() -> some View {
        HStack {
            Image(systemName: "wifi")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(.all, 4)
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(6)
            NavigationLink {
                Text("WI-FI")
            } label: {
                HStack {
                    Text("WI-FI")
                    Spacer()
                    Text("SK_WiFiGIGAAD9BC_5G")
                        .foregroundColor(.gray)
                }
                
            }

        }

    }
    
    @ViewBuilder
    private func palinCell<V: View>(
        imageName: String,
        iconBackgroundColor: Color,
        cellTitle: String,
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
            NavigationLink {
                Text(cellTitle)
            } label: {
                destination()
            }

        }
    }

}


#Preview {
    ContentView()
}
