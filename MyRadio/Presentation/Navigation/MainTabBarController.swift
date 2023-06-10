//
//  MainTabBarController.swift
//  MyRadio
//
//  Created by Aleksei on 06.06.2023.
//

import UIKit

final class MainTabBarController: UITabBarController {
    
    // MARK: - Private Properties
    
    private let settingsViewController: SettingsViewController = {
        let viewModel = SettingsViewModel()
        let viewControllet = SettingsViewController(viewModel: viewModel)
        
        return viewControllet
    }()
    
    // MARK: - Life Cycles Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        setupTabBarStyle()
    }
    
    // MARK: - Private Methods
    
    private func setupViewControllers() {
        settingsViewController.tabBarItem = UITabBarItem(
            title: "Settings",
            image: UIImage(systemName: "gear"),
            selectedImage: UIImage(systemName: "gear"))
        
        viewControllers = [settingsViewController]
    }
    
    private func setupTabBarStyle() {
        let tabBarAppearance = UITabBar.appearance()
        
        tabBarAppearance.tintColor = .orange
        tabBarAppearance.unselectedItemTintColor = .lightGray
        tabBarAppearance.barTintColor = Colors.mainTabNavBarColor
        tabBarAppearance.backgroundColor = Colors.mainTabNavBarColor
    }
}
