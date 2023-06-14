//
//  MainNavigationController.swift
//  MyRadio
//
//  Created by Aleksei on 14.06.2023.
//

import UIKit

final class MainNavigationController: UINavigationController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle(rawValue: topViewController?.preferredStatusBarStyle.rawValue ?? .max) ?? .default
    }
    
    // MARK: - Init
    
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        configureNavController()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Methods
    
    private func configureNavController() {
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.backgroundColor = Colors.BasicColorSet.mainColor
        navBarAppearance.shadowColor = .clear
        navBarAppearance.titleTextAttributes = [
            .foregroundColor: Colors.BasicColorSet.secondColor]
        navBarAppearance.largeTitleTextAttributes = [
            .foregroundColor: Colors.BasicColorSet.secondColor]

        UINavigationBar.appearance().tintColor = Colors.BasicColorSet.acceptColor
        UINavigationBar.appearance().prefersLargeTitles = true
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
    }
}
