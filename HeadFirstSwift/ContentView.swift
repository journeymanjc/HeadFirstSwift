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
	@StateObject var game = GameScore()
	
	
	
	
	var body: some View{
		NavigationView{
			VStack{
				Button{
					game.score += 1
				}label: {
					ButtonView(text: "Add Score")
				}
				Button{
					game.pieces += 1
				}label: {
					ButtonView(text: "Add pieces")
				}
				
				NavigationLink {
					ScoreView()
				} label: {
					ButtonView(text: "View Scores...")
				}
			}

		}
		//.environmentObject(game)
	}
	
}

struct ButtonView: View{
	var text : String = ""
	var body: some View{
		ZStack{
			Text(text)
				.font(.system(size: 25)).bold()
			RoundedRectangle(cornerRadius: 40)
				.frame(width: 300, height: 60)
				.foregroundColor(.gray).opacity(0.5)
		}
		.padding()
	}
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
