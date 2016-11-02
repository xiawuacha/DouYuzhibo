//
//  NSDate-Extension.swift
//  DouYuzhibo
//
//  Created by 汪凯 on 16/10/27.
//  Copyright © 2016年 汪凯. All rights reserved.
//

import Foundation

extension Date {
    static func getCurrentTime() -> String {
        let nowDate = Date()
        
        let interval = Int(nowDate.timeIntervalSince1970)
        
        return "\(interval)"
    }
}
