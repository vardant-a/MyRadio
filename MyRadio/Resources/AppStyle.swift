//
//  AppStyle.swift
//  MyRadio
//
//  Created by Aleksei on 11.06.2023.
//

import Foundation

extension AppSettings {
    enum AppStyle: Int {
        case basic
        case pro
    }
}

extension AppSettings.AppStyle {
    func getAppStyle() -> AppStyleModel {
        switch self {
        case .basic:
            return AppStyleModel(
                title: "Bacis",
                mainColor: .black,
                acceptColor: .orange,
                secondColor: .white)
        case .pro:
            return AppStyleModel(
                title: "Pro",
                mainColor: .red,
                acceptColor: .yellow,
                secondColor: .orange)
        }
    }
    
    func setupAppStyle(_ index: Int) {
        UserDefaults.standard.set(index, forKey: AppSettingsKey.appStyle)
    }
}
