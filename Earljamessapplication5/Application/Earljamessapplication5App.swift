//
//  Earljamessapplication5App.swift
//  Earljamessapplication5

import SwiftUI

@main
struct Earljamessapplication5App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
