//
//  LocalizationExtensions.swift
//  LocalisationExample
//
//  Created by Bibin Jacob Pulickal on 12/03/20.
//  Copyright © 2020 bibinjacobpulickal. All rights reserved.
//

import Foundation

func NSLocalizedString(_ key: String, tableName: String? = nil, bundle: Bundle = Bundle.main, value: String = "", forLanguage language: Language = Language.selected) -> String {
    var bundle = bundle
    if let path = Bundle.main.path(forResource: language.code, ofType: "lproj"),
        let newBundle = Bundle(path: path) {
        bundle = newBundle
    }
    return NSLocalizedString(key, tableName: tableName, bundle: bundle, value: value, comment: "")
}

extension String {
    var localized: String { NSLocalizedString(self) }
}
