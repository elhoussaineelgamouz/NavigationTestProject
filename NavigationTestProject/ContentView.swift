//
//  ContentView.swift
//  NavigationTestProject
//
//  Created by El houssaine El GAMOUZ on 24/9/2024.
//

import SwiftUI

struct ContentView: View {
    //@State private var selection: Int = 2
    @EnvironmentObject var stateManager: StateManger
    var body: some View {
        if UIDevice.current.userInterfaceIdiom == .phone {
            TabView(selection: $stateManager.selection) {
                FirstTab()
                    .tabItem { Text("First") }
                    .tag(1)
                SecondTab()
                    .tabItem { Text("Second") }
                    .tag(2)
            }
        } else {
            NavigationView {
                List {
                    NavigationLink(
                        "First",
                        destination: FirstBodyView(),
                        tag: 1,
                        selection: $stateManager.selectedListItem)

                    NavigationLink(
                        "second",
                        destination: SecondTab(),
                        tag: 2,
                        selection: $stateManager.selectedListItem)
                }
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(StateManger())
}
