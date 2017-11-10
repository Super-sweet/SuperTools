//
//  File.swift
//  HaoyiPatient
//
//  Created by xuchao on 2017/11/2.
//  Copyright © 2017年 haoyicn. All rights reserved.
//

import UIKit
extension UIColor {
    /// rgb快速填色
    ///
    /// - Parameters:
    ///   - r: 0 ~~ 255.5
    ///   - g: 0 ~~ 255.5
    ///   - b: 0 ~~ 255.5
    ///   - alpha: 默认为1.0 支持自定义
    convenience init(r: CGFloat, g:CGFloat, b:CGFloat, alpha:CGFloat = 1.0) {
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: alpha)
    }
}
