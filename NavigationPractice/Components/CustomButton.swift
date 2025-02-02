//
//  CustomButton.swift
//  NavigationPractice
//  
//  Created by tomo on 2025/02/01
//  
//

import SwiftUI


struct CustomButton: View {
    let title: String
    let action: () -> Void

    init(_ title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }

    var body: some View {
        Button(action: action) {
            Text(title)
                .padding()
                .frame(width: 200, height: 50)
                .foregroundStyle(.white)
                .fontWeight(.bold)
                .background(Color.orange, in: .rect(cornerRadius: 10))
        }
    }
}

#Preview {
    CustomButton("ボタン") {
        print("test")
    }
}
