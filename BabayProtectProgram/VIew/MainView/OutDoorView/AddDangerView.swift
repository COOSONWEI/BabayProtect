//
//  AddDangerView.swift
//  BabayProtectProgram
//
//  Created by 韦小新 on 2023/8/12.
//

import SwiftUI

struct AddDangerView: View {
    @State var back = false
    var body: some View {
        VStack{
            ZStack {
                VStack{
                    Image("DnagerousBG")
                        .resizable()
                        .edgesIgnoringSafeArea(.top)
                        .fixedSize()
                    Spacer()
                }
                
                VStack{
                    HStack{
                        VStack(alignment:.leading){
                            Text("危险区域")
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .minimumScaleFactor(0.2)
                            
                            Text("设置户外危险区域,\n当您的孩子进入这些区域,\n将通知您。")
                                .font(.system(size: 17))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .minimumScaleFactor(0.2)
                                .padding(.top)
                            Spacer()
                        }.padding(.trailing,30)
                        
                        VStack{
                            Image("Danger")
                                .resizable()
                                .frame(maxWidth: 20, maxHeight: 114.29)
                                .fixedSize()
                            Spacer()
                        }
                        
                    }
                    
                }
              
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
                        Spacer()
                    }
                    .padding(.leading,30)
                    Spacer()
                }
            }
            //添加了危险区的卡片（这里先放一个卡片测试）
            ScrollView{
                DangerGeofenceCard(image: Image("DangerousAreaTest"))
            }
            .padding(.top,-150)
           
//            DangerButtonView(sheetAddName: <#Binding<Bool>#>)
//                .padding(.leading)
//                .padding(.trailing)
//                .padding(.bottom)
            
        }
        .fullScreenCover(isPresented: $back) {
            HomeView()
        }
    }
        
}

struct AddDangerView_Previews: PreviewProvider {
    static var previews: some View {
        AddDangerView()
    }
}
