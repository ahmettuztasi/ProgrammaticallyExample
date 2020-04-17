//
//  ParameterBuilder.swift
//  ProgrammaticallyExample
//
//  Created by admin on 17.04.2020.
//  Copyright © 2020 ahmet. All rights reserved.
//

import Foundation

/// Parameter builder class responsible to create http parameter
/// - Note: this class desinged according to builder pattern.
/// - Parameters: token and format
class ParameterBuilder {
    /// it's defined for store parameters to create http parameter in createParameters method
    fileprivate var paramDict: [String:Any] = [:]
    
    ///this method get platform key and set it to paramDict
    /// - Parameters: token -> string type
    /// - Returns: self which means Parameter builder class
    func setToken(_ token: String) -> ParameterBuilder {
        self.paramDict.updateValue(token, forKey: "access-token")
        return self
    }
    ///this method get content type and set it to paramDict
    /// - Parameters: format -> string type
    /// - Returns: self which means Parameter builder class
    func setFormat(_ format: String) -> ParameterBuilder {
        self.paramDict.updateValue(format, forKey: "_format")
        return self
    }
    ///this method returning a parameter dictionary which is seted before by developers.
    /// - Returns: paramDict -> dictionary type
    func createParameters() -> [String:Any] {
        return paramDict
    }
}
