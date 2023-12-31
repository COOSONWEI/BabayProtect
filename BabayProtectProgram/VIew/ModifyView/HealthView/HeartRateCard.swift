//
//  HeartRateCard.swift
//  BabayProtectProgram
//
//  Created by 韦小新 on 2023/8/13.
//

import SwiftUI

//MARK: -心率情况
struct HeartRateCard: View {
    //数据
    var body: some View {
        VStack {
            HStack{
                VStack(alignment:.leading){
                    HStack{
                        Text("心率")
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.2)
                          .multilineTextAlignment(.trailing)
                          .foregroundColor(.black)
                        
                        Image("HeartRate")
                            .resizable()
                            .fixedSize()
                            
                            
                    }
                    Text("宝贝心率正常！")
                      
                        .font(.system(size: 15))
                        .minimumScaleFactor(0.2)
                      .multilineTextAlignment(.trailing)
                      .foregroundColor(.black)
                }
                Spacer()
                HStack{
                    Text("100")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                      .multilineTextAlignment(.trailing)
                      .foregroundColor(.black)
                    Text("次/分")
                        .font(.system(size: 15))
                        .minimumScaleFactor(0.2)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.trailing)
                        .foregroundColor(.black)
                }
            }
            Divider()
        }
    }
}

struct HeartRateCard_Previews: PreviewProvider {
    static var previews: some View {
        HeartRateCard()
    }
}
