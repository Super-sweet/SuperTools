//
//  UITableView+Extension.swift
//  HaoyiPatient
//
//  Created by xuchao on 2017/11/8.
//  Copyright © 2017年 haoyicn. All rights reserved.
//

import UIKit
extension UITableView {
   
    /// 一个方法直接调用重用cell 直接根据cell的文件名命名重用identifier
    ///
    /// - Parameter indexPath: indexpath
    /// - Returns: cell
    func SuperDequequeReusableCell<T:UITableViewCell>(forIndexPath indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuserIdentifier, for: indexPath) as? T else {
            fatalError("could not dequeue cell with identifier \(T.reuserIdentifier)")
        }
        return cell
    }
    
    /// 注册自定义nib的Cell
    ///
    /// - Parameter _: class.self
    func SuperRegistNib<T: UITableViewCell>(_:T.Type) {
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellReuseIdentifier: T.reuserIdentifier)
    }
    
    /// 注册自定义class cell
    ///
    /// - Parameter _: cell.self
    func SuperRegistClass<T: UITableViewCell>(_:T.Type) {
        register(T.self, forCellReuseIdentifier: T.reuserIdentifier)
    }
    
}
