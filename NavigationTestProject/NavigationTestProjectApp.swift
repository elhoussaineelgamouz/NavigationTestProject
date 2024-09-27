//
//  NavigationTestProjectApp.swift
//  NavigationTestProject
//
//  Created by El houssaine El GAMOUZ on 24/9/2024.
//

import SwiftUI

@main
struct NavigationTestProjectApp: App {
    @StateObject var stateManager = StateManger()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(stateManager)
        }
    }
}
