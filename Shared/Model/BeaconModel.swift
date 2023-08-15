//
//  BeaconModel.swift
//  BabayProtectProgram
//
//  Created by 韦小新 on 2023/8/13.
//

import Foundation
import SwiftUI

struct Beacon: Hashable, Encodable, Decodable {
    let id = UUID()
    //    let uuid: String
    let name: String
}

//创建信标的数据模型
class BeaconModel: NSObject, ObservableObject {
    @Published var beacons: [Beacon] = []
    
    override init() {
        super.init()
        loadBeacons()
    }
    
    func saveBeacons() {
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(beacons)
            UserDefaults.standard.set(data, forKey: "beacons")
        } catch {
            print("Error saving beacons: \(error)")
        }
    }
    
    func loadBeacons() {
        if let data = UserDefaults.standard.data(forKey: "beacons") {
            do {
                let decoder = JSONDecoder()
                beacons = try decoder.decode([Beacon].self, from: data)
            } catch {
                print("Error loading beacons: \(error)")
            }
        }
    }
    
    func addBeacon(_ beacon: Beacon) {
        beacons.append(beacon)
        saveBeacons()
    }
    
}




