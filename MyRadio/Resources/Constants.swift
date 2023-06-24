//
//  Constants.swift
//  MyRadio
//
//  Created by Aleksei on 18.06.2023.
//

import Foundation

enum Constants {
    enum Strings {
        static var appTitle: String {
            guard let name = Bundle.main
                .infoDictionary?["CFBundleName"] as? String else {
                return "Project X"
            }
            
            return name
        }
        
        static var appVersionNumber: String {
            guard let number = Bundle.main
                .infoDictionary?["CFBundleShortVersionString"] as? String else {
                return "1.0"
            }
            
            return number
        }
        
        static var appBuildNumber: String {
            guard let number = Bundle.main
                .infoDictionary?["CFBundleVersion"] as? String else {
                return "1"
            }
            
            return number
        }
    }
    
    enum Value {
        static let verticalOffset: CGFloat = 20
        static let horizontalOffset: CGFloat = 16
    }
}
