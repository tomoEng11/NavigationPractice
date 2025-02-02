//
//  User.swift
//  NavigationPractice
//  
//  Created by tomo on 2025/01/31
//  
//

import Foundation

struct User: Hashable {
    let id: Int
    var name: String
    var data: Data?

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}


