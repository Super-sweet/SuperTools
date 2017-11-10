//
//  UICollectionView+Reuse.swift
//  HaoyiPatient
//
//  Created by xuchao on 2017/11/8.
//  Copyright © 2017年 haoyicn. All rights reserved.
//

import UIKit
extension UICollectionView {
    
    func SuperDequeueReusableCell<T:UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuserIdentifier, for: indexPath) as? T else {
            fatalError("could not dequeue cell with identifier \(T.reuserIdentifier)")
        }
        return cell
    }
    func SuperRegistNib<T:UICollectionViewCell>(_:T.Type) {
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuserIdentifier)
    }
    func SuperRegistClass<T:UICollectionViewCell>(_:T.Type) {
        register(T.self, forCellWithReuseIdentifier: T.reuserIdentifier)
    }
}
