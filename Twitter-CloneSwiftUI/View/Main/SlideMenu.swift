//
//  SlideMenu.swift
//  Twitter-CloneSwiftUI
//
//  Created by Aditya Ramadhan on 11/11/22.
//

import SwiftUI

struct SlideMenu: View {
    
    @State var show = false
    
    var menuButtons = ["Profile", "Lists","Topics", "Bookmarks", "Moments"]
    
    var edges = UIApplication.shared.windows.first?.safeAreaInsets
    
    @State var width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack{
            
            HStack(spacing: 0, content: {
                
                VStack(alignment: .leading){
                    
                    Image("logo")
                        .resizable()
                        .frame(width: 60,height: 60)
                        .clipShape(Circle())
                    
                    HStack(alignment: .top,spacing: 12){
                        
                        VStack(alignment:.leading, spacing: 12){
                            Text("Cem")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            
                            Text("@Forzahorizon")
                                .foregroundColor(.gray)
                            
                            HStack(spacing:20, content: {
                                FollowView(count: 9, title: "Following")
                                
                                FollowView(count: 120, title: "Following")
                            })
                            .padding(.top , 5)
                            Divider()
                                .padding(.top,10)
                            
                        }
                        Spacer(minLength: 0)
                        Button(action: {
                            withAnimation {
                                self.show.toggle()
                            }
                        }, label: {
                            Image(systemName: show ? "chevron.down" : "chevron.up")
                                .foregroundColor(Color("bg"))
                        })
                    }
                    VStack(alignment: .leading, content: {
                        ForEach(menuButtons, id:\.self) {item in
                            MenuButton(title: item)
                        }
                        Divider()
                            
                        
                        Button(action: {
                            
                        }, label: {
                            MenuButton(title: "Twitter Ads")
                        })
                        Divider()
                        Button(action: {
                            
                        }, label: {
                            Text("Settings and privacy")
                                .foregroundColor(.black)
                        })
                        .padding(.top,20)
                        Button(action: {
                            
                        }, label: {
                            Text("Help Center")
                                .foregroundColor(.black)
                        })
                        Spacer(minLength: 0)
                        Divider()
                            .padding(.bottom)
                        HStack{
                            Button(action: {
                                
                            }, label: {
                                Image("help")
                                    .resizable()
                                    .renderingMode(.template)
                                    .frame(width: 24, height: 24)
                                    .foregroundColor(Color("bg"))
                            })
                            Spacer(minLength: 0)
                            
                            Button(action: {
                                
                            }, label: {
                                Image("barcode")
                                    .resizable()
                                    .renderingMode(.template)
                                    .foregroundColor(Color("bg"))
                                    .frame(width: 24, height: 24)
                            })
                        }
                    })
                    .opacity(show ? 1 : 0)
                    .frame(height: show ? nil: 0)
                    
                    VStack(alignment: .leading, content: {
                        Button(action: {}, label: {
                            Text("Create New Account")
                                .foregroundColor(Color("bg"))
                        })
                        
                        Button(action: {}, label: {
                            Text("Add existing account")
                                .foregroundColor(Color("bg"))
                        })
                        
                        Spacer(minLength: 0)
                    })
                    .opacity(!show ? 1 : 0)
                    .frame(height: !show ? nil: 0)
                }
                .padding(.horizontal,20)
                .padding(.top, edges!.top == 0 ? 15 : edges?.top)
                .padding(.bottom, edges!.bottom == 0 ? 15 : edges?.bottom)
                .frame(width: width - width*(0.2))
                .background(Color.white)
                .ignoresSafeArea(.all, edges: .vertical)
                
                Spacer(minLength: 0)
                
            })
        }
    }
}

struct SlideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SlideMenu()
    }
}
