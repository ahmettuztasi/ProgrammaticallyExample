//
//  Edit.swift
//  ProgrammaticallyExample
//
//  Created by admin on 17.04.2020.
//  Copyright © 2020 ahmet. All rights reserved.
//

import Foundation

// MARK: - Edit
class Edit: Codable {
    let href: String?
    
    init(href: String?) {
        self.href = href
    }
}
