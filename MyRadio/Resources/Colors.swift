//
//  Colors.swift
//  MyRadio
//
//  Created by Aleksei on 06.06.2023.
//

import UIKit

enum Colors {
    enum BasicColorSet {
        static var acceptColor = UIColor { trait in
            if trait.userInterfaceStyle == .dark {
                return .orange
            } else {
                return .systemBlue
            }
        }
        
        static var secondColor = UIColor { trait in
            if trait.userInterfaceStyle == .dark {
                return UIColor(hexString: "FFFFFF")
            } else {
                return UIColor(hexString: "#000000")
            }
        }
        
        static var unselectedColor = UIColor { trait in
            if trait.userInterfaceStyle == .dark {
                return .lightGray
            } else {
                return .darkGray
            }
        }
        
        static var mainColor = UIColor { trait in
            if trait.userInterfaceStyle == .dark {
                return UIColor(hexString: "#1C1C1E")
            } else {
                return UIColor(hexString: "FFFFFF")
            }
        }
        
        static var offColor = UIColor { trait in
            if trait.userInterfaceStyle == .dark {
                return UIColor(hexString: "#000000")
            } else {
                return UIColor(hexString: "#F2F2F7")
            }
        }
    }
}

var colors: [AppStyleModel] = [
    AppStyleModel(
        title: "Bacis",
        acceptColor: Colors.BasicColorSet.acceptColor,
        secondColor: Colors.BasicColorSet.secondColor,
        unselectedColor: Colors.BasicColorSet.unselectedColor,
        mainColor: Colors.BasicColorSet.mainColor,
        offColor: Colors.BasicColorSet.offColor)
]


struct AppStyleModel {
    let title: String
    var acceptColor: UIColor
    var secondColor: UIColor
    var unselectedColor: UIColor
    var mainColor: UIColor
    var offColor: UIColor
}
