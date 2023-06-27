//
//  StationCell.swift
//  MyRadio
//
//  Created by Aleksei on 25.06.2023.
//

import UIKit

final class StationCell: UICollectionViewCell {
    
    // MARK: - Public Properties
    
    static let identification = "StationCell"
    
    // MARK: - Private Properties
    
    private var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = Colors.ClassicColorSet.secondColor
        
        return label
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = Colors.ClassicColorSet.mainColor
        contentView.addSubviews(titleLabel)
        
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Public Methods
    
    func configure(_ title: String) {
        titleLabel.text = title
    }
    
    
    // MARK: - Layout
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor,
                constant: 8),
            titleLabel.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor,
                constant: -8),
            titleLabel.bottomAnchor.constraint(
                equalTo: contentView.bottomAnchor,
                constant: -10)
        ])
    }
    
    // Внутри класса UITableViewCell
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        
        // Передача события нажатия на ячейку вверх по UIResponderChain
        next?.touchesEnded(touches, with: event)
    }
}

