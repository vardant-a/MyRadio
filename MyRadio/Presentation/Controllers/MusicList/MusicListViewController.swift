//
//  MusicListViewController.swift
//  MyRadio
//
//  Created by Aleksei on 14.06.2023.
//

import UIKit

final class MusicListViewController: UIViewController {
    
    private var viewModel: MusicListProtocol
    
    // MARK: - Init
    
    init(viewModel: MusicListProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycles Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
