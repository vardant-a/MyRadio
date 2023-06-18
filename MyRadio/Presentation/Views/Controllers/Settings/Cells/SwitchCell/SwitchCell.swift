//
//  SwitchCell.swift
//  MyRadio
//
//  Created by Aleksei on 13.06.2023.
//

import UIKit

struct SwitchCellViewModel {
    var titleCell: String
    
    init(titleCell: String) {
        self.titleCell = titleCell
    }
}

final class SwitchCell: UITableViewCell {
    
    private var label: UILabel = {
        let label = UILabel()
        label.text = "test"
        
        return label
    }()
    
    // MARK: - Private lazy Properties
    
    private lazy var uiSwitch: UISwitch = {
        let uiSwitch = UISwitch()
        uiSwitch.onTintColor = Colors.ClassicColorSet.acceptColor
        
        return uiSwitch
    }()
    
    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubviews(label, uiSwitch)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Public Methods
    
    func setupCell(_ string: String) {
        label.text = string
    }
    
    // MARK: - Layout
    
    private func setupLayout() {
        setupUISwitchLayout()
        setupLabelLayout()
    }
    
    private func setupLabelLayout() {
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor,
                constant: LocalConstants.horizontalOffset),
            label.trailingAnchor.constraint(
                equalTo: uiSwitch.leadingAnchor,
                constant: -LocalConstants.spacing),
            label.centerYAnchor.constraint(
                equalTo: contentView.centerYAnchor)
        ])
    }
    
    private func setupUISwitchLayout() {
        NSLayoutConstraint.activate([
            uiSwitch.centerYAnchor.constraint(
                equalTo: contentView.centerYAnchor),
            uiSwitch.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor,
                constant: -LocalConstants.horizontalOffset)
        ])
    }
    
    // MARK: - Local Constants
    
    private enum LocalConstants {
        static let horizontalOffset: CGFloat = 16
        static let spacing: CGFloat = 8
    }
}
