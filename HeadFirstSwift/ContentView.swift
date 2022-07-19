//
//  ContentView.swift
//  HeadFirstSwift
//
//  Created by Jae Cho on 7/19/22.
//

import SwiftUI


let defaultTime: CGFloat = 20
let timer = Timer.publish(every: 1, on: .main,in: .common).autoconnect()




struct ContentView: View {
	var body: some View{
		TabView{
			TimerView()
				.tabItem {
					Label("Timer",systemImage: "timer")
				}
			SettingsView()
				.tabItem {
					Label("Settings",systemImage: "list.bullet")
				}
		}
	}
	
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
