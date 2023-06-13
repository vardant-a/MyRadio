//
//  CollectionCellBuilder.swift
//  MyRadio
//
//  Created by Aleksei on 13.06.2023.
//

import UIKit

final class CollectionCellBuilder {
    
    let cellID: String
    
    init(cellID: String) {
        self.cellID = cellID
    }
}

extension CollectionCellBuilder: SettingsCell {
    var height: CGFloat {
        120
    }
    
    func register(with tableView: UITableView) {
        tableView.register(CollectionCell.self, forCellReuseIdentifier: cellID)
    }
    
    func dequeue(for tableView: UITableView, at indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView
            .dequeueReusableCell(withIdentifier: cellID, for: indexPath) as? CollectionCell else { return UITableViewCell() }
        
        return cell
    }
}
