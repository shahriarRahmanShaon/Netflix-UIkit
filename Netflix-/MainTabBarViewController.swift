//
//  ViewController.swift
//  Netflix-
//
//  Created by sergio shaon on 7/6/22.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: DownloadsViewController())
        let vc3 = UINavigationController(rootViewController: UpcomingViewController())
        let vc4 = UINavigationController(rootViewController: SearchViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        vc1.title = "Home"
        vc2.title = "Coming"
        vc3.title = "Search"
        vc4.title = "Downloads"
        
        tabBar.tintColor = .label
        
        setViewControllers([vc1,vc2,vc3,vc4], animated: true)
    }


}

