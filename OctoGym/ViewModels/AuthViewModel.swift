//
//  AuthViewModel.swift
//  OctoGym
//
//  Created by Olivia on 6/15/25.
//

import SwiftUI
import Combine

class AuthViewModel: ObservableObject {
    @Published var isLoggedIn = false
    @Published var currentUser: User?
    @Published var errorMessage: String?
    @Published var isLoading = false
    
    // ... rest of the ViewModel code
}
