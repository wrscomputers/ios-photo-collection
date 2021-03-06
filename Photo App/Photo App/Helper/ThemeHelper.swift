//
//  ThemeHelper.swift
//  Photo App
//
//  Created by Jason Hoover on 5/21/20.
//  Copyright © 2020 Jason Hoover. All rights reserved.
//

import Foundation

class ThemeHelper {
    let themePreferenceKey: String
    
    func setThemePreferenceToDark() {
        UserDefaults.standard.set("Dark", forKey: themePreferenceKey)
    }
    
    func setThemePreferenceToYourColorHere() {
        UserDefaults.standard.set("Blue", forKey: themePreferenceKey)
    }
    
    var themePreference: String? {
        return UserDefaults.standard.string(forKey: themePreferenceKey)
    }
    
    init () {
        if themePreference == nil {
            setThemePreferenceToYourColorHere()
        }
    }
    
}
