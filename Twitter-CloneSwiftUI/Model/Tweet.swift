//
//  Tweet.swift
//  Twitter-CloneSwiftUI
//
//  Created by Aditya Ramadhan on 20/11/22.
//

import SwiftUI

struct Tweet: Identifiable, Decodable {
    let _id: String
    var id: String {
        return _id
    }
    let text: String
    let userId: String
    let username: String
    let user: String
    let image: String?
}
