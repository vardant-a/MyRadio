//
//  ButtonCellBuilder.swift
//  MyRadio
//
//  Created by Aleksei on 13.06.2023.
//

import UIKit

final class ButtonCellBuilder {
    
    let cellID: String
    let title: String
    
    init(cellID: String, title: String) {
        self.cellID = cellID
        self.title = title
    }
}

extension ButtonCellBuilder: SettingsCell {
    var height: CGFloat {
        34
    }
    
    func register(with tableView: UITableView) {
        tableView.register(ButtonCell.self, forCellReuseIdentifier: cellID)
    }
    
    func dequeue(for tableView: UITableView, at indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as? ButtonCell else { return UITableViewCell() }
        cell.setupCell(.systemRed, title: title)
        
        return cell
    }
}
