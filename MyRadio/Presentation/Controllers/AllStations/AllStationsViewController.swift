//
//  AllStationsViewController.swift
//  MyRadio
//
//  Created by Aleksei on 14.06.2023.
//

import UIKit

final class AllStationsViewController: UIViewController {
    
    // MARK: - Private Properties
    
    private let viewModel: AllStationsProtocol
    
    private var collectionViewFlowLayout: UICollectionViewFlowLayout = {
        let flowLayout = UICollectionViewFlowLayout()
        
        return flowLayout
    }()
    
    // MARK: - Private lazy Properties
    
    private lazy var navigationSegmentedView = NavigationSegmentedView(
        target: self,
        action: #selector(changedSegmented(_:))
    )
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Tup me", for: .normal)
        button.addTarget(self, action: #selector(tuppedFilterButton), for: .touchUpInside)
        button.backgroundColor = .black
        
        return button
    }()
    
    // MARK: - Init
    
    init(viewModel: AllStationsProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycles Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationView()
        view.backgroundColor = Colors.ClassicColorSet.backgroundColor
        view.addSubviews(navigationSegmentedView, button)
        setupLayout()
    }
    
    // MARK: - Private Methods
    
    private func setupNavigationView() {
        // TODO: ADD ASSETS for Button
        
        let leftNavButton = UIBarButtonItem(
            image: Images.Icon.filter,
            style: .plain,
            target: self,
            action: #selector(tuppedFilterButton))
        
        let rightNavButton = UIBarButtonItem(
            image: Images.Icon.search,
            style: .plain,
            target: self,
            action: #selector(tuppedSearchButton))
        
        leftNavButton.tintColor = Colors.ClassicColorSet.acceptColor
        rightNavButton.tintColor = Colors.ClassicColorSet.acceptColor
        
        navigationItem.leftBarButtonItem = leftNavButton
        navigationItem.rightBarButtonItem = rightNavButton
    }
    
    // MARK: - @Objc Methods
    
    @objc private func changedSegmented(_ sender: UISegmentedControl) {
        viewModel.showSelectedStations(sender.selectedSegmentIndex)
    }
    
    @objc private func tuppedSearchButton() {
        print("Search")
    }
    
    @objc private func tuppedFilterButton() {
       print("Filter")
    }
    
    // MARK: - Layout
    
    private func setupLayout() {
        setupNavigationSegmentedViewLayout()
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 44),
            button.widthAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    private func setupNavigationSegmentedViewLayout() {
        NSLayoutConstraint.activate([
            navigationSegmentedView.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor),
            navigationSegmentedView.leadingAnchor.constraint(
                equalTo: view.leadingAnchor),
            navigationSegmentedView.trailingAnchor.constraint(
                equalTo: view.trailingAnchor)
        ])
    }
    
    // MARK: - LocalConstants
    
    private enum LocalConstants {
        static let topOffset: CGFloat = 10
        static let itemSpacing: CGFloat = 10
        static let itemsPerRow: CGFloat = 3
        static let lineHeight: CGFloat = 0.7
    }
}
