//
//  FirebaseAnalyticsManager.swift
//  BhagavadGita
//
//  Created by MANAS VIJAYWARGIYA on 13/03/23.
//

import FirebaseAnalytics
import Foundation

final class FirebaseAnalyticsManager: AnalyticsEventLoggerProtocol {
    static let shared = FirebaseAnalyticsManager()
    private init() {}

    func initialize() {}

    func logEvent(event: EventProtocol) {
        Analytics.logEvent(event.name, parameters: event.params)
    }

    func logEvent1(name: String, params: [String: Any]) {
        print("EVENT-------->", name)
        Analytics.logEvent(name, parameters: params)
    }
}
