//
//  EmojiListView.swift
//  NavigationTestProject
//
//  Created by El houssaine El GAMOUZ on 27/9/2024.
//

import SwiftUI

struct EmojiListView: View {

    let items: [String] = ["Test1","Test2","Test3","Test4"]
    @Binding var selectedEmoji: String?

    var body: some View {
        List(items, id: \.self) { item in
            NavigationLink(
                destination: EmojiView(item: item),
                tag: item,
                selection: $selectedEmoji,
                label: {Text(item)})
        }
        .navigationTitle("First detail view")
    }
}

#Preview {
    EmojiListView(selectedEmoji: .constant(nil))
}
