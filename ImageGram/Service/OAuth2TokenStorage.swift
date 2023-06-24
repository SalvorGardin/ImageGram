//
//  OAuth2TokenStorage.swift
//  ImageGram
//
//  Created by Aleksey Shaposhnikov on 24.06.2023.
//

import Foundation

final class OAuth2TokenStorage {
    static let shared = OAuth2TokenStorage()

    private let tokenKey = "BearerToken"

    var token: String? {
        get {
            return UserDefaults.standard.string(forKey: tokenKey)
        }
        set {
            UserDefaults.standard.set(newValue, forKey: tokenKey)
        }
    }
}
