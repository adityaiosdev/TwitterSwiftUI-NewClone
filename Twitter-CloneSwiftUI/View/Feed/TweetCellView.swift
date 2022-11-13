//
//  TweetCellView.swift
//  Twitter-CloneSwiftUI
//
//  Created by Aditya Ramadhan on 10/11/22.
//

import SwiftUI

struct TweetCellView: View {
    
    var tweet: String
    var tweetImage: String?
    
    var body: some View {
        VStack{
            HStack(alignment: .top, spacing: 10, content: {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 10, content: {
                    (
                    Text("Name ")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    +
                    Text("@Username")
                        .foregroundColor(.gray)
                    )
                    Text(tweet)
                        .frame(maxHeight: 100, alignment: .top)
                    if let image = tweetImage {
                        GeometryReader { proxy in
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: proxy.frame(in: .global).width, height: 240, alignment: .center)
                                .cornerRadius(15)
                        }.frame(height: 250)
                    }
                })
                
            })
            
            //Cell Bottom
            
            HStack(spacing: 50 , content: {
                Button(action: {
                    
                }, label: {
                    Image("Comments").resizable().frame(width: 16, height: 16)
                        .foregroundColor(.gray)
                })
                Button(action: {
                    
                }, label: {
                    Image("Retweet").resizable().frame(width: 16, height: 16)
                        .foregroundColor(.gray)
                })
                Button(action: {
                    
                }, label: {
                    Image("love").resizable().frame(width: 16, height: 16)
                        .foregroundColor(.gray)
                })
                Button(action: {
                    
                }, label: {
                    Image("upload").resizable().renderingMode(.template).frame(width: 16, height: 16)
                        .foregroundColor(.gray)
                })
            })
            .padding(.top,4)
        }
    }
}

struct TweetCellView_Previews: PreviewProvider {
    static var previews: some View {
        TweetCellView(tweet: sampleText)
    }
}

var sampleText = "Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."
