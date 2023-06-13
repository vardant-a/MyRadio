//
//  ImageLabelCellBuilder.swift
//  MyRadio
//
//  Created by Aleksei on 14.06.2023.
//

import UIKit

final class ImageLabelCellBuilder {
    
    let cellID: String
    
    init(cellID: String) {
        self.cellID = cellID
    }
}

extension ImageLabelCellBuilder: SettingsCell {
    var height: CGFloat {
        100
    }
    
    func register(with tableView: UITableView) {
        tableView.register(ImageLabelCell.self, forCellReuseIdentifier: cellID)
    }
    
    func dequeue(for tableView: UITableView, at indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as? ImageLabelCell else { return UITableViewCell() }
        cell.setupCell("Aleksei")
        
        return cell
    }
}
