//
//  ButtonCell.swift
//  MyRadio
//
//  Created by Aleksei on 13.06.2023.
//

import UIKit

final class ButtonCell: UITableViewCell {
    
    private var button: UIButton = {
        let button = UIButton(type: .system)
        
        return button
    }()
    
    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubviews(button)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Public Methods
    
    func setupCell(title: String, titleColor: UIColor, buttonColor: UIColor) {
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.backgroundColor = buttonColor
    }
    
    // MARK: - Layout
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(
                equalTo: contentView.topAnchor),
            button.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor),
            button.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor),
            button.bottomAnchor.constraint(
                equalTo: contentView.bottomAnchor)
        ])
    }
}
