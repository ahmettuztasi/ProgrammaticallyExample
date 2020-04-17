//
//  Meta.swift
//  ProgrammaticallyExample
//
//  Created by admin on 17.04.2020.
//  Copyright © 2020 ahmet. All rights reserved.
//

import Foundation

// MARK: - Meta
class Meta: Codable {
    let success: Bool?
    let code: Int?
    let message: String?
    let totalCount, pageCount, currentPage, perPage: Int?
    let rateLimit: RateLimit?
    
    init(success: Bool?, code: Int?, message: String?, totalCount: Int?, pageCount: Int?, currentPage: Int?, perPage: Int?, rateLimit: RateLimit?) {
        self.success = success
        self.code = code
        self.message = message
        self.totalCount = totalCount
        self.pageCount = pageCount
        self.currentPage = currentPage
        self.perPage = perPage
        self.rateLimit = rateLimit
    }
}
