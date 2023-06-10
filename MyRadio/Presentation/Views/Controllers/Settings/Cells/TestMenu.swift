//
//  TestMenu.swift
//  MyRadio
//
//  Created by Aleksei on 06.06.2023.
//

import Foundation

let testSettings: [SettingsSection] = [
    SettingsSection(
        header: "test",
        footer: "blablabla",
        cells: [
            SettingsCellBuilder(
                cellID: "profile",
                viewModel: SettingsCellViewModel(title: "Test"),
                typeCell: Cell.profileCell)
            
        ])
]
