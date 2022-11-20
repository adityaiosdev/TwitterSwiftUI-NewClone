//
//  Home.swift
//  Twitter-CloneSwiftUI
//
//  Created by Aditya Ramadhan on 10/11/22.
//

import SwiftUI

struct Home: View {
    
    @State var selectedIndex = 0
    @State var showCreateTweet = false
    @State var text = ""
    
    var body: some View {
        VStack {
            ZStack {
                
                TabView{
                    Feed()
                        .navigationBarHidden(true)
                        .tabItem {
                                Image("Home")
                                    .renderingMode(.template)
                        }
                        .tag(0)
                    SearchView()
                        .navigationBarHidden(true)
                        .tabItem{
                                Image("Search")
                                    .renderingMode(.template)
                                    .foregroundColor(Color("bg"))
                        }
                        .tag(1)
                    NotificationsView()
                        .navigationBarHidden(true)
                        .tabItem{
                                Image("Notifications")
                                    .renderingMode(.template)
                                    .foregroundColor(Color("bg"))
                        }
                        .tag(2)
                    MessagesView()
                        .navigationBarHidden(true)
                        .tabItem{
                                Image("Messages")
                                    .renderingMode(.template)
                                    .foregroundColor(Color("bg"))
                        }
                        .tag(3)
                    
                }
                VStack {
                    Spacer()
                    HStack{
                        Spacer()
                        Button (action:
                        {
                            self.showCreateTweet.toggle()
                        }, label: {
                            Image("tweet").renderingMode(.template).resizable().frame(width: 20, height: 20)
                                .padding()
                                .background(Color("bg"))
                                .foregroundColor(.white)
                                .clipShape(Circle())
                        }
                    )}.padding()

                }.padding(.bottom,65)
            }
            .sheet(isPresented: $showCreateTweet, content: {
                CreateTweetView(text: text)
            })
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
