//
//  GameScore.swift
//  HeadFirstSwift
//
//  Created by Jae Cho on 7/19/22.
//

import Foundation

class GameScore: ObservableObject {
	@Published var score = 0
	@Published var pieces = 0
}
