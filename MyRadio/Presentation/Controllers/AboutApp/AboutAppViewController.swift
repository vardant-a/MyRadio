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
    
    private let appLogoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = Colors.ClassicColorSet.acceptColor
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    // MARK: - Private lazy Properties
    
    private lazy var appTitleLabel: UILabel = {
        let label = UILabel()
        label.text = viewModel.appTitle
        label.textColor = Colors.ClassicColorSet.secondColor
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        
        return label
    }()
    
    private lazy var appDescriptionLabel: UILabel = {
        let label = UILabel()
        label.text = viewModel.appDescription
        label.textColor = Colors.ClassicColorSet.secondColor
        label.textAlignment = .center
        label.numberOfLines = 0
        
        return label
    }()
    
    private lazy var appVersionLabel: UILabel = {
        let label = UILabel()
        label.text = "Application version - " + viewModel.appVersion
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
        view.addSubviews(appLogoImageView,appTitleLabel,
                         appDescriptionLabel, appVersionLabel)
        setupLayout()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.tabBar.isHidden = true
    }
    
    override func viewDidLayoutSubviews() {
        super.viewWillLayoutSubviews()
        appLogoImageView.layer.cornerRadius = appLogoImageView.frame.height / 4
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        tabBarController?.tabBar.isHidden = false
    }
    
    // MARK: - Layout
    
    private func setupLayout() {
        setupAppLogoImageViewLayout()
        setupAppTitleLabelLayout()
        setupAppDescriptionLabelLayout()
        setupAppVersionLabelLayout()
    }
    
    private func setupAppLogoImageViewLayout() {
        NSLayoutConstraint.activate([
            appLogoImageView.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor,
                constant: LocalConstants.topOffset),
            appLogoImageView.centerXAnchor.constraint(
                equalTo: view.centerXAnchor),
            appLogoImageView.heightAnchor.constraint(
                equalToConstant: LocalConstants.imageHeight),
            appLogoImageView.widthAnchor.constraint(
                equalToConstant: LocalConstants.imageHeight)
        ])
    }
    
    private func setupAppTitleLabelLayout() {
        NSLayoutConstraint.activate([
            appTitleLabel.topAnchor.constraint(
                equalTo: appLogoImageView.bottomAnchor,
                constant: LocalConstants.verticalSpacing),
            appTitleLabel.centerXAnchor.constraint(
                equalTo: view.centerXAnchor),
        ])
    }
    
    private func setupAppDescriptionLabelLayout() {
        NSLayoutConstraint.activate([
            appDescriptionLabel.topAnchor.constraint(
                equalTo: appTitleLabel.bottomAnchor,
                constant: LocalConstants.verticalSpacing),
            appDescriptionLabel.leadingAnchor.constraint(
                equalTo: view.leadingAnchor,
                constant: LocalConstants.horizontalOffset),
            appDescriptionLabel.trailingAnchor.constraint(
                equalTo: view.trailingAnchor,
                constant: -LocalConstants.horizontalOffset)
        ])
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
        static let topOffset: CGFloat = 50
        static let bottomOffset: CGFloat = 60
        static let horizontalOffset: CGFloat = 16
        static let verticalSpacing: CGFloat = 20
        static let imageHeight: CGFloat = 100
    }
}
