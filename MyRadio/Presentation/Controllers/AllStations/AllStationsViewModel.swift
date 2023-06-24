//
//  AllStationsViewModel.swift
//  MyRadio
//
//  Created by Aleksei on 14.06.2023.
//

import UIKit

protocol AllStationsProtocol: AnyObject {
    func showSelectedStations(_ selectIndex: Int)
}

final class AllStationsViewModel {
    
    // MARK: - Init
    
    init() {}
}

    // MARK: - AllStationsViewModel + AllStationsProtocol

extension AllStationsViewModel: AllStationsProtocol {
    func showSelectedStations(_ selectIndex: Int) {
        switch selectIndex {
        case 1:
            print("all")
        default:
            print("favorite")
        }
    }
}
