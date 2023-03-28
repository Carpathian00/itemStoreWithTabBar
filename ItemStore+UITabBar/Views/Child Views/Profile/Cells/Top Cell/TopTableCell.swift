//
//  TopTableCell.swift
//  ItemStore+UITabBar
//
//  Created by Adlan Nourindiaz on 28/03/23.
//

import UIKit

class TopTableCell: UITableViewCell {
    
    static let identifier = "TopTableCell"
    
    @IBOutlet weak var outerContainterView: UIView! {
        didSet {
            outerContainterView.layer.cornerRadius = outerContainterView.frame.size.height / 1.2
        }
    }
    
    @IBOutlet weak var profileImage: UIImageView! {
        didSet {
            profileImage.layer.cornerRadius = profileImage.frame.size.height / 1.2
            profileImage.clipsToBounds = true
        }
    }
    
    @IBOutlet weak var innerContainerView: UIView! {
        didSet {
            innerContainerView.layer.cornerRadius = innerContainerView.frame.height / 2
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        setupOuterContainterView()
    }

    private func setupOuterContainterView() {
        outerContainterView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            outerContainterView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            outerContainterView.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
    
}
