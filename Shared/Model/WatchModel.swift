//
//  WatchModel.swift
//  BabayProtectProgram
//
//  Created by 韦小新 on 2023/8/11.
//

import Foundation
import SwiftUI
import WatchConnectivity

class ViewModelWatch : NSObject, ObservableObject,  WCSessionDelegate{
    
    var session: WCSession?
    @Published var text = ""
    func checkTheSession() {
        if WCSession.isSupported() {
            session = WCSession.default
            session?.delegate = self
            session?.activate()
        }
    }
    
    init(session: WCSession = .default){
        self.session = session
        session.activate()
    }
   
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
    }
    
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        print("received data:\(message)")
        if let value = message["iPhone"] as? String {
            text = value
        }
    }
    
}
