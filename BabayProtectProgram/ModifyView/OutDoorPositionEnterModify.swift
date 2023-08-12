//
//  OutDoorPositionEnterModify.swift
//  BabayProtectProgram
//
//  Created by 韦小新 on 2023/8/11.
//

import SwiftUI

struct OutDoorPositionEnterModify: View {
    var body: some View {
        ZStack{
            Rectangle()
              .foregroundColor(.clear)
              
              .background(Color(red: 0.31, green: 0.31, blue: 0.31))
              .cornerRadius(17)
              .shadow(color: .black.opacity(0.25), radius: 4.5, x: 4, y: 4)
            
            HStack{
                VStack(alignment: .leading){
                    Text("户外定位")
                        .foregroundColor(.white)
                    Image("OutDoor")
                        .resizable()
                        .frame(maxWidth: 67, maxHeight: 67)
                        .fixedSize()
                }
                Spacer()
            }
            .padding(.leading)
            
            
        }
        .frame(maxWidth: 144, maxHeight: 144)
    }
}

struct OutDoorPositionEnterModify_Previews: PreviewProvider {
    static var previews: some View {
        OutDoorPositionEnterModify()
    }
}
