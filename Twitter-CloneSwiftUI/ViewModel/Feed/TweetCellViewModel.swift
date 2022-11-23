//
//  TweetCellViewModel.swift
//  Twitter-CloneSwiftUI
//
//  Created by Aditya Ramadhan on 23/11/22.
//

import SwiftUI

class TweetCellViewModel: ObservableObject {
    
    @Published var tweet: Tweet
    
    init (tweet: Tweet){
        self.tweet = tweet
    }
    
    
    
}
