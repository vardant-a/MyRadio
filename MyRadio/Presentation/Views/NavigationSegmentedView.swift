//
//  NavigationSegmentedView.swift
//  MyRadio
//
//  Created by Aleksei on 23.06.2023.
//

import UIKit

final class NavigationSegmentedView: UIView {
    
    // MARK: - Private Properties
    
   private var selectedIndex: Int = 0 {
        didSet {
            changePositionSegmentedLineView()
        }
    }
    
    // MARK: - Private lazy Properties
    
    private lazy var segmentedControl: UISegmentedControl = {
        let segmentedControl = UISegmentedControl(items: [
            "All",
            "Favorite"
        ])
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.setupStyleAndColors(
            Colors.ClassicColorSet.unselectedColor,
            selected: Colors.ClassicColorSet.acceptColor)

        return segmentedControl
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience init(target: Any?, action: Selector) {
        self.init()
        backgroundColor = Colors.ClassicColorSet.mainColor
        segmentedControl.addTarget(target, action: action, for: .valueChanged)
        addSubviews(segmentedControl)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Public Methods
    
    func setupSelectedControlIndex(_ selectedIndex: Int) {
        self.selectedIndex = selectedIndex
    }
    
    // MARK: - Private Methods
    
    private func changePositionSegmentedLineView() {}
    
    // MARK: - Layout
    
    private func setupLayout() {
        heightAnchor.constraint(equalToConstant: LocalConstants.viewHeight)
            .isActive = true
        
        segmentedControlLayout()
    }
    
    private func segmentedControlLayout() {
        NSLayoutConstraint.activate([
            segmentedControl.topAnchor.constraint(
                equalTo: self.topAnchor),
            segmentedControl.leadingAnchor.constraint(
                equalTo: self.leadingAnchor),
            segmentedControl.trailingAnchor.constraint(
                equalTo: self.trailingAnchor),
            segmentedControl.bottomAnchor.constraint(
                equalTo: self.bottomAnchor)
        ])
    }
    
    // MARK: - LocalConstants
    
    private enum LocalConstants {
        static let firstLinePosition: CGFloat = 0
        static let secondLinePosition = UIScreen.main.bounds.width / 2
        static let viewHeight: CGFloat = 53
        static let lineHeight: CGFloat = 4
        static let lineWidth = UIScreen.main.bounds.width / 2
        static var lineYPosition: CGFloat {
            viewHeight - lineHeight
        }
    }
}

// MARK: - Settings SegmentedControl Style

private extension UISegmentedControl {
    func setupStyleAndColors(_ normal: UIColor, selected: UIColor) {
        let clearImage = UIImage().withTintColor(.clear)
        
        setTitleTextAttributes(
            [.foregroundColor: normal], for: .normal)
        setTitleTextAttributes(
            [.foregroundColor: selected], for: .selected)
        setBackgroundImage(
            clearImage, for: .normal, barMetrics: .default)
        setBackgroundImage(
            clearImage, for: .selected, barMetrics: .default)
        setDividerImage(clearImage, forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
    }
}
