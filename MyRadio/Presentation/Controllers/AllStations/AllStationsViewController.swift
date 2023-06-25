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
    
    private var lineView: UIView = {
        let view = UIView()
        view.backgroundColor = Colors.ClassicColorSet.unselectedColor
        
        return view
    }()
    
    // MARK: - Private lazy Properties
    
    private lazy var navigationSegmentedView = NavigationSegmentedView(
        target: self,
        action: #selector(changedSegmented(_:))
    )
    
    private lazy var collectionViewFlowLayout: UICollectionViewFlowLayout = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.minimumLineSpacing = LocalConstants.itemSpacing
        let width = (400 - (LocalConstants.itemsPerRow - 1) * LocalConstants.itemSpacing) / LocalConstants.itemsPerRow
        flowLayout.itemSize = CGSize(width: width, height: width * 1.4)
        
        return flowLayout
    }()
    
    private lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(
            frame: .zero,
            collectionViewLayout: collectionViewFlowLayout)
        collectionView.backgroundColor = .clear
        collectionView.register(
            StationCell.self, forCellWithReuseIdentifier: "ID")
        collectionView.dataSource = self
        collectionView.delegate = self
        
        return collectionView
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
        view.addSubviews(navigationSegmentedView, collectionView, lineView)
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
        setupCollectionViewLayout()
        setupLineViewLayout()
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
    
    private func setupCollectionViewLayout() {
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(
                equalTo: navigationSegmentedView.bottomAnchor,
                constant: LocalConstants.topOffset),
            collectionView.leadingAnchor.constraint(
                equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(
                equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    private func setupLineViewLayout() {
        NSLayoutConstraint.activate([
            lineView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            lineView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            lineView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            lineView.heightAnchor.constraint(equalToConstant: 0.7)
        ])
    }
    
    // MARK: - LocalConstants
    
    private enum LocalConstants {
        static let topOffset: CGFloat = 10
        static let itemSpacing: CGFloat = 10
        static let itemsPerRow: CGFloat = 3
    }
}
    
    // MARK: - UICollectionViewDataSource

extension AllStationsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        21
        //viewModel.mockData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView
            .dequeueReusableCell(withReuseIdentifier: "ID",for: indexPath) as? StationCell else {
            return UICollectionViewCell()
        }

        return cell
    }
}

    // MARK: - UICollectionViewDelegate

extension AllStationsViewController: UICollectionViewDelegate {
    
}
