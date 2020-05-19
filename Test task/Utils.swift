//
//  Utils.swift
//  Test task
//
//  Created by Yulia Novikova on 5/19/20.
//  Copyright © 2020 Yulia. All rights reserved.
//

import UIKit

extension UITableView {
    
    func cell<T>(_ type: T.Type) -> T {
        dequeueReusableCell(withIdentifier: String(describing: type)) as! T
    }
    
    func registerCell<T>(_ type: T.Type) {
        let nib = UINib(nibName: String(describing: type), bundle: nil)
        register(nib, forCellReuseIdentifier: String(describing: type))
    }
    
    func registerHeader<T>(_ type: T.Type) {
        let nib = UINib(nibName: String(describing: type), bundle: nil)
        register(nib, forHeaderFooterViewReuseIdentifier: String(describing: type))
    }
    
    func header<T>(_ type: T.Type) -> T {
        dequeueReusableHeaderFooterView(withIdentifier: String(describing: type)) as! T
    }
}


//Just showing off autolayout from code, could do it in xib as the first header :D
   func generatePlainHeader(_ inset: CGFloat, _ title: String) -> UIView {
       let containerView = UIView()
       let label = UILabel()
       label.text = title
       label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
       label.translatesAutoresizingMaskIntoConstraints = false
       containerView.addSubview(label)
       
       label.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: inset).isActive = true
       label.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
       label.trailingAnchor.constraint(equalTo: containerView.trailingAnchor).isActive = true
       label.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
       label.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true
       return containerView
   }

