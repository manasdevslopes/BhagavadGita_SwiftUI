//
//  BGLogger.swift
//  BhagavadGita
//
//  Created by MANAS VIJAYWARGIYA on 10/03/23.
//

import Foundation
import SwiftyBeaver

protocol BGLoggerProtocol {
  func verbose(_ message: String, _ file: String, _ function: String, _ line: Int)
  func debug(_ message: String, _ file: String, _ function: String, _ line: Int)
  func info(_ message: String, _ file: String, _ function: String, _ line: Int)
  func warning(_ message: String, _ file: String, _ function: String, _ line: Int)
  func error(_ message: String, _ file: String, _ function: String, _ line: Int)
}

extension BGLoggerProtocol {
  func verbose(_ message: String, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
    verbose(message, file, function, line)
  }

  func debug(_ message: String, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
    debug(message, file, function, line)
  }

  func info(_ message: String, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
    info(message, file, function, line)
  }

  func warning(_ message: String, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
    warning(message, file, function, line)
  }

  func error(_ message: String, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
    error(message, file, function, line)
  }
}

final class BGLogger: BGLoggerProtocol {
  static let instance = BGLogger()

  private let log = SwiftyBeaver.self
  private let console = ConsoleDestination()

  private init() {
    log.addDestination(console)
  }

  func verbose(_ message: String, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
    log.verbose(message, file: file, function: function, line: line)
  }

  func debug(_ message: String, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
    log.debug(message, file: file, function: function, line: line)
  }

  func info(_ message: String, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
    log.info(message, file: file, function: function, line: line)
  }

  func warning(_ message: String, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
    log.warning(message, file: file, function: function, line: line)
  }

  func error(_ message: String, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
    log.error(message, file: file, function: function, line: line)
  }
}
