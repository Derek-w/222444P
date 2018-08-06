//
//  ManageViewController.swift
//  PAAL
//
//  Created by Admin on 8/6/18.
//  Copyright © 2018 KobiDouglasCook. All rights reserved.
//

import UIKit

class ManageViewController: UIViewController {
    
    @IBOutlet weak var manageTableView: UITableView!
    
    var sectionHeaders = [String]()
    var settingsSection1 = [String]()
    var settingsSection2 = [String]()
    
    var sectionData: [Int: [String]] = [:]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        editTableView()
        
        sectionHeaders = ["Profile", "Account", "Admin Controls"]
        settingsSection1 = ["Account Information", "About"]
        settingsSection2 = ["Create Post", "Post History"]
        
        sectionData = [0: [""], 1: settingsSection1, 2: settingsSection2]
    }
    
    
    
    
//MARK: EDIT TABLE VIEW
    
    func editTableView() {
        manageTableView.tableFooterView = UIView(frame: .zero) //Removes unused table view cells
        manageTableView.backgroundColor = UIColor.lightGray.lighter(by: 35)
    }

}


//MARK: TABLE VIEW

extension ManageViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionHeaders.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (sectionData[section]?.count)!
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ManageTableViewCell.identifers[indexPath.section], for: indexPath) as! ManageTableViewCell
        
        if indexPath.section == 0 {
            
            cell.configureOne(username: "CoachRodgers342", email: "GoPanthers45@Gmail.com")
            
        } else if indexPath.section == 1 {
            let cellTitle = settingsSection1[indexPath.row]
            cell.configureTwo(title: cellTitle)
            
        } else {
            let cellTitle = settingsSection2[indexPath.row]
            cell.configureTwo(title: cellTitle)
        }
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.section == 0 ? 180 : 60
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ""
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return section == 0 ? 0 : 35
    }
}
