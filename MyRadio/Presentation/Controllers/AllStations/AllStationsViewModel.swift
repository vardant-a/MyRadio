//
//  AllStationsViewModel.swift
//  MyRadio
//
//  Created by Aleksei on 14.06.2023.
//

import UIKit

protocol AllStationsProtocol: AnyObject {
    var mockData: [Bool] { get }
    
    func showSelectedStations(_ selectIndex: Int)
}

final class AllStationsViewModel {
    
    // MARK: - Private Properties
    
    private var networkService: NetworkServiceProtocol
    
    private var model: [Bool] = []
    
    // MARK: - Init
    
    init(networkService: NetworkServiceProtocol) {
        self.networkService = networkService
    }
    
    // MARK: - Private Methods
    
    private func getStations() -> [Bool] {
        Task {
            do {
                guard let testData: [Bool] = try await networkService
                    .fetchData(url: "") else { return }
                model = testData
            } catch {
                print(error.localizedDescription)
            }
        }
        
        return []
    }
}

    // MARK: - AllStationsViewModel + AllStationsProtocol

extension AllStationsViewModel: AllStationsProtocol {
    var mockData: [Bool] {
        getStations()
    }
    
    func showSelectedStations(_ selectIndex: Int) {
        switch selectIndex {
        case 1:
            print("all")
        default:
            print("favorite")
        }
    }
}
