//
//  SettingsViewController.swift
//  MyRadio
//
//  Created by Aleksei on 06.06.2023.
//

import UIKit

final class SettingsViewController: UIViewController {
    
    // MARK: - Private Properties
    
    private let viewModel: SettingsViewProtocol
    
    private var settings: [SettingsSection] = [] {
        didSet {
            settings.forEach {
                $0.cells.forEach {
                    $0.register(with: settingsTableView)
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
        
        return tableView
    }()
    
    // MARK: - Init
    
    init(viewModel: SettingsViewProtocol) {
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
        configureNavigationController()
        view.backgroundColor = Colors.ClassicColorSet.backgroundColor
        view.addSubviews(settingsTableView)
        setupLayout()
    }
    
    // MARK: - Private Methods
    
    private func configureNavigationController() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "info.circle"),
            style: .plain,
            target: self,
            action: #selector(tuppedRightBarButtonItem))
    }
    
    // MARK: - Objc Methods
    
    @objc private func tuppedRightBarButtonItem() {
        let viewModel = AboutAppViewModel(
            description: Constants.Strings.self,
            localizable: Localizable.self)
        let nextVC = AboutAppViewController(viewModel: viewModel)
        
        navigationController?.show(nextVC, sender: nil)
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
    func numberOfSections(in tableView: UITableView) -> Int {
        return settings.count
    }
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return settings[section].cells.count
    }
    
    func tableView(_ tableView: UITableView,
                   titleForHeaderInSection section: Int) -> String? {
        return settings[section].header
    }
    
    func tableView(_ tableView: UITableView,
                   titleForFooterInSection section: Int) -> String? {
        return settings[section].footer
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = settings[indexPath.section].cells[indexPath.row]
            .dequeue(for: tableView, at: indexPath)
        
        return cell
    }
}

    // MARK: - UITableViewDelegate

extension SettingsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView,
                   heightForRowAt indexPath: IndexPath) -> CGFloat {
        return settings[indexPath.section].cells[indexPath.row].height
    }
}
