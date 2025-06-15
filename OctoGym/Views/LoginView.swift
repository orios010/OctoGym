//
//  LoginView.swift
//  OctoGym
//
//  Created by Olivia on 6/15/25.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        GeometryReader { geometry in
                   VStack(spacing: 0) {
                       // Top gradient section with logo
                       VStack {
                           Spacer()
                           
                           // Logo
                           Image("OG_Logo")
                               .resizable()
                               .scaledToFit()
                           
                           Spacer()
                       }
                       .frame(height: geometry.size.height * 0.45)
                       .background(
                           LinearGradient(
                               gradient: Gradient(colors: [
                                   Color(red: 0.7, green: 0.6, blue: 0.9),
                                   Color(red: 0.6, green: 0.4, blue: 0.8)
                               ]),
                               startPoint: .top,
                               endPoint: .bottom
                           )
                       )
                       
                       // Login form section
                       VStack(spacing: 24) {
                           VStack(alignment: .leading, spacing: 8) {
                               Text("Username or email")
                                   .foregroundColor(.white)
                                   .font(.custom("Poppins-Regular", size: 16))
                               
                               TextField("", text: $username)
                                   .textInputAutocapitalization(.never)
                                   .keyboardType(.emailAddress)
                                   .padding(.horizontal, 16)
                                   .padding(.vertical, 12)
                                   .background(Color.white)
                                   .cornerRadius(15)
                                   .font(.custom("Poppins-Regular", size: 16))
                           }
                           
                           VStack(alignment: .leading, spacing: 8) {
                               Text("Password")
                                   .foregroundColor(.white)
                                   .font(.custom("Poppins-Regular", size: 16))
                               
                               SecureField("", text: $password)
                                   .padding(.horizontal, 16)
                                   .padding(.vertical, 12)
                                   .background(Color.white)
                                   .cornerRadius(15)
                                   .font(.custom("Poppins-Regular", size: 16))
                           }
                           
                           HStack {
                               Spacer()
                               Button("Forgot Password?") {
                                   // Handle forgot password
                               }
                               .foregroundColor(.white)
                               .font(.custom("Poppins-Regular", size: 14))
                           }
                           
                           Spacer()
                           
                           // Login button
                           Button(action: {
                               // Handle login
                           }) {
                               Text("Log In")
                                   .font(.custom("Poppins-Medium", size: 18))
                                   .foregroundColor(Color(red: 0.6, green: 0.4, blue: 0.8))
                                   .frame(maxWidth: .infinity)
                                   .frame(height: 50)
                                   .background(
                                       RoundedRectangle(cornerRadius: 25)
                                           .fill(Color.white.opacity(0.9))
                                   )
                                   .overlay(
                                      RoundedRectangle(cornerRadius: 100)
                                          .stroke(Color.white, lineWidth: 1)
                                  )
                                  .cornerRadius(100)
                                  .shadow(color: Color.black.opacity(0.25), radius: 4, x: 0, y: 2)
                           }
                           .padding(.bottom, 32)
                           
                           // Sign up link
                           HStack {
                               Text("Don't have an account?")
                                   .foregroundColor(.white.opacity(0.8))
                                   .font(.custom("Poppins-Regular", size: 16))
                               Button("Sign Up") {
                                   // Handle sign up
                               }
                               .foregroundColor(.yellow)
                               .font(.custom("Poppins-Medium", size: 16))
                           }
                           
                           Spacer()
                       }
                       .padding(.horizontal, 32)
                       .padding(.top, 40)
                       .frame(height: geometry.size.height * 0.55)
                       .background(Color(red: 0.6, green: 0.4, blue: 0.8))
                   }
               }
               .ignoresSafeArea()
           }
}

#Preview {
    ContentView()
}
