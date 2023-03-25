//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Prasan Pani on 2023-03-25.
//

import UIKit

final class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        setUpTabs()
    }
    
    func setUpTabs() {
        let charVC = RMCharacterViewController()
        let locVC = RMLocationViewController()
        let epsVC = RMEpisodesViewController()
        let settingsVC = RMSettingsViewController()
        
        charVC.navigationItem.largeTitleDisplayMode = .automatic
        locVC.navigationItem.largeTitleDisplayMode = .automatic
        epsVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let charNavVC = UINavigationController(rootViewController: charVC)
        let locNavVC = UINavigationController(rootViewController: locVC)
        let epsNavVC = UINavigationController(rootViewController: epsVC)
        let settingsNavVC = UINavigationController(rootViewController: settingsVC)
        
        charNavVC.tabBarItem = UITabBarItem(title: "Title", image: UIImage(systemName: "person"), tag: 1)
        locNavVC.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 2)
        epsNavVC.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 3)
        settingsNavVC.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        for nav in [charNavVC, locNavVC, epsNavVC, settingsNavVC] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([charNavVC, locNavVC, epsNavVC, settingsNavVC], animated: true)
    }
}
