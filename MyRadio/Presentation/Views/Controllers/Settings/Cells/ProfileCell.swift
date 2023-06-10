//
//  ProfileCell.swift
//  MyRadio
//
//  Created by Aleksei on 06.06.2023.
//

import UIKit

final class ProfileCell: UITableViewCell {

    // MARK: - Private Properties
    
    private var viewModel: SettingsCellViewModel? {
        didSet {
            print("no go")
            guard let viewModel else { return }
            print("go")
            DispatchQueue.main.async {
                self.profileLabel.text = viewModel.title
            }
        }
    }
    
    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .orange
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    private let profileLabel: UILabel = {
        let label = UILabel()
        label.text = "User 101240142"
        
        return label
    }()
    
    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubviews(profileImageView, profileLabel)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycles Methods
    
    override func layoutSubviews() {
        super.layoutSubviews()
        profileImageView.layer.cornerRadius = profileImageView.frame.height / 2
    }
    
    // MARK: - Public Methods
    
    func setupCell(_ viewModel: SettingsCellViewModel) {
        self.viewModel = viewModel
    }
    
    // MARK: - Layout
    
    private func setupLayout() {
        setupProfileImageViewLayout()
        setupProfileLabelLayout()
    }
    
    private func setupProfileImageViewLayout() {
        NSLayoutConstraint.activate([
            profileImageView.topAnchor.constraint(
                equalTo: contentView.topAnchor,
                constant: LocalConstants.horizontalSpacing),
            profileImageView.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor,
                constant: LocalConstants.horizontalOffset),
            profileImageView.bottomAnchor.constraint(
                equalTo: contentView.bottomAnchor,
                constant: -LocalConstants.horizontalSpacing),
            profileImageView.widthAnchor.constraint(
                equalToConstant: 70),
            profileImageView.heightAnchor.constraint(
                equalToConstant: 70)
        ])
    }
    
    private func setupProfileLabelLayout() {
        NSLayoutConstraint.activate([
            profileLabel.centerYAnchor.constraint(
                equalTo: contentView.centerYAnchor),
            profileLabel.leadingAnchor.constraint(
                equalTo: profileImageView.trailingAnchor,
                constant: LocalConstants.horizontalOffset),
            profileLabel.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor,
                constant: -LocalConstants.horizontalOffset)
        ])
    }
    
    // MARK: - Local Constants
    
    private enum LocalConstants {
        static let horizontalOffset: CGFloat = 16
        static let horizontalSpacing: CGFloat = 8
    }
}
