//
//  StationCell.swift
//  MyRadio
//
//  Created by Aleksei on 25.06.2023.
//

import UIKit

final class StationCell: UICollectionViewCell {
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = Colors.ClassicColorSet.mainColor
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
//        self.addGradientLayer(10)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

