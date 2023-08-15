//
//  EnterUUID.swift
//  BabayProtectProgram
//
//  Created by 韦小新 on 2023/8/13.
//

import SwiftUI

//send the beacon name to iPhone by sever
struct EnterUUID: View {
    
    @StateObject var beaconNameModel: BeaconModel
    
    @State var beaconName = " "
    
    var body: some View {
        VStack{
            
            Image("Logo")
                .resizable()
                .scaledToFit()
            
            TextField("请输入信标的名称", text: $beaconName)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                .padding(.horizontal)
            
            Button(action: {
                if beaconName != "" {
                    beaconNameModel.addBeacon(Beacon(name: beaconName))
                    beaconNameModel.saveBeacons()
//                    beaconNameModel.loadBeacons()
                }
            }) {
                Text("Login")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            
        }
    }
}

struct EnterUUID_Previews: PreviewProvider {
    static var previews: some View {
        EnterUUID(beaconNameModel: BeaconModel())
    }
}
