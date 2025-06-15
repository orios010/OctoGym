//
//  LoginCredentials.swift
//  OctoGym
//
//  Created by Olivia on 6/15/25.
//

import Foundation

struct LoginCredentials {
    let username: String
    let password: String
    
    var isValid: Bool {
        return !username.isEmpty && !password.isEmpty
    }
}
