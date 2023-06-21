//
//  AppSettings.swift
//  MyRadio
//
//  Created by Aleksei on 11.06.2023.
//

import UIKit

final class AppSettings {
    static let shared = AppSettings()
    private let defaults: UserDefaults = .standard
    
//    var appStyle: AppStyle {
//        get {
//            AppStyle(rawValue: defaults
//                .integer(forKey: AppSettingsKey.appStyle)) ?? .basic
//        } set {
//            defaults.set(newValue, forKey: AppSettingsKey.appStyle)
//        }
//    }
    
    var appStyle: Int {
        get {
            defaults.integer(forKey: AppSettingsKey.appStyle)
        } set {
            defaults.set(newValue, forKey: AppSettingsKey.appStyle)
        }
    }
    
    private init() {}
}

enum AppSettingsKey {
    static let appearance = "Appearance"
    static let appStyle = "AppStyle"
}
