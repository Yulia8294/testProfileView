//
//  ProfileImageHeaderView.swift
//  Test task
//
//  Created by Yulia Novikova on 5/19/20.
//  Copyright © 2020 Yulia. All rights reserved.
//

import UIKit

class ProfileImageHeaderView: UITableViewHeaderFooterView {
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    func setup(with image: UIImage) -> Self {
        profileImageView.image = image
        profileImageView.layer.masksToBounds = true
        profileImageView.layer.cornerRadius = 70
        return self
    }
}
