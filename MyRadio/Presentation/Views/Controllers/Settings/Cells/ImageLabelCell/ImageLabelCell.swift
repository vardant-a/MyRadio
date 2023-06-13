//
//  ImageLabelCell.swift
//  MyRadio
//
//  Created by Aleksei on 14.06.2023.
//

import UIKit

final class ImageLabelCell: UITableViewCell {
    
    // MARK: - Private Properties
    
    private var selectedImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .orange
        
        return imageView
    }()
    
    private var label: UILabel = {
        let label = UILabel()
        label.textColor = Colors.BasicColorSet.secondColor
        
        return label
    }()
    
    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = Colors.BasicColorSet.mainColor
        contentView.addSubviews(selectedImageView, label)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycles Methods
    
    override func layoutSubviews() {
        super.layoutSubviews()
        selectedImageView.layer.cornerRadius = selectedImageView.frame.height / 2
    }
    
    // MARK: - Public Methods
    
    func setupCell(_ title: String) {
        label.text = title
    }
    
    // MARK: - Layout
    
    private func setupLayout() {
        setupImageViewLayout()
        setupLabelLayout()
    }
    
    private func setupImageViewLayout() {
        NSLayoutConstraint.activate([
            selectedImageView.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor,
                constant: LocalConstants.horizontalOffset),
            selectedImageView.widthAnchor.constraint(
                equalToConstant: 70),
            selectedImageView.heightAnchor.constraint(
                equalToConstant: 70),
            selectedImageView.centerYAnchor.constraint(
                equalTo: contentView.centerYAnchor)
        ])
    }
    
    private func setupLabelLayout() {
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(
                equalTo: contentView.centerYAnchor),
            label.leadingAnchor.constraint(
                equalTo: selectedImageView.trailingAnchor,
                constant: LocalConstants.horizontalOffset),
            label.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor,
                constant: -LocalConstants.horizontalOffset)
        ])
    }
    
    // MARK: - Local Constants
    
    private enum LocalConstants {
        static let verticalOffset: CGFloat = 10
        static let horizontalOffset: CGFloat = 16
    }
}
