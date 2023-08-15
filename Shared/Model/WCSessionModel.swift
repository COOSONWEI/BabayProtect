//
//  WCSessionModel.swift
//  BabayProtectProgram
//
//  Created by 韦小新 on 2023/8/11.
//

import Foundation
import WatchConnectivity
import SwiftUI

class ViewModelPhone : NSObject,  WCSessionDelegate, ObservableObject{
    
    var session: WCSession?
    
    @Published var isReachable = false
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
        if let error = error {
            print("WC Session activation failed with error: \(error.localizedDescription)")
            return
        }
        
        if WCSession.default.isReachable {
            print("Reachable")
        }else{
            print("NoReachable")
        }
        
    }
    
    
    func sessionDidDeactivate(_ session: WCSession) {
        
    }
    
    func sessionDidBecomeInactive(_ session: WCSession) {
        
    }
    
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        print("Received message:\(message)")
        DispatchQueue.main.async {
            if let value = message["watch"] as? String {
                print("i get the watch message")
                self.text = value
            }
        }
    }
    
    func sessionReachabilityDidChange(_ session: WCSession) {
        print(session.isReachable)
        
        if WCSession.default.activationState == .activated {
            isReachable = WCSession.default.isReachable
        }
        
    }
    
    
}
