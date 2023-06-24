//
//  AboutAppViewController.swift
//  MyRadio
//
//  Created by Aleksei on 18.06.2023.
//

import UIKit

final class AboutAppViewController: UIViewController {
    
    // MARK: - Private Properties
    
    private let viewModel: AboutAppViewModelProtocol
    
    // MARK: - Private lazy Properties
    
    private lazy var appVersionLabel: UILabel = {
        let label = UILabel()
        label.text = "Application version - " + viewModel.getAppVersion()
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = Colors.ClassicColorSet.unselectedColor
        
        return label
    }()
    
    // MARK: - Init
    
    init(viewModel: AboutAppViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycles Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "О приложении"
        view.backgroundColor = Colors.ClassicColorSet.backgroundColor
        view.addSubviews(appVersionLabel)
        setupLayout()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        tabBarController?.tabBar.isHidden = false
    }
    
    // MARK: - Layout
    
    private func setupLayout() {
        setupAppVersionLabelLayout()
    }
    
    private func setupAppVersionLabelLayout() {
        NSLayoutConstraint.activate([
            appVersionLabel.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor,
                constant: -LocalConstants.bottomOffset),
            appVersionLabel.centerXAnchor.constraint(
                equalTo: view.centerXAnchor)
        ])
    }
    
    // MARK: - Local Constants
    
    private enum LocalConstants {
        static let bottomOffset: CGFloat = 60
    }
}
