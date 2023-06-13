//
//  Colors.swift
//  MyRadio
//
//  Created by Aleksei on 06.06.2023.
//

import UIKit

enum Colors {
    static let mainTabNavBarColor: UIColor = .white
}

var colors: [AppStyleModel] = [
    AppStyleModel(
        title: "Bacis",
        mainColor: .black,
        acceptColor: .gray,
        secondColor: .white),
    AppStyleModel(
        title: "Pro",
        mainColor: .red,
        acceptColor: .green,
        secondColor: .orange),
        ]


struct AppStyleModel {
    let title: String
    let mainColor: UIColor
    let acceptColor: UIColor
    let secondColor: UIColor
}
