//
//  User.swift
//  Twitter-CloneSwiftUI
//
//  Created by Aditya Ramadhan on 20/11/22.
//

import SwiftUI
import Foundation

struct ApiResponse: Decodable {
    var user: User
    var token: String
}

struct User: Decodable, Identifiable {
    var _id: String
    var id: String {
        return _id
    }
    let username: String
    let name: String
    let email: String
    var location: String?
    var bio: String?
    var website: String?
    var avatarExists: String?
    var followers: [String]
    var followings: [String]
}
