//
//  Links.swift
//  ProgrammaticallyExample
//
//  Created by admin on 17.04.2020.
//  Copyright © 2020 ahmet. All rights reserved.
//

import Foundation

// MARK: - Links
class Links: Codable {
    let linksSelf, edit: Edit?
    
    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
        case edit
    }
    
    init(linksSelf: Edit?, edit: Edit?) {
        self.linksSelf = linksSelf
        self.edit = edit
    }
}
