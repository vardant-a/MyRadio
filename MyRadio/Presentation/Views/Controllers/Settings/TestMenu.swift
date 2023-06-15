//
//  TestMenu.swift
//  MyRadio
//
//  Created by Aleksei on 06.06.2023.
//

import Foundation

let testSettings: [SettingsSection] = [
    SettingsSection(
        header: Localizable.Settings.General.header,
        cells: [
            ModelCellBuilder(cellID: "first", title: "1"),
        ]),
    SettingsSection(
        header: Localizable.Settings.Appearance.header,
        footer: Localizable.Settings.Appearance.footer,
        cells: [
            SwitchCellBuilder(
                cellID: "SystemMode",
                title: Localizable.Settings.Appearance.systemMode),
            SwitchCellBuilder(
                cellID: "DarkMode",
                title: Localizable.Settings.Appearance.darkMode),
            ModelCellBuilder(cellID: "second", title: "2"),
            CollectionCellBuilder(cellID: "AppStyle")
        ]),
    SettingsSection(
        footer: Localizable.Settings.Other.footer,
        cells: [
            ButtonCellBuilder(
                cellID: "Reset",
                title: Localizable.Settings.Other.resetButton)
        ])
]
