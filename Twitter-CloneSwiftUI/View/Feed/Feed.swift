//
//  Feed.swift
//  Twitter-CloneSwiftUI
//
//  Created by Aditya Ramadhan on 10/11/22.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        ScrollView(.vertical,showsIndicators: false, content: {
            VStack(spacing: 18) {
                
                TweetCellView(tweet: "Hey Tim, aro those regular glasses?", tweetImage: "post")
                Divider()
                ForEach(1...20, id: \.self) { _ in
                    TweetCellView(tweet: sampleText)
                    Divider()
                }
            }
            .padding(.top)
            .padding(.horizontal)
        })
        
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}
