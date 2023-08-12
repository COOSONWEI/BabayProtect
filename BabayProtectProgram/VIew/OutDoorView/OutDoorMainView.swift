//
//  OutDoorMainView.swift
//  BabayProtectProgram
//
//  Created by 韦小新 on 2023/8/12.
//

import SwiftUI
import MapKit

//先用自己的手机的Location 先进行测试一下

struct OutDoorMainView: View {
    
    @State var isMove = false
    @State var back = false
    @StateObject private var locationModel = LocationModel()
    
    var body: some View {
        ZStack{
            Map(coordinateRegion: $locationModel.mapRegion,showsUserLocation: true)
                .tint(.pink)
                .ignoresSafeArea()
            
                .onAppear {
                    
                    locationModel.checkIfLocationServiesIsEnabled()
                }
            VStack{
                HStack(alignment:.center){
                    Button {
                        back.toggle()
                    } label: {
                        Image("backBT")
                            .resizable()
                            .frame(maxWidth: 27, maxHeight: 27)
                            .fixedSize()
                    }
                    
                    LocationView()
                }
                
                HStack{
                    Spacer()
                    OutDoorFunctionView(locationModel: locationModel)
                        .padding(.top,28)
                }
                .padding(.trailing)
                
                Spacer()
            }
        }
        .fullScreenCover(isPresented: $back) {
            HomeView()
        }
    }
        
    
}


struct OutDoorMainView_Previews: PreviewProvider {
    static var previews: some View {
        OutDoorMainView()
    }
}
