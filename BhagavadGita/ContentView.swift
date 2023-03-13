//
//  ContentView.swift
//  BhagavadGita
//
//  Created by MANAS VIJAYWARGIYA on 10/03/23.
//

import BGUtility
import SwiftUI

struct ContentView: View {
    init() {
        let number = Int("12")!

        let arr = [1, 2]
        if arr.isEmpty {}
    }

    @State private var count = "1"

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(L10n.contentViewBhagavadGitaChapter(count))
            Text(L10n.contentViewBhagavadGitaTitle)
            Text("ContentView_bhagavad_gita_chapter\(count)")
        }
        .onTapGesture {
            newLog()
        }
        .padding()
        .onAppear {
            let arr = [1, 2, 3, 4, 5]
            BGLogger.instance.verbose("not so important") // prio 1, VERBOSE in silver
            BGLogger.instance.debug("something to debug") // prio 2, DEBUG in green
            BGLogger.instance.info("a nice information----->\(String(describing: arr[safeIndex: 4]))") // prio 3, INFO in blue
            BGLogger.instance.warning("oh no, that won’t be good") // prio 4, WARNING in yellow
            BGLogger.instance.error("ouch, an error did occur!") // prio 5, ERROR in red
        }
    }

    func newLog1() {}

    func newLog() {
        BGLogger.instance.verbose("*********NEWLOGGER********")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
