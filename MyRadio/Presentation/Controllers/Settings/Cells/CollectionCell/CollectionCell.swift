//
//  CollectionCell.swift
//  MyRadio
//
//  Created by Aleksei on 13.06.2023.
//

import UIKit

final class CollectionCell: UITableViewCell {
    
    // MARK: - Private Properties
    
    private var colorSetCollection: [ColorSet] = ColorSet
        .getColorSetCollection()
    
    private var layout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        return layout
    }()
    
    // MARK: - Private lazy Properties
    
    private lazy var cellCollectionView: UICollectionView = {
        let collectionView = UICollectionView(
            frame: .zero, collectionViewLayout: layout)
        collectionView.register(
            AppStyleCell.self, forCellWithReuseIdentifier: AppStyleCell.cellID)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .clear
        
        return collectionView
    }()
    
    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubviews(cellCollectionView)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Layout
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            cellCollectionView.topAnchor.constraint(
                equalTo: contentView.topAnchor),
            cellCollectionView.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor),
            cellCollectionView.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor),
            cellCollectionView.bottomAnchor.constraint(
                equalTo: contentView.bottomAnchor),
        ])
    }
    
    // MARK: - Local Constants
    
    private enum LocalConstants {
        static let verticalOffset: CGFloat = 8
        static let horizontalOffset: CGFloat = 16
    }
}

    // MARK: - UICollectionViewDataSource

extension CollectionCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        colorSetCollection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView
            .dequeueReusableCell(withReuseIdentifier: AppStyleCell.cellID, for: indexPath) as? AppStyleCell else { return UICollectionViewCell() }
        cell.configureCell(colorSetCollection[indexPath.item])
        
        let selectedIndex = AppSettings.shared.appStyle
        cell.isSelected = indexPath.row == selectedIndex
        
        return cell
    }
}

    // MARK: - UICollectionViewDelegate

extension CollectionCell: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("tup")
        AppSettings.shared.appStyle = indexPath.item
        print(AppSettings.shared.appStyle)
    }
}

    // MARK: - UICollectionViewDelegateFlowLayout

extension CollectionCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(
            top: LocalConstants.verticalOffset,
            left: LocalConstants.horizontalOffset,
            bottom: LocalConstants.verticalOffset,
            right: LocalConstants.horizontalOffset)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let heightCell = collectionView.frame.height - (2 * LocalConstants.verticalOffset)
        let widthCell = (collectionView.frame.width - (2 * LocalConstants.horizontalOffset) - LocalConstants.horizontalOffset) / 3

        return CGSize(width: widthCell, height: heightCell)
    }
}
