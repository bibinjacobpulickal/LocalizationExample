//
//  Language.swift
//  LocalisationExample
//
//  Created by Bibin Jacob Pulickal on 12/03/20.
//  Copyright © 2020 bibinjacobpulickal. All rights reserved.
//

import Foundation

enum Language: String, CaseIterable {
    case english, german

    var code: String {
        switch self {
        case .english: return "en"
        case .german: return "de"
        }
    }

    static var selected: Language {
        set {
            UserDefaults.standard.set([newValue.code], forKey: "AppleLanguages")
            UserDefaults.standard.set(newValue.rawValue, forKey: "language")
        }
        get {
            return Language(rawValue: UserDefaults.standard.string(forKey: "language") ?? "") ?? .english
        }
    }
}
