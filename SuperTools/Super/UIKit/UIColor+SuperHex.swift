//
//  File.swift
//  HaoyiPatient
//
//  Created by xuchao on 2017/11/2.
//  Copyright © 2017年 haoyicn. All rights reserved.
//

import UIKit

extension UIColor {

    /// hex快速填色
    ///
    /// - Parameters:
    ///   - hexColor: 16进制颜色
    ///   - alpha: 透明度 默认为1.0
    convenience init(hexColor: String, alpha: CGFloat = 1.0) {
        // 存储转换后的数值
        var red:UInt32 = 0, green:UInt32 = 0, blue:UInt32 = 0
        // 分别转换进行转换
        Scanner(string: hexColor[0..<2]).scanHexInt32(&red)
        
        Scanner(string: hexColor[2..<4]).scanHexInt32(&green)
        
        Scanner(string: hexColor[4..<6]).scanHexInt32(&blue)
        
        self.init(red: CGFloat(red)/255.0, green: CGFloat(green)/255.0, blue: CGFloat(blue)/255.0, alpha: alpha)
    }
}
