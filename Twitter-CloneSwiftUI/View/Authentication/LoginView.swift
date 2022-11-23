//
//  LoginView.swift
//  Twitter-CloneSwiftUI
//
//  Created by Aditya Ramadhan on 12/11/22.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    @State var email = ""
    @State var password = ""
    @State var emailDone = false
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        
        if !emailDone {
            VStack {
                VStack {
                    ZStack {
                        HStack {
                            Button(action: {
                                presentationMode.wrappedValue.dismiss()
                            }, label: {
                                Text("Cancel")
                                    .foregroundColor(.blue)
                            })
                            .padding(.leading,15)
                            Spacer()
                        }
                        Image("Twitter")
                            .resizable()
                            .scaledToFill()
                            .padding(.trailing)
                            .frame(width: 20, height: 20)
                    }
                    
                    Text("To get started enter you email, phone number, or username")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                
                    CustomAuthTextField(placeholder: "Phone, email or username", text: $email)
                        .foregroundColor(.black)
                }
                Spacer()
                
           
                
                VStack{
                    Button(action: {
                        if !email.isEmpty {
                            self.emailDone.toggle()
                        }
                    }, label: {
                        Capsule()
                            .frame(width: 360, height: 40, alignment: .center)
                            .foregroundColor(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255))
                            .overlay(Text("Next")
                                .foregroundColor(.white))
                    })
                    .padding(.bottom, 4)
                    
                    Text("Forgot Password?")
                        .foregroundColor(.blue)
                }
            }
        }
        else {
            VStack {
                VStack {
                    ZStack {
                        HStack {
                            Button(action: {
                                presentationMode.wrappedValue.dismiss()
                            }, label: {
                                Text("Cancel")
                                    .foregroundColor(.blue)
                            })
                            .padding(.leading,15)
                            Spacer()
                        }
                        Image("Twitter")
                            .resizable()
                            .scaledToFill()
                            .padding(.trailing)
                            .frame(width: 20, height: 20)
                    }
                    
                    Text("Enter you password")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                
                    SecureAuthTextField(placeholder: "Password", text: $password)
                        .foregroundColor(.black)
                }
                Spacer()
                
           
                
                VStack{
                    Button(action: {
                        print("something")
                        print(email)
                        print(password)
                        self.viewModel.login(email: email, password: password)
                    }, label: {
                        Capsule()
                            .frame(width: 360, height: 40, alignment: .center)
                            .foregroundColor(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255))
                            .overlay(Text("Login")
                                .foregroundColor(.white))
                    })
                    .padding(.bottom, 4)
                    
                    Text("Forgot Password?")
                        .foregroundColor(.blue)
                }
            }
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
