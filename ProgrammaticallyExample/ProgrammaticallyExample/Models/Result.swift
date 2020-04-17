//
//  Result.swift
//  ProgrammaticallyExample
//
//  Created by admin on 17.04.2020.
//  Copyright © 2020 ahmet. All rights reserved.
//

import Foundation

// MARK: - Result
class Result: Codable {
    let id, albumID, title: String?
    let url, thumbnail: String?
    let links: Links?
    
    enum CodingKeys: String, CodingKey {
        case id
        case albumID = "album_id"
        case title, url, thumbnail
        case links = "_links"
    }
    
    init(id: String?, albumID: String?, title: String?, url: String?, thumbnail: String?, links: Links?) {
        self.id = id
        self.albumID = albumID
        self.title = title
        self.url = url
        self.thumbnail = thumbnail
        self.links = links
    }
}
