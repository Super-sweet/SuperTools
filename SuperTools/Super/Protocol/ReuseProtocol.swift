//
//  ReuseProtocol.swift
//  HaoyiPatient
//
//  Created by xuchao on 2017/11/8.
//  Copyright © 2017年 haoyicn. All rights reserved.
//

import UIKit
protocol ReuseableView:class {
    
}
extension ReuseableView where Self:UIView {
    static var reuserIdentifier: String {
        return String(describing: self)
    }
}

protocol NibLoadbleView: class {
    
}
extension NibLoadbleView {
    static var nibName: String {
        return String(describing: self)
    }
}
