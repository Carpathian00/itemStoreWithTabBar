//
//  HomeViewController.swift
//  ItemStore+UITabBar
//
//  Created by Adlan Nourindiaz on 28/03/23.
//

import UIKit

enum Sections: Int {
    case searchBar = 0
    case itemList = 1
}

class HomeViewController: UIViewController {

    static let image = "house.fill"
    
    @IBOutlet weak var itemList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appearance = UINavigationBarAppearance()
                appearance.backgroundColor = .systemPink
        navigationController?.navigationBar.standardAppearance = appearance
        setupTable()
    }

    func setupTable() {
        itemList.delegate = self
        itemList.dataSource = self
        itemList.register(UINib(nibName: "SearchBar", bundle: nil), forCellReuseIdentifier: SearchBar.identifier)
        itemList.register(UINib(nibName: "ItemCell", bundle: nil), forCellReuseIdentifier: ItemCell.identifier)
    }
    
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sections = Sections(rawValue: section)
        
        switch sections {
        case .searchBar:
            return 1
        case .itemList:
            return 5
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sections = Sections(rawValue: indexPath.section)

        switch sections {
        case .searchBar:
            guard let searchBarCell = itemList.dequeueReusableCell(withIdentifier: SearchBar.identifier, for: indexPath) as? SearchBar else { return UITableViewCell() }
            return searchBarCell
        case .itemList:
            guard let itemListCell = itemList.dequeueReusableCell(withIdentifier: ItemCell.identifier, for: indexPath) as? ItemCell else { return UITableViewCell() }
            return itemListCell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = ProfileViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
}
