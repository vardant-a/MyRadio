//
//  Alers.swift
//  MyRadio
//
//  Created by Aleksei on 22.06.2023.
//

import UIKit

final class Alerts {
    class func showBasicAlert(_ view: UIViewController,
                               title: String? = nil, message: String? = nil) {
        let alert = UIAlertController(
            title: "test",
            message: "message",
            preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .cancel)
        alert.addAction(okAction)

        view.present(alert, animated: true, completion: nil)
    }
}
