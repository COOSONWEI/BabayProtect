//
//  HealthView.swift
//  BabayProtectProgram
//
//  Created by 韦小新 on 2023/8/13.
//

import SwiftUI

struct HealthView: View {
    var body: some View {
       
        ZStack{
            
            VStack{
                Image("DnagerousBG")
                    .resizable()
                    .edgesIgnoringSafeArea(.top)
                    .fixedSize()
                Spacer()
            }
            
            VStack{
                HStack{
                    Button {
//                        back.toggle()
                    } label: {
                        Image("dgBackBT")
                            .resizable()
                            .frame(maxWidth: 27, maxHeight: 27)
                            .fixedSize()
                    }
                    Text("健康检测")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.2)
                      .foregroundColor(.white)
                      .frame(width: 248, alignment: .topLeading)
                    Spacer()
                }
                .padding(.leading,30)
                Spacer()
            }
        }
    }
}

struct HealthView_Previews: PreviewProvider {
    static var previews: some View {
        HealthView()
    }
}
