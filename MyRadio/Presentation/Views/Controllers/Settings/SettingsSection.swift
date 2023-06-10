//
//  SettingsSection.swift
//  MyRadio
//
//  Created by Aleksei on 06.06.2023.
//

import UIKit

struct SettingsSection {
    let header: String?
    let footer: String?
    let cells: [SettingsCell]
    
    init(header: String? = nil, footer: String? = nil, cells: [SettingsCell]) {
        self.header = header
        self.footer = footer
        self.cells = cells
    }
}

protocol SettingsCell: AnyObject {
    var cellID: String { get }
    var height: CGFloat { get }
    var cellSelf: UITableViewCell.Type { get }
    
    func register(with tableView: UITableView)
    func dequeue<Cell: UITableViewCell>(_ cell: Cell.Type, with tableView: UITableView, indexPath: IndexPath) -> UITableViewCell
}
