//
//  String+Autlayout.swift
//  HaoyiPatient
//
//  Created by xuchao on 2017/11/7.
//  Copyright © 2017年 haoyicn. All rights reserved.
//

import UIKit
extension String {
    /// 动态计算高度
    ///
    /// - Parameters:
    ///   - width: 宽
    ///   - font: 字体大小
    /// - Returns: 高
    func heightWithConstrainedWidth(width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: CGFloat.greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: [NSAttributedStringKey.font: font], context: nil)
        return boundingBox.height
    }
    /// 动态计算宽度
    ///
    /// - Parameters:
    ///   - height: 高
    ///   - font: 字体大小
    /// - Returns: 宽
    func widthWithConstrainedHeight(height: CGFloat,font: UIFont) -> CGFloat {
        let constrainRect = CGSize(width: CGFloat.greatestFiniteMagnitude, height: height)
        let boundingBox = self.boundingRect(with: constrainRect, options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: [NSAttributedStringKey.font: font], context: nil)
        
        return boundingBox.width
        
    }
    
}
