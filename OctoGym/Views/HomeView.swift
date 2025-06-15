//
//  HomeView.swift
//  OctoGym
//
//  Created by Olivia on 6/15/25.
//
import SwiftUI

struct HomeView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        VStack(spacing: 20) {
            // Header with user info
            HStack {
                VStack(alignment: .leading) {
                    Text("Welcome back!")
                        .font(.custom("Poppins-Regular", size: 16))
                        .foregroundColor(.gray)
                    
                    if let user = authViewModel.currentUser {
                        Text(user.username)
                            .font(.custom("Poppins-Bold", size: 24))
                    }
                }
                
                Spacer()
                
                // Logout button
                Button(action: {
//                    authViewModel.logout()
                }) {
                    Image(systemName: "rectangle.portrait.and.arrow.right")
                        .foregroundColor(.gray)
                        .font(.title2)
                }
            }
            .padding()
            
            Spacer()
            
            // Main content
            VStack {
                Text("🏋️‍♂️")
                    .font(.system(size: 80))
                
                Text("Your fitness journey starts here!")
                    .font(.custom("Poppins-Medium", size: 20))
                    .multilineTextAlignment(.center)
                    .padding()
                
                Text("Home page features coming soon...")
                    .font(.custom("Poppins-Regular", size: 16))
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemBackground))
    }
}

#Preview {
    HomeView()
        .environmentObject(AuthViewModel())
}
