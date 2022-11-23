//
//  CreateTweetViewModel.swift
//  Twitter-CloneSwiftUI
//
//  Created by Aditya Ramadhan on 20/11/22.
//

import SwiftUI

class CreateTweetViewModel: ObservableObject {
    func uploadPost(text: String) {
        
        guard let user = AuthViewModel.shared.currentUser else {return}
        RequestServices.requestDomain = "http://localhost:3000/tweets"
        
        RequestServices.postTweet(text: text, user: user.name, username: user.username, userId: user.id) { result in
            print(result)
        }
        
    }
}
