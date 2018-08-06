//
//  StatsViewController.swift
//  PAAL
//
//  Created by Admin on 8/6/18.
//  Copyright © 2018 KobiDouglasCook. All rights reserved.
//

import UIKit

class StatsViewController: UIViewController {
    
    @IBOutlet weak var statsTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        editTableView()

    }
    
    
//MARK: EDIT TABLE VIEW
    
    func editTableView() {
        statsTableView.tableFooterView = UIView(frame: .zero) //Removes unused table view cells
        statsTableView.backgroundColor = UIColor.lightGray.lighter(by: 35)
    }


//MARK: TABLE VIEW

}

extension StatsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: StatsTableViewCell.identifer[indexPath.row], for: indexPath) as! StatsTableViewCell
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    
    
}
