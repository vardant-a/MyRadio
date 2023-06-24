//
//  AboutAppViewModel.swift
//  MyRadio
//
//  Created by Aleksei on 21.06.2023.
//

import Foundation

protocol AboutAppViewModelProtocol: AnyObject {
    var appTitle: String { get }
    var appDescription: String { get }
    var appVersion: String { get }
}

final class AboutAppViewModel {
    
    private let description: Constants.Strings.Type
    private let localizable: Localizable.Type
    
    // MARK: - Init
    
    init(description: Constants.Strings.Type, localizable: Localizable.Type) {
        self.description = description
        self.localizable = localizable
    }
}

    // MARK: - AboutAppViewModel + AboutAppViewModelProtocol

extension AboutAppViewModel: AboutAppViewModelProtocol {
    var appTitle: String {
        description.appTitle
    }
    
    var appDescription: String {
        localizable.appDescription
    }
    
    var appVersion: String {
        description.appVersionNumber
    }
}
