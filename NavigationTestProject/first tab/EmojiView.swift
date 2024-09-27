//
//  EmojiView.swift
//  NavigationTestProject
//
//  Created by El houssaine El GAMOUZ on 24/9/2024.
//

import SwiftUI

struct EmojiView: View {

    var item: String
    @EnvironmentObject var stateManger: StateManger

    var body: some View {
        VStack(spacing: 30) {
            Text(item)
                .font(.system(size: 120))
                .frame(maxWidth: .infinity,maxHeight: .infinity)
                .background(Color.pink)
            Button(action: {
                stateManger.goToFirstRootView()
            }, label: {
                Text("Go Back to root")
            })

            Button(action: {
                stateManger.selectitem = nil
               //.co presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Go one step back")
            })
        }
    }
}

#Preview {
    EmojiView(item: "First Item")
        .environmentObject(StateManger())
}
