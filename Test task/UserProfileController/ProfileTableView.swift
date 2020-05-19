//
//  ProfileTableView.swift
//  Test task
//
//  Created by Yulia Novikova on 5/19/20.
//  Copyright © 2020 Yulia. All rights reserved.
//

import UIKit

class ProfileTableView: UITableView {
    
    private var user: User!
    
    func setup(with user: User) {
        registerHeader(ProfileImageHeaderView.self)
        registerCell(ProfileCell.self)
        registerCell(PhoneCell.self)
        self.user = user
        delegate = self
        dataSource = self
    }
}

extension ProfileTableView: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? 3 : 11
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.cell(ProfileCell.self)
        
        if indexPath.section == 0 {
            switch indexPath.row {
            case 0:
                return cell.setup(.name, user.name)
            case 1:
                return cell.setup(.username, user.username)
            case 2:
                return cell.setup(.email, user.email)
            default:
                print("Wrong number of items in section 0")
                return UITableViewCell()
            }
        } else if indexPath.section == 1 {
            switch indexPath.row {
            case 0:
                return cell.setup(.profession, user.profession)
            case 1:
                return cell.setup(.industry, user.industry)
            case 2:
                return cell.setup(.skills, user.skills)
            case 3:
                return cell.setup(.profDetails, user.profDetails)
            case 4:
                return tableView.cell(PhoneCell.self).setup(user.prefferEmail, phone: user.phone)
            case 5:
                return cell.setup(.location, user.location)
            case 6:
                return cell.setup(.instagram, user.instagram)
            case 7:
                return cell.setup(.facebook, user.facebook)
            case 8:
                return cell.setup(.website, user.website)
            case 9:
                return cell.setup(.company, user.phone)
            case 10:
                return cell.setup(.address, user.address)
            default:
                print("Wrong number of rows in section 1")
                return UITableViewCell()
            }
        }
        print("Wrong number of sections in profile tableview")
        return UITableViewCell()
    }
}

extension ProfileTableView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return section == 0 ? 200 : 50
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            return tableView.header(ProfileImageHeaderView.self).setup(with: #imageLiteral(resourceName: "49f6a1b3-ec80-4758-89a6-01eb3df56091"))
        } else {
            return generatePlainHeader(15, "Professional Information:")
        }
    }
}

