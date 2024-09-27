//
//  FirstDetailView.swift
//  NavigationTestProject
//
//  Created by El houssaine El GAMOUZ on 24/9/2024.
//

import SwiftUI

struct FirstDetailView: View {
    
    @EnvironmentObject var stateManger: StateManger

    var body: some View {
        EmojiListView(selectedEmoji: $stateManger.selectitem)
    }
}

#Preview {
    FirstDetailView()
        .environmentObject(StateManger())
}
