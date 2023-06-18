//
//  Constants.swift
//  MyRadio
//
//  Created by Aleksei on 18.06.2023.
//

import Foundation

enum Constants {
    enum Strings {
        static var appName: String {
            guard let name = Bundle.main
                .infoDictionary?["CFBundleName"] as? String else {
                return "Project X"
            }
            
            return name
        }
        
        static var versionNumber: String {
            guard let number = Bundle.main
                .infoDictionary?["CFBundleShortVersionString"] as? String else {
                return "1.0"
            }
            
            return number
        }
        
        static var buildNumber: String {
            guard let number = Bundle.main
                .infoDictionary?["CFBundleVersion"] as? String else {
                return "1"
            }
            
            return number
        }
    }
}