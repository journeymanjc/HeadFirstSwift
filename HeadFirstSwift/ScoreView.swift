//
//  ScoreView.swift
//  HeadFirstSwift
//
//  Created by Jae Cho on 7/19/22.
//

import SwiftUI

struct ScoreView: View {
	//@ObservedObject var game : GameScore
	@EnvironmentObject var game : GameScore
    var body: some View {
		 VStack{
			 Text("The score is \(game.score)!")
			 Text("The piece count is \(game.pieces)")
			 Spacer()
		 }
    }
}

