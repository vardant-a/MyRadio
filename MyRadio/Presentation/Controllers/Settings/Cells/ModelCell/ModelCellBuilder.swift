//
//  ModelCellBuilder.swift
//  MyRadio
//
//  Created by Aleksei on 15.06.2023.
//

import UIKit

final class ModelCellBuilder {
    let cellID: String
    let title: String

    init(cellID: String, title: String) {
        self.cellID = cellID
        self.title = title
    }
}

extension ModelCellBuilder: SettingsCell {
    var height: CGFloat {
        44
    }
    
    func register(with tableView: UITableView) {
        tableView.register(ModelCell.self, forCellReuseIdentifier: cellID)
    }
    
    func dequeue(for tableView: UITableView, at indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView
            .dequeueReusableCell(withIdentifier: cellID, for: indexPath)
                as? ModelCell else { return UITableViewCell() }
        
        return cell
    }
}
