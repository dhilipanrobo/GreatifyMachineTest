//
//  Login Page View.swift
//  greatify machine test
//
//  Created by Apple on 16/07/24.
//

import SwiftUI

struct Login_Page_View: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isSecure: Bool = true
    @State private var isNavigation: Bool = false
    var body: some View {
        NavigationView{
            ZStack {
                // Background Image
                Image("bg effect")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    HStack {
                        Image("logo")
                            .frame(width: 72.5, height: 72.5)
                        VStack(alignment: .leading) {
                            Text("Greatify")
                                .semiBoldStyle(color: .white, size: 33.81)
                            Text("ExamX Platform")
                                .semiBoldStyle(color: .white, size: 23.04)
                        }
                    }
                    Text("Revolutionise your academic experience with Greatify")
                        .semiBoldStyle(color: .white, size: 39.81)
                        .frame(width: 570)
                        .multilineTextAlignment(.center)
                        .padding(.top, 24)
                    ZStack {
                        Image("Union")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 504, height: 560)
                            .padding(.horizontal, 100)
                            .clipped()
                            .overlay {
                                Image("avather")
                                    .resizable()
                                    .frame(width: 120, height: 120)
                                    .scaledToFit()
                                    .padding(.bottom, 430)
                                VStack {
                                    Text("LOGIN")
                                        .boldStyle(color: .primaryGreen, size: 11.11)
                                        .frame(width: 503)
                                        .multilineTextAlignment(.center)
                                    Text("Welcome Back Dhruv")
                                        .semiBoldStyle(color: .primaryChalkGreen, size: 19.02)
                                        .frame(width: 503)
                                        .multilineTextAlignment(.center)
                                    HStack {
                                        Image("amityLogo")
                                            .frame(width: 36, height: 36)
                                        VStack(alignment: .leading, spacing: 8) {
                                            Text("Amity University")
                                                .mediumStyle(color: .primaryChalkGreen, size: 16.00)
                                            Text("HCCOLLEGE0010")
                                                .semiBoldStyle(color: .primaryGreen, size: 12.00)
                                        }
                                    }
                                    .padding(.top, 8)
                                    VStack(alignment: .leading) {
                                        Text("USER ID")
                                            .boldStyle(color: .neutral500, size: 11.11)
                                            .padding(.leading, 16)
                                        TextField("Enter your email", text: $email)
                                            .padding()
                                            .cornerRadius(10)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .stroke(Color.neutral200, lineWidth: 1)
                                            )
                                        Text("PASSWORD")
                                            .boldStyle(color: .neutral500, size: 11.11)
                                            .padding(.leading, 16)
                                            .padding(.top, 18)
                                        HStack {
                                            if isSecure {
                                                SecureField("Enter your password", text: $password)
                                                    .padding()
                                                    .cornerRadius(10)
                                            } else {
                                                TextField("Enter your password", text: $password)
                                                    .padding()
                                                    .cornerRadius(10)
                                            }
                                            Button(action: {
                                                isSecure.toggle()
                                            }) {
                                                Image(systemName: isSecure ? "eye.slash" : "eye")
                                                    .foregroundColor(.black)
                                            }
                                            .padding(.trailing, 8)
                                        }
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color.neutral200, lineWidth: 1)
                                        )
                                        HStack {
                                            Spacer()
                                            Button(action: {
                                                print("Forgot Password tapped")
                                            }) {
                                                Text("Forgot Password?")
                                                    .mediumStyle(color: .primaryGreen, size: 13.33)
                                                    .foregroundColor(.primaryGreen)
                                                    .padding(.top, 8)
                                                    .padding(.leading, 16)
                                            }
                                            .padding(.top, 8)
                                        }
                                        
                                        Button(action: {
                                            isNavigation = true
                                        }) {
                                            Text("Login")
                                                .semiBoldStyle(color: .white, size: 16)
                                                .frame(maxWidth: .infinity, maxHeight: 30)
                                                .foregroundColor(.white)
                                                .padding()
                                                .background(Color.primaryGreen)
                                                .cornerRadius(10)
                                        }
                                        .padding(.top, 8)
                                    }
                                    .padding(.horizontal, 60)
                                    .padding(.top, 8)
                                }
                                .padding(.top, 120)
                            }
                    }
                }
                .padding(.top, 24)
                NavigationLink(
                    destination: DashboardRootView(),
                    isActive: $isNavigation,
                    label: { EmptyView()}
                )
            }
        } .navigationViewStyle(StackNavigationViewStyle())
    }
}
struct Login_Page_View_Previews: PreviewProvider {
    static var previews: some View {
        Login_Page_View()
    }
}

