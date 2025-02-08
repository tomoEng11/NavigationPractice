//
//  NavigationPracticeApp.swift
//  NavigationPractice
//  
//  Created by tomo on 2025/01/31
//  
//

import SwiftUI

@main
struct NavigationPracticeApp: App {
    @State private var router: AppRouter = .init()

    var body: some Scene {
        WindowGroup {
            RootView()
                .environment(router)
        }
    }
}
