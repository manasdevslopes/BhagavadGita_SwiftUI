//
//  AnalyticsManager.swift
//  BhagavadGita
//
//  Created by MANAS VIJAYWARGIYA on 13/03/23.
//

import Foundation

protocol EventProtocol {
    var name: String { get }
    var params: [String: Any] { get }
}

// struct Event: EventProtocol {
//    var name: String
//    var params: [String: Any] = [:]
// }

enum AnalyticsEvent {
    case clickButtonEvent
    case chapterTapped(name: String)
}

extension AnalyticsEvent: EventProtocol {
    var name: String {
        switch self {
        case .clickButtonEvent:
            return "click_button_event"
        case .chapterTapped:
            return "chapter_tapped"
        }
    }

    var params: [String: Any] {
        switch self {
        case .clickButtonEvent:
            return [:]
        case let .chapterTapped(name):
            return ["name": name]
        }
    }
}

protocol AnalyticsEventLoggerProtocol {
    func initialize()
    func logEvent(event: EventProtocol)
}

protocol AnalyticsManagerProtocol {
    func logEvent(event: EventProtocol)
}

// final class AnalyticsManager: AnalyticsManagerProtocol {
//    private var logger: AnalyticsEventLoggerProtocol
//
//    init(logger: AnalyticsEventLoggerProtocol) {
//        self.logger = logger
//    }
//
//    func logEvent(event: EventProtocol) {
//        logger.logEvent(event: event)
//    }
// }
