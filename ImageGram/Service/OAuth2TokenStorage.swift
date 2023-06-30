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
    private let userDefaults = UserDefaults.standard

    private init() {}

    var token: String? {
        get {
            return userDefaults.string(forKey: tokenKey)
        }
        set {
            userDefaults.set(newValue, forKey: tokenKey)
        }
    }
}
