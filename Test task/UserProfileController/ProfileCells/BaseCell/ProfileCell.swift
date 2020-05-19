//
//  ProfileCell.swift
//  Test task
//
//  Created by Yulia Novikova on 5/19/20.
//  Copyright © 2020 Yulia. All rights reserved.
//

import UIKit

class ProfileCell: UITableViewCell {

    @IBOutlet weak var rightPinIcon: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    func setup(_ type: ProfileInfo, _ description: String) -> Self {
        titleLabel.text = type.rawValue + ":"
        infoLabel.text = description
        rightPinIcon.isHidden = type != .profession && type != .industry
        return self
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        separatorInset.left = titleLabel.bounds.width + 25
    }
    
}
