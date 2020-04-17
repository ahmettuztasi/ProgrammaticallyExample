//
//  HttpLink.swift
//  ProgrammaticallyExample
//
//  Created by admin on 17.04.2020.
//  Copyright © 2020 ahmet. All rights reserved.
//


import Foundation

/// This enum providing all service connection links.
/// - Usage Example: HttpLink.photos.value
/// - Returns: a string type of link
public enum HttpLink: String {
    /// mainURL is most important case of this enum because it stored main link.
    case mainURL = "https://gorest.co.in/public-api/"
    
    // Photos Url
    case photos = "photos"
    
    /// this variable returning full link when it is get called
    var UrlValue: String {
        return HttpLink.mainURL.rawValue + self.rawValue
    }
}
