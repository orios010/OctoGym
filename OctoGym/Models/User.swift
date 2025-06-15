//
//  User.swift
//  OctoGym
//
//  Created by Olivia on 6/15/25.
//
import Foundation

struct User {
    let id: UUID
    let username: String
    let email: String
    
    init(username: String, email: String) {
        self.id = UUID()
        self.username = username
        self.email = email
    }
}
