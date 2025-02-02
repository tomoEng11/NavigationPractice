//
//  ActivityView.swift
//  NavigationPractice
//  
//  Created by tomo on 2025/01/31
//  
//

import SwiftUI

struct ActivityView: View {
    @Environment(AppRouter.self) var router
    
    var body: some View {
        VStack {
            Text("ActivityView")

            CustomButton("Root") {
                router.popToRoot()
            }

            CustomButton("Home") {
                router.popUntil(.home)
            }
        }

    }
}

#Preview {
    ActivityView()
        .environment(AppRouter())
}
