//
//  WatchSessionTestView.swift
//  BabayProtectProgram Watch App
//
//  Created by 韦小新 on 2023/8/14.
//

import SwiftUI

struct WatchSessionTestView: View {
    
    @StateObject private var watchSession = ViewModelWatch()
    
    var body: some View {
        VStack{
            Text(watchSession.text)
            Button {
                let data: [String:Any] = ["watch": "senddata" as Any]
                watchSession.session?.sendMessage(data, replyHandler: nil)
            } label: {
                Text("Send data to iPhone")
            }
        }
        .onAppear {
            watchSession.checkTheSession()
        }
        
    }
}

struct WatchSessionTestView_Previews: PreviewProvider {
    static var previews: some View {
        WatchSessionTestView()
    }
}
