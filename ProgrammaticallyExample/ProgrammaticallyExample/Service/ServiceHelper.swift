//
//  ServiceHelper.swift
//  ProgrammaticallyExample
//
//  Created by admin on 17.04.2020.
//  Copyright © 2020 ahmet. All rights reserved.
//

import Foundation

/// this class used for create, define method for service
class ServiceHelper {
    
    ///this method gives ready parameter. It use parameter builder class.
    /// - returns: http parameter -> dictionary type
    func getParameters() -> [String:Any] {
        return ParameterBuilder()
            .setToken("4JjfefTPmvYOIruM_03wNrvCQvTNCddHcqUU")
            .setFormat("json")
            .createParameters()
    }
}
/// this enum used for return data or error when get response from service. It used in closure(callback)
/// - success returning value
/// - failure returning error
public enum Response<Value> {
    case success(Value)
    case failure(Error)
}
