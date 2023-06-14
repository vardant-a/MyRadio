//
//  MainTabBarController.swift
//  MyRadio
//
//  Created by Aleksei on 06.06.2023.
//

import UIKit

final class MainTabBarController: UITabBarController {
    
    // MARK: - Private Properties
    
    private let allStationsViewController: AllStationsViewController = {
        let viewModel = AllStationsViewModel()
        let viewController = AllStationsViewController(viewModel: viewModel)
        
        return viewController
    }()
    
    private let musicListViewController = {
        let viewModel = MusicListViewModel()
        let viewController = MusicListViewController(viewModel: viewModel)
        
        return viewController
    }()
    
    private let settingsViewController: SettingsViewController = {
        let viewModel = SettingsViewModel()
        let viewController = SettingsViewController(viewModel: viewModel)
        
        return viewController
    }()
    
    // MARK: - Life Cycles Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        setupTabBarStyle()
    }
    
    // MARK: - Private Methods
    
    private func setupViewControllers() {
        allStationsViewController.tabBarItem = UITabBarItem(
            title: "All Stations",
            image: UIImage(systemName: "radio"),
            selectedImage: UIImage(systemName: "radio.fill"))
        
        musicListViewController.tabBarItem = UITabBarItem(
            title: "Musics",
            image: UIImage(systemName: "line.3.horizontal.circle"),
            selectedImage: UIImage(systemName: "line.3.horizontal.circle.fill"))
        
        settingsViewController.tabBarItem = UITabBarItem(
            title: "Settings",
            image: UIImage(systemName: "gear"),
            selectedImage: UIImage(systemName: "gear"))
        
        viewControllers = [allStationsViewController, musicListViewController, settingsViewController]
    }
    
    private func setupTabBarStyle() {
        let tabBarAppearance = UITabBar.appearance()
        
        tabBarAppearance.tintColor = Colors.BasicColorSet.acceptColor
        tabBarAppearance.unselectedItemTintColor = Colors.BasicColorSet.unselectedColor
        tabBarAppearance.barTintColor = Colors.BasicColorSet.mainColor
        tabBarAppearance.backgroundColor = Colors.BasicColorSet.mainColor
    }
}
