//
//  AppStyleCell.swift
//  MyRadio
//
//  Created by Aleksei on 13.06.2023.
//

import UIKit

final class AppStyleCell: UICollectionViewCell {
    
    static let cellID = "AppStyleCell"
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                contentView.layer.borderColor = Colors
                    .ClassicColorSet.acceptColor.cgColor
            } else {
                contentView.layer.borderColor = Colors
                    .ClassicColorSet.unselectedColor.cgColor
            }
        }
    }
    
    // MARK: - Private Properties
    
    private var headerLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 7)
        
        return label
    }()
    
    private var headerView = UIView()
    
    private var cellView = UIView()
    
    private var footerView = UIView()
    
    private var iconView = UIView()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubviews(
            headerView, headerLabel, cellView, footerView, iconView)
        contentView.clipsToBounds = true
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycles Methods
    
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.layer.cornerRadius = 10
        contentView.layer.borderWidth = 2.0
        cellView.layer.cornerRadius = 2.0
        iconView.layer.cornerRadius = 6.0
    }
    
    // MARK: - Public Methods
    
    func configureCell(_ colorSet: ColorSet) {
        headerView.backgroundColor = colorSet.mainColor
        headerLabel.text = colorSet.title
        headerLabel.textColor = colorSet.secondColor
        cellView.backgroundColor = colorSet.mainColor
        footerView.backgroundColor = colorSet.mainColor
        iconView.backgroundColor = colorSet.acceptColor
        contentView.backgroundColor = colorSet.backgroundColor
    }
    
    // MARK: - Layout
    
    private func setupLayout() {
        setupHeaderViewLayout()
        setupHeaderLabelLayout()
        setupCellViewLayout()
        setupFooterViewLayout()
        setupIconViewLayout()
    }
    
    private func setupHeaderViewLayout() {
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(
                equalTo: contentView.topAnchor),
            headerView.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor),
            headerView.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor),
            headerView.heightAnchor.constraint(
                equalTo: contentView.heightAnchor,
                multiplier: 0.2)
        ])
    }
    
    private func setupHeaderLabelLayout() {
        NSLayoutConstraint.activate([
            headerLabel.leadingAnchor.constraint(
                equalTo: headerView.leadingAnchor,
                constant: 8),
            headerLabel.trailingAnchor.constraint(
                equalTo: headerView.trailingAnchor,
                constant: -8),
            headerLabel.bottomAnchor.constraint(
                equalTo: headerView.bottomAnchor,
                constant: -4)
        ])
    }
    
    private func setupCellViewLayout() {
        NSLayoutConstraint.activate([
            cellView.topAnchor.constraint(
                equalTo: headerView.bottomAnchor,
                constant: 4),
            cellView.leadingAnchor.constraint(
                equalTo: contentView.centerXAnchor,
                constant: -4),
            cellView.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor,
                constant: -4),
            cellView.heightAnchor.constraint(
                equalTo: contentView.heightAnchor,
                multiplier: 0.15),
        ])
    }
    
    private func setupFooterViewLayout() {
        NSLayoutConstraint.activate([
            footerView.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor),
            footerView.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor),
            footerView.heightAnchor.constraint(
                equalTo: contentView.heightAnchor,
                multiplier: 0.25),
            footerView.bottomAnchor.constraint(
                equalTo: contentView.bottomAnchor),
        ])
    }
    
    private func setupIconViewLayout() {
        NSLayoutConstraint.activate([
            iconView.heightAnchor.constraint(
                equalToConstant: 15),
            iconView.widthAnchor.constraint(
                equalToConstant: 15),
            iconView.centerXAnchor.constraint(
                equalTo: footerView.centerXAnchor),
            iconView.centerYAnchor.constraint(
                equalTo: footerView.centerYAnchor)
        ])
    }
}
