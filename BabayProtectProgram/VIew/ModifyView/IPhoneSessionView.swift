//
//  watchSession.swift
//  BabayProtectProgram
//
//  Created by 韦小新 on 2023/8/14.
//

import SwiftUI
import WatchConnectivity

struct IPhoneSessionView: View {
    @State var session: WCSession?
    
    @StateObject private var watchSession = ViewModelPhone()
    
    var body: some View {
        VStack{
            Text("\(watchSession.text)")
            Button(action: {
                if let validSession = watchSession.session, validSession.isReachable {
                    let data: [String: Any] = ["iPhone": "Data from iPhone" as Any]
                    watchSession.session?.sendMessage(data, replyHandler: nil)
                }
                
            }, label: {
                Text("Send the data to watch")
            })
                .onAppear {
                    watchSession.checkTheSession()
                }
        }
      
    }
}

struct IPhoneSessionView_Previews: PreviewProvider {
    static var previews: some View {
        IPhoneSessionView()
    }
}
