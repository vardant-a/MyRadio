//
//  AboutAppViewModel.swift
//  MyRadio
//
//  Created by Aleksei on 21.06.2023.
//

import Foundation

protocol AboutAppViewModelProtocol: AnyObject {
    func getAppVersion() -> String
}

final class AboutAppViewModel {
    
    let description: Constants.Strings.Type
    
    
    init(description: Constants.Strings.Type) {
        self.description = description
    }
}

    // MARK: - AboutAppViewModel + AboutAppViewModelProtocol

extension AboutAppViewModel: AboutAppViewModelProtocol {
    func getAppVersion()  -> String {
        description.versionNumber
    }
}
