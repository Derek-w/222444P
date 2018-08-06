//
//  ViewController.swift
//  PAAL
//
//  Created by Admin on 8/6/18.
//  Copyright © 2018 KobiDouglasCook. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var homeTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        editTableView()
    
    }
 
    
    
//MARK: EDIT TABLE VIEW
    
    func editTableView() {
        homeTableView.tableFooterView = UIView(frame: .zero) //Removes unused table view cells
        homeTableView.backgroundColor = UIColor.lightGray.lighter(by: 35)
    }

}

//MARK: TABLE VIEW

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.identifers[indexPath.row], for: indexPath) as! HomeTableViewCell
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return indexPath.row == 0 ? 160 : 260
    }
    
    
    
}

