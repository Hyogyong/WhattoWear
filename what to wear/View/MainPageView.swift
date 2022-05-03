//
//  MainPageView.swift
//  what to wear
//
//  Created by 이효경 on 2022/04/28.
//

import SwiftUI


struct MainPageView: View {
    @EnvironmentObject var network: Network
    private var temp: String { String(format: "%.1f", (network.weather.main.temp-273.15)) }
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors:  [.blue,.white]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(.all)
            VStack {
                Text("포항시").font(.system(size:25, weight: .medium, design: .default)).foregroundColor(.white).padding(.top,30)
                Text("\(temp)°").font(.system(size:50,weight:.semibold))
                
                Text("오늘은 일교차가 크니 외투를 챙기세요!")
                Spacer()
            }
        }
    }
}

struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
    }
}
