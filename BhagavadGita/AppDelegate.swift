//
//  AppDelegate.swift
//  BhagavadGita
//
//  Created by MANAS VIJAYWARGIYA on 13/03/23.
//

import Firebase
import SwiftUI

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
