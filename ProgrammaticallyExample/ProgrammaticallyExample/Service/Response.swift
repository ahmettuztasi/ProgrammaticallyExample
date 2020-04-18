//
//  Response.swift
//  ProgrammaticallyExample
//
//  Created by admin on 18.04.2020.
//  Copyright © 2020 ahmet. All rights reserved.
//

import Foundation

/// this enum used for return data or error when get response from service. It used in closure(callback)
/// - success returning value
/// - failure returning error
public enum Response<Value> {
    case success(Value)
    case failure(Error)
}
