//
//  SettingsViewController.swift
//  MyRadio
//
//  Created by Aleksei on 06.06.2023.
//

import UIKit

final class SettingsViewController: UIViewController {
    
    // MARK: - Private Properties
    
    private let viewModel: SettingsViewModel
    
    private var settings: [SettingsSection] = [] {
        didSet {
            DispatchQueue.main.async {
                self.settings.forEach {
                    $0.cells.forEach {
                        $0.register(with: self.settingsTableView)
                    }
                }
            }
        }
    }
    
    // MARK: - Private lazy Properties
    
    private lazy var settingsTableView: UITableView = {
        let tableView = UITableView(
            frame: .zero,
            style: .insetGrouped)
        tableView.allowsSelection = false
        tableView.isScrollEnabled = false
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .clear
        tableView.register(ProfileCell.self, forCellReuseIdentifier: "profile")
        
        return tableView
    }()
    
    // MARK: - Init
    
    init(viewModel: SettingsViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycles Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settings = testSettings
        view.backgroundColor = .brown
        view.addSubview(settingsTableView)
        settingsTableView.translatesAutoresizingMaskIntoConstraints = false
        setupLayout()
    }
    
    // MARK: - Layout
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            settingsTableView.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor),
            settingsTableView.leadingAnchor.constraint(
                equalTo: view.leadingAnchor),
            settingsTableView.trailingAnchor.constraint(
                equalTo: view.trailingAnchor),
            settingsTableView.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

    // MARK: - UITableViewDataSource

extension SettingsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        settings.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return settings[section].header
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return settings[section].footer
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellType = settings[indexPath.section].cells[indexPath.row].cellSelf
        let cell = settings[indexPath.section].cells[indexPath.row]
            .dequeue(cellType, with: tableView, indexPath: indexPath)
        
        return cell
    }
}

    // MARK: - UITableViewDelegate

extension SettingsViewController: UITableViewDelegate {
}
