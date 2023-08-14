//
//  HealthView.swift
//  BabayProtectProgram
//
//  Created by 韦小新 on 2023/8/13.
//

import SwiftUI

//MARK: -健康检测界面
struct HealthView: View {
    //数据
    @State var back = false
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
                VStack{
                    HStack{
                        Button {
                            back.toggle()
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
                }
                HStack{
                    ExerciseCard()
                    VStack{
                        WalkCard()
                        RunCard()
                    }
                }
                
                SleepCard()
                    .padding(.leading,20)
                    .padding(.trailing,20)
                
                MoreInformationList()
                    .padding(.leading,20)
                    .padding(.trailing,20)
                    .padding(.bottom,20)
            }
           
           
            
        }
        .fullScreenCover(isPresented: $back) {
            HomeView()
        }
    }
}

struct HealthView_Previews: PreviewProvider {
    static var previews: some View {
        HealthView()
    }
}
