//
//  UIImage+Compress.swift
//  HaoyiPatient
//
//  Created by xuchao on 2017/11/9.
//  Copyright © 2017年 haoyicn. All rights reserved.
//

import UIKit

extension UIImage {
    func Super_compressToMemorySize(memorySize: Int) -> UIImage {
        let data = UIImageJPEGRepresentation(self, 0.5)
        
        if let newData = data, newData.count > memorySize {
            var newImage = UIImage(data:newData)!
            print("\(newData.count)")
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

