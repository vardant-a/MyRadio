//
//  ModelCell.swift
//  MyRadio
//
//  Created by Aleksei on 15.06.2023.
//

import UIKit

final class ModelCell: UITableViewCell {
    
    let newTest = AllStationsViewModel(networkService: NetworkService())
    
    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
