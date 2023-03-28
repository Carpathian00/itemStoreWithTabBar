//
//  ItemCell.swift
//  ItemStore+UITabBar
//
//  Created by Adlan Nourindiaz on 28/03/23.
//

import UIKit

class ItemCell: UITableViewCell {

    static let identifier = "ItemCell"
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var itemImage: UIImageView! {
        didSet {
            itemImage.image = UIImage(named: "Salad")
        }
    }
    @IBOutlet weak var itemName: UILabel! {
        didSet {
            itemName.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        }
    }
    @IBOutlet weak var price: UILabel! {
        didSet {
            price.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        }
    }
    
    @IBOutlet weak var terjual: UILabel! {
        didSet {
            terjual.font = UIFont.systemFont(ofSize: 12, weight: .regular)
            terjual.textColor = .darkGray
        }
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func configureDataWith() {
        
    }
}
