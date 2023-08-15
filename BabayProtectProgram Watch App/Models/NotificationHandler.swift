//
//  NotificationHandler.swift
//  BabayProtectProgram Watch App
//
//  Created by 韦小新 on 2023/8/14.
//

import Foundation
import UserNotifications

class NotificationHandler: NSObject, ObservableObject {
    
    //请求权限
    func askPermission() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.badge,.sound]) { success, error in
            if success {
                print("Greet it suceess")
            }else if let error = error {
                print(error.localizedDescription)
            }
        }
    }
    
    func sendNotifications(isDangerous: Bool, title: String, body: String) {
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
        let content = UNMutableNotificationContent()
        content.title = title
        content.body = body
        content.sound = UNNotificationSound.default
        
        let request = UNNotificationRequest(identifier: "near Dangerous", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request)
    }
    
    
    
}
