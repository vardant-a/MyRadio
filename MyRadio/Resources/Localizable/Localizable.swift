//
//  Localizable.swift
//  MyRadio
//
//  Created by Aleksei on 15.06.2023.
//

import Foundation

enum Localizable {
    enum ControllerTitle {
        static let radioStations = NSLocalizedString(
            "ViewController.radioStationsTitle", comment: "")
        static let musics = NSLocalizedString(
            "ViewController.musicsTitle", comment: "")
        static let settings = NSLocalizedString(
            "ViewController.settingsTitle", comment: "")
    }
    
    enum Settings {
        enum General {
            static let header = NSLocalizedString(
                "Settings.sectionGeneral.header", comment: "")
        }
        
        enum Appearance {
            static let header = NSLocalizedString(
                "Settings.sectionAppearance.header", comment: "")
            static let systemMode = NSLocalizedString(
                "Settings.sectionAppearance.systemMode", comment: "")
            static let darkMode = NSLocalizedString(
                "Settings.sectionAppearance.darkMode", comment: "")
            static let footer = NSLocalizedString(
                "Settings.sectionAppearance.footer", comment: "")
        }
        
        enum Other {
            static let resetButton = NSLocalizedString(
                "Settings.sectionOther.resetButton", comment: "")
            static let footer = NSLocalizedString(
                "Settings.sectionOther.footer", comment: "")
        }
    }
    
    enum ColorSetTitle {
        static let system = NSLocalizedString(
            "ColorSet.systemTitle", comment: "")
        static let custom = NSLocalizedString(
            "ColorSet.customTitle", comment: "")
        static let ocean = NSLocalizedString(
            "ColorSet.oceanTitle", comment: "")
    }
    
    static var appDescription = NSLocalizedString(
        "General.appDescription", comment: "")
}
