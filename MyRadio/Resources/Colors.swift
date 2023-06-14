//
//  Colors.swift
//  MyRadio
//
//  Created by Aleksei on 06.06.2023.
//

import UIKit

enum Colors {
    enum ClasicColorSet {
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
        
        static var offColor = UIColor { trait in
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
        
        static var offColor = UIColor { trait in
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
        
        static var offColor = UIColor { trait in
            if trait.userInterfaceStyle == .dark {
                return UIColor(hexString: "#000000")
            } else {
                return UIColor(hexString: "#F2F2F7")
            }
        }
    }
}

var colors: [ColorSet] = [
    ColorSet(
        title: "Classic",
        acceptColor: Colors.ClasicColorSet.acceptColor,
        secondColor: Colors.ClasicColorSet.secondColor,
        unselectedColor: Colors.ClasicColorSet.unselectedColor,
        mainColor: Colors.ClasicColorSet.mainColor,
        offColor: Colors.ClasicColorSet.offColor),
    ColorSet(
        title: "Custom",
        acceptColor: Colors.CustomColorSet.acceptColor,
        secondColor: Colors.CustomColorSet.secondColor,
        unselectedColor: Colors.CustomColorSet.unselectedColor,
        mainColor: Colors.CustomColorSet.mainColor,
        offColor: Colors.CustomColorSet.offColor),
    ColorSet(
        title: "Ocean",
        acceptColor: Colors.OceanColorSet.acceptColor,
        secondColor: Colors.OceanColorSet.secondColor,
        unselectedColor: Colors.OceanColorSet.unselectedColor,
        mainColor: Colors.OceanColorSet.mainColor,
        offColor: Colors.OceanColorSet.offColor),
]


struct ColorSet {
    let title: String
    var acceptColor: UIColor
    var secondColor: UIColor
    var unselectedColor: UIColor
    var mainColor: UIColor
    var offColor: UIColor
}
