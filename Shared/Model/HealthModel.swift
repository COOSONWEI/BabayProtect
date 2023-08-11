//
//  HealthModel.swift
//  BabayProtectProgram Watch App
//
//  Created by 韦小新 on 2023/8/10.
//

import Foundation
import HealthKit

//健康信息的数据模型
//这里涉及到运动记录、运动步数、运动消耗掉的卡路里、体温情况、心率、睡眠情况
class HealthModel: NSObject, ObservableObject {
    //MARK: -运动记录
    //今日、累计、连续
    var alltime: Int?
    var allDay: Int?
    var consecutiveDay: Int?
    
    var todayTime: Int?
    var todayCalorie: Int?
    
    var walkStep: Int?
    var runStep: Int?
    
    //MARK: -睡眠数据
    var sleepTime: TimeInterval = 0.0
    
    //MARK: -体温
    var bodyTimeperature: Double?
    
}
