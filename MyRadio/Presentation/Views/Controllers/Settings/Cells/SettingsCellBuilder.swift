//
//  SettingsCellBuilder.swift
//  MyRadio
//
//  Created by Aleksei on 06.06.2023.
//

import UIKit

final class SettingsCellViewModel {
    
    let title: String
    
    init(title: String) {
        self.title = title
    }
}

enum Cell {
    static let profileCell: UITableViewCell.Type = ProfileCell.self
}

final class SettingsCellBuilder {

    let cellID: String
    let viewModel: SettingsCellViewModel
    let typeCell: UITableViewCell.Type
    
    init(cellID: String, viewModel: SettingsCellViewModel, typeCell: UITableViewCell.Type) {
        self.cellID = cellID
        self.viewModel = viewModel
        self.typeCell = typeCell
    }
}

extension SettingsCellBuilder: SettingsCell {
    var height: CGFloat {
       100
    }
    
    var cellSelf: UITableViewCell.Type {
        return typeCell
    }
    
    func register(with tableView: UITableView) {
        tableView.register(typeCell.self, forCellReuseIdentifier: cellID)
        
    }
    
    func dequeue<Cell: UITableViewCell>(_ cellType: Cell.Type, with tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as? Cell else { return UITableViewCell() }

        return cell
    }
}
