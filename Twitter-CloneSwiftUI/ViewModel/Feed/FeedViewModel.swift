//
//  FeedViewModel.swift
//  Twitter-CloneSwiftUI
//
//  Created by Aditya Ramadhan on 23/11/22.
//

import Foundation

class FeedViewModel: ObservableObject {
    
    @Published var tweets = [Tweet]()
    
    
    init() {
        fetchTweets()
    }
    
    func fetchTweets() {
        RequestServices.requestDomain = "http://localhost:3000/tweets"
        RequestServices.fetchTweets { res in
            switch res {
                case .success(let data):
                    guard let tweets = try? JSONDecoder().decode([Tweet].self, from: data as! Data) else {return}
                    DispatchQueue.main.async {
                        self.tweets = tweets
                    }
                case .failure(let err):
                print(err.localizedDescription  )
            }
        }
    }
    
    
}
