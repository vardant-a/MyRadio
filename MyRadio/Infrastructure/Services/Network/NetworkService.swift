//
//  NetworkService.swift
//  MyRadio
//
//  Created by Aleksei on 22.06.2023.
//

import Foundation

protocol NetworkServiceProtocol: AnyObject {
    func fetchData<T: Decodable>(url: String) async throws -> T
}

final class NetworkService: NetworkServiceProtocol {
    
   private var networkError: NetworkError.Type
    
    // MARK: - Init
    
    init(networkError: NetworkError.Type = NetworkError.self) {
        self.networkError = networkError
    }
    
//    func fetchData<T>() -> T {
//        return T as! T
//    }
    
    func fetchData<T: Decodable>(url: String) async throws -> T {
        guard let url = URL(string: url) else {
            throw networkError.failedToCreateURL
        }
        
        let (data, _) = try await URLSession
            .shared.data(from: url)
        
        do {
            let items = try JSONDecoder()
                .decode(T.self, from: data)
            return items
        } catch {
            throw networkError.dataNotFound
        }
    }
}
