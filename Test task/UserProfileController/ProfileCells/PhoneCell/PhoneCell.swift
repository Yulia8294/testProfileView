//
//  PhoneCell.swift
//  Test task
//
//  Created by Yulia Novikova on 5/19/20.
//  Copyright © 2020 Yulia. All rights reserved.
//

import UIKit

class PhoneCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var emailCheckBox: UIImageView!
    @IBOutlet weak var phoneCheckBox: UIImageView!
    
    func setup(_ emailPreffered: Bool, phone: String) -> Self {
        emailCheckBox.image = emailPreffered ? #imageLiteral(resourceName: "checked") : #imageLiteral(resourceName: "unchecked")
        phoneCheckBox.image = emailPreffered ? #imageLiteral(resourceName: "unchecked") : #imageLiteral(resourceName: "checked")
        return self
    }
    
    override func layoutSubviews() {
          super.layoutSubviews()
          separatorInset.left = titleLabel.bounds.width + 30
    }
}
