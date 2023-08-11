//
//  RuningView.swift
//  BabayProtectProgram Watch App
//
//  Created by 韦小新 on 2023/8/9.
//

import SwiftUI

struct RuningView: View {
    var body: some View {
        ZStack{
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 85.9037, height: 48.51033)
              .background(
                LinearGradient(
                  stops: [
                    Gradient.Stop(color: Color(red: 1, green: 0.4, blue: 0.41), location: 0.00),
                    Gradient.Stop(color: Color(red: 1, green: 0.53, blue: 0.68), location: 1.00),
                  ],
                  startPoint: UnitPoint(x: 0.5, y: 0),
                  endPoint: UnitPoint(x: 0.5, y: 1)
                )
              )
              .cornerRadius(2.52658)
              .shadow(color: .black.opacity(0.34), radius: 2.27392, x: 0, y: 2.02126)
            VStack{
                Text("步数距离")
                Text("Today")
            }
          
        }
    }
}

struct RuningView_Previews: PreviewProvider {
    static var previews: some View {
        RuningView()
    }
}