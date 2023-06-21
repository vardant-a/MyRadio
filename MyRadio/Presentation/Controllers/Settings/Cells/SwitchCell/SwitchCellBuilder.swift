//
//  SwitchCellBuilder.swift
//  MyRadio
//
//  Created by Aleksei on 13.06.2023.
//

import UIKit

final class SwitchCellBuilder {
    
    let cellID: String
    let title: String
    
    init(cellID: String, title: String) {
        self.cellID = cellID
        self.title = title
    }
}

extension SwitchCellBuilder: SettingsCell {
    var height: CGFloat {
        44
    }
    
    func register(with tableView: UITableView) {
        tableView.register(SwitchCell.self, forCellReuseIdentifier: cellID)
    }
    
    func dequeue(for tableView: UITableView, at indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView
            .dequeueReusableCell(withIdentifier: cellID, for: indexPath)
                as? SwitchCell else { return UITableViewCell() }
        cell.setupCell(title)
        
        return cell
    }
}
