//
//  FirstTab.swift
//  NavigationTestProject
//
//  Created by El houssaine El GAMOUZ on 24/9/2024.
//

import SwiftUI

struct FirstTab: View {
    var body: some View {
        NavigationView {
            FirstBodyView()
        }
    }
}

#Preview {
    FirstTab()
        .environmentObject(StateManger())
}
