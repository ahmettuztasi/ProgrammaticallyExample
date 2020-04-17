//
//  PhotosModel.swift
//  ProgrammaticallyExample
//
//  Created by admin on 17.04.2020.
//  Copyright © 2020 ahmet. All rights reserved.
//

import Foundation

// MARK: - PhotosModel
class PhotosModel: Codable {
    let meta: Meta?
    let result: [Result]?
    
    enum CodingKeys: String, CodingKey {
        case meta = "_meta"
        case result
    }
    
    init(meta: Meta?, result: [Result]?) {
        self.meta = meta
        self.result = result
    }
}
