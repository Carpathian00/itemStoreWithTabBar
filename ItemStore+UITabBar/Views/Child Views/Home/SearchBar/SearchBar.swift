//
//  SearchBar.swift
//  ItemStore+UITabBar
//
//  Created by Adlan Nourindiaz on 28/03/23.
//

import UIKit

class SearchBar: UITableViewCell {

    static let identifier = "SearchBar"
    
    @IBOutlet weak var searchBar: UITextField!
    
    private let searchIcon: UIImageView! = {
        let img = UIImageView()
        img.image = UIImage(systemName: "magnifyingglass")
        return img
    }()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCell()
    }

    func setupCell() {

    }

    
    
}
