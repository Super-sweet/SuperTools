//
//  UIImage+Compress.swift
//  HaoyiPatient
//
//  Created by xuchao on 2017/11/9.
//  Copyright © 2017年 haoyicn. All rights reserved.
//

import UIKit

extension UIImage {
    
    /// 压缩图片
    ///
    /// - Parameter memorySize: 压缩尺寸  该方法会无限压缩到指定尺寸，如果每次压缩的后小于10byte就停止压缩
    /// - Returns: 图片
    func Super_compressToMemorySize(memorySize: Int) -> UIImage {
       
        let selfData = UIImageJPEGRepresentation(self, 1.0)
        let data = UIImageJPEGRepresentation(self, 0.5)
//        防止进入死循环
        if let newSelfData = selfData,let newData = data{
            if abs(newSelfData.count - newData.count) < 10 {
              return self
            }
        }
        if let newData = data, newData.count > memorySize {
            var newImage = UIImage(data:newData)!
//            尺寸压缩
           newImage =  self.Super_image(image: newImage, zoomWithScale: 0.8)
            
            return newImage.Super_compressToMemorySize(memorySize: memorySize)
           
        }else {
           
            return UIImage(data:data!)!
        }
    }
    func Super_image(image:UIImage,zoomWithScale scale:CGFloat) -> UIImage {
        let size = CGSize(width: image.size.width * scale, height: image.size.height * scale)
        UIGraphicsBeginImageContext(size)
        var finalRect = CGRect.zero
        finalRect.origin = CGPoint.zero
        finalRect.size.width = size.width
        finalRect.size.height = size.height
        image.draw(in: finalRect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage!
    }
}

