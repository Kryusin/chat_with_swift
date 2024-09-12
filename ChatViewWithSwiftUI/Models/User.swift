//
//  User.swift
//  ChatViewWithSwiftUI
//
//  Created by IT on 2024/05/22.
//

import Foundation

struct User: Decodable {
    let id: String
    let name: String
    let image: String
    
    // block内で1行で済む場合はreturnはいらない
    var isCurrentUser: Bool {
        self.id == User.currentUser.id
    }
    
    static var currentUser: User {
        User(id: "1", name: "カーキ", image: "user01")
    }
}
