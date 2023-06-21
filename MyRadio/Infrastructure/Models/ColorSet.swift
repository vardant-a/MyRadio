//
//  ColorSet.swift
//  MyRadio
//
//  Created by Aleksei on 22.06.2023.
//

import UIKit

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
