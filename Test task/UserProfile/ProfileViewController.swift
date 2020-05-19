//
//  ProfileViewController.swift
//  Test task
//
//  Created by Yulia Novikova on 5/19/20.
//  Copyright © 2020 Yulia. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var profileTableView: ProfileTableView!
    
    private var user = User(name: "Brandon McCourtney", username: "brandon_mc", email: "brandon@gmail.com", profession: "Personal Trainer", industry: "Beauty", skills: "CrossFit, Boxing, Ninja Warrior, Bodyweight Fitness", profDetails: "I teach classes in HealthCity on Mondays and Wednesdays", phone: "+ 31 131 23 12", prefferEmail: true, location: "Amsterdamm NL", instagram: "@brandonmc", facebook: "facebook.com/brandon", website: "brandonfitness.nl", company: "healthCity Amsterdam", address: "Prins Hendrikkade 47")

    override func viewDidLoad() {
        super.viewDidLoad()
        profileTableView.setup(with: user)
    }


}

