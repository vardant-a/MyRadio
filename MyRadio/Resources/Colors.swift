//
//  Colors.swift
//  MyRadio
//
//  Created by Aleksei on 06.06.2023.
//

import UIKit

enum Colors {
    enum ClassicColorSet {
        static var acceptColor = UIColor { trait in
            if trait.userInterfaceStyle == .dark {
                return UIColor.systemBlue
            } else {
                return UIColor.systemBlue
            }
        }
        
        static var secondColor = UIColor { trait in
            if trait.userInterfaceStyle == .dark {
                return UIColor(hexString: "FFFFFF")
            } else {
                return UIColor(hexString: "#000000")
            }
        }
        
        static let tintColor = UIColor.systemGreen
        
        static var unselectedColor = UIColor { trait in
            if trait.userInterfaceStyle == .dark {
                return .darkGray
            } else {
                return .lightGray
            }
        }
        
        static var mainColor = UIColor { trait in
            if trait.userInterfaceStyle == .dark {
                return UIColor(hexString: "#1C1C1E")
            } else {
                return UIColor(hexString: "FFFFFF")
            }
        }
        
        static var backgroundColor = UIColor { trait in
            if trait.userInterfaceStyle == .dark {
                return UIColor(hexString: "#000000")
            } else {
                return UIColor(hexString: "#F2F2F7")
            }
        }
    }
    
    enum CustomColorSet {
        static var acceptColor = UIColor { trait in
            if trait.userInterfaceStyle == .dark {
                return .orange
            } else {
                return UIColor(hexString: "#5A55D5")
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
                return .darkGray
            } else {
                return .lightGray
            }
        }
        
        static var mainColor = UIColor { trait in
            if trait.userInterfaceStyle == .dark {
                return UIColor(hexString: "#1C1C1E")
            } else {
                return UIColor(hexString: "FFFFFF")
            }
        }
        
        static var backgroundColor = UIColor { trait in
            if trait.userInterfaceStyle == .dark {
                return UIColor(hexString: "#000000")
            } else {
                return UIColor(hexString: "#F2F2F7")
            }
        }
    }
    
    enum OceanColorSet {
        static var acceptColor = UIColor { trait in
            if trait.userInterfaceStyle == .dark {
                return UIColor(hexString: "#46829D")
            } else {
                return UIColor(hexString: "#5A55D5")
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
                return .darkGray
            } else {
                return .lightGray
            }
        }
        
        static var mainColor = UIColor { trait in
            if trait.userInterfaceStyle == .dark {
                return UIColor(hexString: "#00283A")
            } else {
                return UIColor(hexString: "FFFFFF")
            }
        }
        
        static var backgroundColor = UIColor { trait in
            if trait.userInterfaceStyle == .dark {
                return UIColor(hexString: "#000000")
            } else {
                return UIColor(hexString: "#F2F2F7")
            }
        }
    }
}

struct ColorSet {
    let title: String
    var acceptColor: UIColor
    var tintColor: UIColor
    var secondColor: UIColor
    var unselectedColor: UIColor
    var mainColor: UIColor
    var backgroundColor: UIColor
    
    static func getColorSetCollection() -> [ColorSet] {
        return [
            ColorSet(
                title: Localizable.ColorSetTitle.system,
                acceptColor: Colors.ClassicColorSet.acceptColor,
                tintColor: .systemGreen,
                secondColor: Colors.ClassicColorSet.secondColor,
                unselectedColor: Colors.ClassicColorSet.unselectedColor,
                mainColor: Colors.ClassicColorSet.mainColor,
                backgroundColor: Colors.ClassicColorSet.backgroundColor),
            ColorSet(
                title: Localizable.ColorSetTitle.custom,
                acceptColor: Colors.CustomColorSet.acceptColor,
                tintColor: Colors.CustomColorSet.acceptColor,
                secondColor: Colors.CustomColorSet.secondColor,
                unselectedColor: Colors.CustomColorSet.unselectedColor,
                mainColor: Colors.CustomColorSet.mainColor,
                backgroundColor: Colors.CustomColorSet.backgroundColor),
            ColorSet(
                title: Localizable.ColorSetTitle.ocean,
                acceptColor: Colors.OceanColorSet.acceptColor,
                tintColor: Colors.CustomColorSet.acceptColor,
                secondColor: Colors.OceanColorSet.secondColor,
                unselectedColor: Colors.OceanColorSet.unselectedColor,
                mainColor: Colors.OceanColorSet.mainColor,
                backgroundColor: Colors.OceanColorSet.backgroundColor),
        ]
    }
}
