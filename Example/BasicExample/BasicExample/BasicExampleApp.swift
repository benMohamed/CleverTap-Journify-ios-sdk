//
//  BasicExampleApp.swift
//  BasicExample
//
//  Created by Brandon Sneed on 2/23/22.
//

import SwiftUI

@main
struct BasicExampleApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
