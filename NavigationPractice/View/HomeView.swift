//
//  HomeView.swift
//  NavigationPractice
//  
//  Created by tomo on 2025/01/31
//  
//

import SwiftUI

struct HomeView: View {
    @Environment(AppRouter.self) var router

    var body: some View {
        VStack {
            CustomButton("Profile") {
                router.push(.profile(User(id: 1, name: "tomo")))
            }
        }
    }
}

#Preview {
    HomeView()
        .environment(AppRouter())
}
