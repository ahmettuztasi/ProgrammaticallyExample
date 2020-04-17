//
//  RateLimit.swift
//  ProgrammaticallyExample
//
//  Created by admin on 17.04.2020.
//  Copyright © 2020 ahmet. All rights reserved.
//

import Foundation

// MARK: - RateLimit
class RateLimit: Codable {
    let limit, remaining, reset: Int?
    
    init(limit: Int?, remaining: Int?, reset: Int?) {
        self.limit = limit
        self.remaining = remaining
        self.reset = reset
    }
}
