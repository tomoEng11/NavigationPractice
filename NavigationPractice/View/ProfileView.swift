//
//  ProfileView.swift
//  NavigationPractice
//  
//  Created by tomo on 2025/01/31
//  
//

import SwiftUI

struct ProfileView: View {
    @Environment(AppRouter.self) var router
    let user: User
    
    var body: some View {
        VStack {
            Text("ユーザー名: \(user.name)")

            CustomButton("Activity") {
                router.push(.activity)
            }

        }
    }
}

#Preview {
    ProfileView(user: User(id: 1, name: "tomo"))
        .environment(AppRouter())
}
