//
//  Feed.swift
//  Twitter-CloneSwiftUI
//
//  Created by Aditya Ramadhan on 10/11/22.
//

import SwiftUI

struct Feed: View {
    
    
    @ObservedObject var viewModel = FeedViewModel()
    let user: User
    
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false, content: {
            LazyVStack(spacing: 18) {
                
                ForEach(viewModel.tweets) { tweet in
                    
                    TweetCellView(viewModel: TweetCellViewModel(tweet: tweet))
                    Divider()
                }
            }
            .padding(.top)
            .padding(.horizontal)
        })
        
    }
}

