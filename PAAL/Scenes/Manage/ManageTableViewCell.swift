//
//  ManageTableViewCell.swift
//  PAAL
//
//  Created by Admin on 8/6/18.
//  Copyright © 2018 KobiDouglasCook. All rights reserved.
//

import UIKit

class ManageTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var usernameTitle: UILabel!
    @IBOutlet weak var emailTitle: UILabel!
    
    
    @IBOutlet weak var cellTitle: UILabel!
    
    
    func configureOne(username: String, email: String) {
        usernameTitle.text = username
        emailTitle.text = email
    }
    
    func configureTwo(title: String) {
        cellTitle.text = title
    }
    
    static let identifers = ["ManageCellOne", "ManageCellTwo", "ManageCellTwo"]

    override func awakeFromNib() {
        super.awakeFromNib()
    }



}
