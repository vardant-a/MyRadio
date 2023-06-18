//
//  SettingsViewModel.swift
//  MyRadio
//
//  Created by Aleksei on 06.06.2023.
//

import UIKit

protocol SettingsViewProtocol {
    var settings: [SettingsSection] { get }
}

final class SettingsViewModel {
    
    var settings: [SettingsSection] {
        return testSettings
    }
    
    
    // MARK: Public Methods
    
    func showAboutView() {
    }
}

    // MARK: - SettingsViewModel + SettingsViewProtocol

extension SettingsViewModel: SettingsViewProtocol {
}
