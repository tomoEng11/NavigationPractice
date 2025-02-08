//
//  ContentView.swift
//  NavigationPractice
//  
//  Created by tomo on 2025/01/31
//  
//

import SwiftUI

struct RootView: View {
    @Environment(AppRouter.self) var router

    var body: some View {
        @Bindable var router = router

        NavigationStack(path: $router.path) {
            VStack(spacing: 40) {
                CustomButton("Home") {
                    router.push(.home)
                }

                CustomButton("Settings") {
                    router.push(.settings)
                }
            }
            .padding()
            .navigationDestination(for: Destination.self) { destination in
                destination.makeView()
            }
        }
        .environment(router)
    }
}

#Preview {
    RootView()
        .environment(AppRouter())
}
