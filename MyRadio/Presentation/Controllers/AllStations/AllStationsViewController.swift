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
    
    // MARK: - Private lazy Properties
    
    private lazy var navigationSegmentedView = NavigationSegmentedView(
        target: self,
        action: #selector(changedSegmented(_:))
    )
    
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
        view.backgroundColor = Colors.ClassicColorSet.backgroundColor
        view.addSubviews(navigationSegmentedView)
        setupLayout()
    }
    
    // MARK: - @Objc Methods
    
    @objc private func changedSegmented(_ sender: UISegmentedControl) {
        viewModel.showSelectedStations(sender.selectedSegmentIndex)
    }
    
    // MARK: - Layout
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            navigationSegmentedView.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor),
            navigationSegmentedView.leadingAnchor.constraint(
                equalTo: view.leadingAnchor),
            navigationSegmentedView.trailingAnchor.constraint(
                equalTo: view.trailingAnchor)
        ])
    }
}
