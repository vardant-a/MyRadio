//
//  NetworkError.swift
//  MyRadio
//
//  Created by Aleksei on 25.06.2023.
//

import Foundation

enum NetworkError: Error {
    case urlNotValid
    case failedToCreateURL
    case dataNotFound
    
    var localizedDescription: String {
        switch self {
        case .urlNotValid:
            return "URL is not valid."
        case .failedToCreateURL:
            return "Failed to create URL."
        case .dataNotFound:
            return "The requested data was not found."
        }
    }
}
