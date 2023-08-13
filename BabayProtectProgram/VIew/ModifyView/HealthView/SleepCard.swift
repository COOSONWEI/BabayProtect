//
//  SleepCard.swift
//  BabayProtectProgram
//
//  Created by 韦小新 on 2023/8/13.
//

import SwiftUI

//MARK: -睡眠质量
struct SleepCard: View {
    var body: some View {
        
        ZStack{
            Rectangle()
              .foregroundColor(.clear)
             
              .background(Color(red: 0.69, green: 0.39, blue: 1))
              .cornerRadius(20)
            
            VStack{
                HStack{
                    Text("睡眠数据")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.2)
                      .multilineTextAlignment(.trailing)
                      .foregroundColor(Color(red: 1, green: 0.98, blue: 0.98))
                      .frame(width: 105, alignment: .topTrailing)
                    Image("Sleep")
                        .resizable()
                        .fixedSize()
                    Spacer()
                }
                
                HStack{
                    Text("卧床时间")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.2)
                      .multilineTextAlignment(.trailing)
                      .foregroundColor(.white)
                    
                    Text("时间")
                }
                
               
                
            }
           
        }
        .frame(maxWidth: 358, maxHeight: 100)
       
    }
}

struct SleepCard_Previews: PreviewProvider {
    static var previews: some View {
        SleepCard()
    }
}
