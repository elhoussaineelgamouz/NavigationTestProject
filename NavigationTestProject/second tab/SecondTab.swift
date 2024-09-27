//
//  SecondTab.swift
//  NavigationTestProject
//
//  Created by El houssaine El GAMOUZ on 24/9/2024.
//

import SwiftUI

struct SecondTab: View {
    @State private var isPresentingOverlay: Bool = false
    @EnvironmentObject var stateManger: StateManger
    var body: some View {
        VStack {
            Text("Second Tab View")
            Button(action: {
                isPresentingOverlay.toggle()
            }, label: {
                Text("Show Overlay")
            })
            .fullScreenCover(isPresented: $isPresentingOverlay, content: {
                VStack {
                    Text("this is taking all the space")
                    Button(action: {
                        isPresentingOverlay =  false
                    }, label: {
                        Text("Done")
                    })
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.yellow)
            })

            Button(action: {
                withAnimation {
                    stateManger.selection = 1
                    stateManger.firstDetailIsShown = true
                }
            }, label: {
                Text("Go to first tab detail")
            })
        }
    }
}

#Preview {
    SecondTab()
        .environmentObject(StateManger())
}
