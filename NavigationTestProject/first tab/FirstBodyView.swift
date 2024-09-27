//
//  FirstBodyView.swift
//  NavigationTestProject
//
//  Created by El houssaine El GAMOUZ on 27/9/2024.
//

import SwiftUI

struct FirstBodyView: View {
    @EnvironmentObject var stateManager: StateManger
    var body: some View {
        VStack {
            Text("First Tab View")
            NavigationLink(
                destination: FirstDetailView(),
                isActive: $stateManager.firstDetailIsShown,
                label: {
                    Text("Go to detail")
                })
        }
    }
}

#Preview {
    FirstBodyView()
        .environmentObject(StateManger())
}
