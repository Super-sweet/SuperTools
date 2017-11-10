//
//  File.swift
//  HaoyiPatient
//
//  Created by xuchao on 2017/11/2.
//  Copyright © 2017年 haoyicn. All rights reserved.
//

import Foundation
import UIKit
/// 屏幕宽度
let PhoneWidth                          = UIScreen.main.bounds.size.width

/// 屏幕高度
let PhoneHeight                         = UIScreen.main.bounds.size.height
//导航和状态栏一共的高度
let PhoneStatusBarNavHeight             = UIApplication.shared.statusBarFrame.size.height > 20 ? 88 : 64 as CGFloat
//tabbar高度
let PhoneTabbarHeight                   = UIApplication.shared.statusBarFrame.size.height > 20 ? 83 : 49 as CGFloat

//当前版本号
let CurrentVersion                      = Bundle.main.infoDictionary!["CFBundleShortVersionString"] as! String
//uuid
let UUIDString                          = UIDevice.current.identifierForVendor?.uuidString
