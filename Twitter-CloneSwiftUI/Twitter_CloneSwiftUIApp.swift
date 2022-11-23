//
//  Twitter_CloneSwiftUIApp.swift
//  Twitter-CloneSwiftUI
//
//  Created by Aditya Ramadhan on 10/11/22.
//

import SwiftUI

@main
struct Twitter_CloneSwiftUIApp: App {
    
    init() {
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        UINavigationBar.appearance().shadowImage = UIImage()
    }
    
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel.shared)
        }
    }
}
