//
//  TweetCellView.swift
//  Twitter-CloneSwiftUI
//
//  Created by Aditya Ramadhan on 10/11/22.
//

import SwiftUI
import Kingfisher

struct TweetCellView: View {
    
    @ObservedObject var viewModel: TweetCellViewModel
    
    init(viewModel: TweetCellViewModel) {
        self.viewModel = viewModel
    }
    
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
                        Text("\(self.viewModel.tweet.username) ")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    +
                    Text("@\(self.viewModel.tweet.username)")
                        .foregroundColor(.gray)
                    )
                    Text(self.viewModel.tweet.text)
                        .frame(maxHeight: 100, alignment: .top)
//
                    if let imageId = viewModel.tweet.id {
                        if viewModel.tweet.image == "true"{
                            GeometryReader { proxy in
                                KFImage(URL(string: "http://localhost:3000/tweets/\(imageId)/image"))
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: proxy.frame(in: .global).width, height: 250)
                                    .cornerRadius(15)
                            }.frame(height: 250)
                        
                            
                            
                            
                                
                        }
                    }
                })
                Spacer()
                
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



var sampleText = "Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."
