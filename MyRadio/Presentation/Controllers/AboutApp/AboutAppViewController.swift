//
//  AboutAppViewController.swift
//  MyRadio
//
//  Created by Aleksei on 18.06.2023.
//

import UIKit

final class AboutAppViewController: UIViewController {
    
    private let viewModel: AboutAppViewModelProtocol
    
    // MARK: - Init
    
    init(viewModel: AboutAppViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycles Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = Colors.ClassicColorSet.backgroundColor
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
            tabBarController?.tabBar.isHidden = true
        title = "О приложении"
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        tabBarController?.tabBar.isHidden = false
    }
}
