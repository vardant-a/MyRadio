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
//    func getAppStyle() -> AppStyleModel {
//        switch self {
//        case .basic:
//            return AppStyleModel(
//                title: "Bacis",
//                acceptColor: .black,
//                secondColor: .orange,
//                mainColor: .white, secondBasicColor: <#UIColor#>)
//        case .pro:
//            return AppStyleModel(
//                title: "Pro",
//                acceptColor: .red,
//                secondColor: .yellow,
//                mainColor: .orange)
//        }
//    }
    
    func setupAppStyle(_ index: Int) {
        UserDefaults.standard.set(index, forKey: AppSettingsKey.appStyle)
    }
}
