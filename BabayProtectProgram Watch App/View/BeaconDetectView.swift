//
//  BeaconDetectView.swift
//  BabayProtectProgram Watch App
//
//  Created by 韦小新 on 2023/8/9.
//

import SwiftUI
import CoreBluetooth

struct BeaconDetectView: View {
    @ObservedObject private var bluetoothModel = BluetoothModel()
    @State var isContain = false
    var body: some View {
        NavigationView {
            List{
                ForEach(Array(bluetoothModel.peripheralNames.keys),id:\.self){ key in
                    VStack{
                        Text("name:\(bluetoothModel.peripheralNames[key] ?? "")")
                        Text("UUID:\(key)")
                        Text("Rssi: \(bluetoothModel.rssi[key] ?? 0)")
                    }
                    .alert(isPresented: $isContain) {
                        
                        Alert(title: Text("Dangerous"), message: Text("Is Dangerous，please leave"), dismissButton: .default(Text("OK"), action: {
                            for (key,value) in bluetoothModel.peripheralNames {
                                if value == "houseroom" {
                                    bluetoothModel.peripheralNames.removeValue(forKey: key)
                                }
                            }
                        }))
                        
                        
                    }
                    .onAppear {
                        if bluetoothModel.peripheralNames.values.contains("houseroom") {
                            print("I Find It ")
                            bluetoothModel.isStart = false
                            isContain = true
                        } else {
                            bluetoothModel.isStart = true
                            isContain = false
                        }
                    }
                }
                
            }
            .navigationTitle("Peripheral")
            
        }
    }
}

struct BeaconDetectView_Previews: PreviewProvider {
    static var previews: some View {
        BeaconDetectView()
    }
}
