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
        navBarAppearance.backgroundColor = Colors.ClasicColorSet.mainColor
        navBarAppearance.shadowColor = .clear
        navBarAppearance.titleTextAttributes = [
            .foregroundColor: Colors.ClasicColorSet.secondColor]
        navBarAppearance.largeTitleTextAttributes = [
            .foregroundColor: Colors.ClasicColorSet.secondColor]

        UINavigationBar.appearance().tintColor = Colors.ClasicColorSet.acceptColor
        UINavigationBar.appearance().prefersLargeTitles = true
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
    }
}
