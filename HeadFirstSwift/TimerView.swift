//
//  Timer.swift
//  HeadFirstSwift
//
//  Created by Jae Cho on 7/19/22.
//

import SwiftUI

struct TimerView: View {
	@State private var timeRunning = false
	@State private var countDownTime: CGFloat = defaultTime
		
	 var body: some View {
		 let strokeStyle = StrokeStyle(lineWidth: 15, lineCap: .round)
		 let buttonIcon = timeRunning ? "pause.rectangle.fill" : "play.rectangle.fill"
		 let countdownColor: Color = {
			 switch(countDownTime) {
			 case 6...: return Color.green
			 case 3...: return Color.yellow
			 default : return Color.red
			 }
		 }()
		 ZStack{
			 Circle()
				.stroke(Color.gray.opacity(0.2), style: strokeStyle)
			 Circle()
				 .trim(from: 0, to: 1 - ((defaultTime - countDownTime) / defaultTime))
				 .stroke(countdownColor, style: strokeStyle)
				 .rotationEffect(.degrees(-90))
				 .animation(.easeInOut)
			 
			 HStack(spacing: 25){
				 Label("", systemImage: buttonIcon)
					 .foregroundColor(.black).font(.title)
					 .onTapGesture {
						 timeRunning.toggle()
					 }
				 Text("\(Int(countDownTime))")
					 .font(.largeTitle)
				 Label("", systemImage: "gobackward")
					 .foregroundColor(.red)
					 .font(.title)
					 .onTapGesture {
						 timeRunning = false
						 countDownTime = defaultTime
					 }
			 }
		 }
		 .frame(width: 300, height: 300)
		 .onReceive(timer) { _ in
			 guard timeRunning else { return }
			 if countDownTime > 0 {
				 countDownTime -= 1
			 }else {
				 timeRunning = false
				 countDownTime = defaultTime
			 }
		 }
	 }
}

struct Timer_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
