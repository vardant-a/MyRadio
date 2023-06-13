//
//  TestMenu.swift
//  MyRadio
//
//  Created by Aleksei on 06.06.2023.
//

import Foundation

let testSettings: [SettingsSection] = [
    SettingsSection(
        footer: "Settings profile",
        cells: [
            ImageLabelCellBuilder(cellID: "ProfileCell")
        ]),
    SettingsSection(
        header: "Appearance",
        footer: "Create ",
        cells: [
            SwitchCellBuilder(cellID: "SystemMode", title: "System mode"),
            SwitchCellBuilder(cellID: "DarkMode", title: "Dark mode"),
            CollectionCellBuilder(cellID: "AppStyle")
        ]),
    SettingsSection(
        footer: "Click button for exit",
        cells: [
            ButtonCellBuilder(cellID: "LogOut", title: "Log Out")
        ])
]
