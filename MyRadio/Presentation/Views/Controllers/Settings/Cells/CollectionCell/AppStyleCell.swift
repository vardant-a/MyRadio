//
//  AppStyleCell.swift
//  MyRadio
//
//  Created by Aleksei on 13.06.2023.
//

import UIKit

final class AppStyleCell: UICollectionViewCell {
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                contentView.layer.borderWidth = 4.0
                contentView.layer.borderColor = UIColor.blue.cgColor
            } else {
                contentView.layer.borderWidth = 4.0
                contentView.layer.borderColor = UIColor.clear.cgColor
            }
        }
    }
    
    static let cellID = "AppStyleCell"
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.layer.cornerRadius = 10
        contentView.backgroundColor = .lightGray
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
