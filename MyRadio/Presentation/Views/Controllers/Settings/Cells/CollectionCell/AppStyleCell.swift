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
                contentView.layer.borderWidth = 4.0
                contentView.layer.borderColor = Colors.BasicColorSet.acceptColor.cgColor
            } else {
                contentView.layer.borderWidth = 4.0
                contentView.layer.borderColor = UIColor.clear.cgColor
            }
        }
    }
    
    // MARK: - Private Properties
    
    private var navigationView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.layer.cornerRadius = 10
        contentView.backgroundColor = Colors.BasicColorSet.offColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Layout
    
    private func setupLayout() {
        
    }
}
