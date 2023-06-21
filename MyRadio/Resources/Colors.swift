//
//  Colors.swift
//  MyRadio
//
//  Created by Aleksei on 06.06.2023.
//

import UIKit

enum Colors {
    // MARK: - Classic
    
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
    
    // MARK: - Custom
    
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
    
    // MARK: - Ocean
    
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
