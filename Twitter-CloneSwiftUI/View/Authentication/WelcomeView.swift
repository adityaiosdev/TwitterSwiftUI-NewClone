//
//  WelcomeView.swift
//  Twitter-CloneSwiftUI
//
//  Created by Aditya Ramadhan on 12/11/22.
//

import SwiftUI

struct WelcomeView: View {
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    @State var width = UIScreen.main.bounds.width
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Spacer(minLength: 0)
                    Image("Twitter")
                        .resizable()
                        .scaledToFill()
                        .padding(.trailing)
                        .frame(width: 20, height: 20)
                    Spacer(minLength: 0)
                }
                Spacer()
                Text("See what's happening in the world right now")
                    .font(.system(size: 30, weight: .heavy, design: .default))
                    .frame(width: (getRect().width * 0.9), alignment: .center)
                VStack (spacing: 20){
                    Button(action: {
                        print("Sign in with google")
                    }, label: {
                        HStack{
                            Image("google")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                            Text("Continue with google")
                                .fontWeight(
                                    .bold)
                                .font(.title3)
                                .foregroundColor(.black)
                                .padding()
                        }
                        .overlay(RoundedRectangle(cornerRadius: 36)
                            .stroke(Color.black, lineWidth: 1)
                            .opacity(0.3)
                            .frame(width: 320,height: 60, alignment: .center)
                        )
                    })
                    Button(action: {
                        print("Sign in with Google")
                    }, label: {
                        HStack{
                            Image("apple")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                            Text("Continue with Apple")
                                .fontWeight(
                                    .bold)
                                .font(.title3)
                                .foregroundColor(.black)
                                .padding()
                        }
                        .overlay(RoundedRectangle(cornerRadius: 36)
                            .stroke(Color.black, lineWidth: 1)
                            .opacity(0.3)
                            .frame(width: 320,height: 60, alignment: .center)
                        )
                    })
                    
                    HStack{
                        Rectangle()
                            .foregroundColor(.gray)
                            .opacity(0.3)
                            .frame(width: getRect().width * 0.35, height: 1)
                        Text("Or")
                            .foregroundColor(.gray)
                        Rectangle()
                            .foregroundColor(.gray)
                            .opacity(0.3)
                            .frame(width: getRect().width * 0.35, height: 1)
                    }
                    NavigationLink(destination: RegisterView().navigationBarHidden(true)){
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color(red: 29/255, green: 161/255 ,blue: 242/255 ))
                            .frame(width: 320, height: 60, alignment: .center)
                            .overlay(
                                Text("Create Account")
                                    .fontWeight(.bold)
                                    .font(.title3)
                                    .foregroundColor(.white)
                                    .padding()
                            )

                    }
                }
                .padding()
               
                VStack(alignment: .leading) {
                    VStack {
                        Text("By signing up, you agree to our ") + Text("Terms").foregroundColor(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255)) + Text(",").foregroundColor(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255)) + Text(" Privacy Policy").foregroundColor(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255)) + Text(", and Cookie Use.")
                    }.padding(.bottom)
                    
                    HStack(spacing: 2) {
                        Text("Have an account already? ")
                        NavigationLink(destination: LoginView().navigationBarHidden(true)){
                            Text("Log in")
                                .foregroundColor(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255))
                        }
                        
                    }
                }
            }
        }
        .navigationBarHidden(true)
        .navigationBarTitle("")
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
