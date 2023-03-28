//
//  ProfileViewController.swift
//  ItemStore+UITabBar
//
//  Created by Adlan Nourindiaz on 28/03/23.
//

import UIKit

enum ProfileSections: Int {
    case top = 0
    case setting = 1
}

class ProfileViewController: UIViewController {
    
    static let image = "person.crop.circle.fill"
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTable()
    }
    
    func setupTable() {
        table.delegate = self
        table.dataSource = self
        table.register(UINib(nibName: "TopTableCell", bundle: nil), forCellReuseIdentifier: TopTableCell.identifier)
        table.register(UINib(nibName: "SettingTableCell", bundle: nil), forCellReuseIdentifier: SettingTableCell.identifier)
    }
}


extension ProfileViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sections = ProfileSections(rawValue: indexPath.section)
        
        switch sections {
        case .top:
            guard let topCell = table.dequeueReusableCell(withIdentifier: TopTableCell.identifier, for: indexPath) as? TopTableCell else { return UITableViewCell() }
        return topCell
            
        case .setting:
                guard let settingCell = table.dequeueReusableCell(withIdentifier: SettingTableCell.identifier, for: indexPath) as? SettingTableCell else { return UITableViewCell() }
            
            return settingCell
        default:
            return UITableViewCell()
        }
    }
    
    
}
