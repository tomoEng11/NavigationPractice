//
//  AppRouter.swift
//  NavigationPractice
//  
//  Created by tomo on 2025/01/31
//  
//

import SwiftUI

enum Destination: Hashable {
    case home
    case activity
    case profile(User)
    case settings

    @ViewBuilder
    func makeView() -> some View {
        switch self {
        case .home: HomeView()
        case .activity: ActivityView()
        case .profile(let user): ProfileView(user: user)
        case .settings: SettingsView()
        }
    }
}


@MainActor
@Observable
final class AppRouter {
    var path: [Destination] = []

    func push(_ destination: Destination) {
        path.append(destination)
    }

    // 引数に指定したdestinationをRootViewに遷移
    func pushAndRemoveUntil(_ destination: Destination) {
        path.removeAll()
        path.append(destination)
    }


    // 引数に指定したdestinationを現在のViewと置き換え、遷移
    func pushReplacement(_ destination: Destination) {
        if !path.isEmpty {
            path.removeLast()
        }
        path.append(destination)
    }


    func pop() {
        if !path.isEmpty {
            path.removeLast()
        }
    }

    func popToRoot() {
        path.removeAll()
    }

    // 指定したViewまで戻る
    func popUntil(_ target: Destination) {
        while path.last != target && !path.isEmpty {
            path.removeLast()
        }
    }
}


