//
//  TabBarController.swift
//  ItemStore+UITabBar
//
//  Created by Adlan Nourindiaz on 28/03/23.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
        setupVC()
    }
 
    private func setupTabBar() {
        self.tabBar.barTintColor = .systemPink
        self.tabBar.tintColor = .black
        self.tabBar.unselectedItemTintColor = .white
        
    }
    
    private func setupVC() {
        viewControllers = [
            createController(rootVc: HomeViewController(), image: UIImage(systemName: HomeViewController.image)!),
            createController(rootVc: ProfileViewController(), image: UIImage(systemName: ProfileViewController.image)!)
        ]
        
    }
    
    private func createController(rootVc: UIViewController, image: UIImage) -> UIViewController {
        let vc = UINavigationController(rootViewController: rootVc)
        vc.tabBarItem.image = image
        
        rootVc.navigationItem.title = title
        return vc
    }

}
