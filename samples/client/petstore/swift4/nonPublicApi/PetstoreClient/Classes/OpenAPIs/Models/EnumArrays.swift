//
// EnumArrays.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


internal struct EnumArrays: Codable {

    internal enum JustSymbol: String, Codable {
        case greaterThanOrEqualTo = ">="
        case dollar = "$"
    }
    internal enum ArrayEnum: String, Codable {
        case fish = "fish"
        case crab = "crab"
    }
    internal var justSymbol: JustSymbol?
    internal var arrayEnum: [ArrayEnum]?

    internal init(justSymbol: JustSymbol?, arrayEnum: [ArrayEnum]?) {
        self.justSymbol = justSymbol
        self.arrayEnum = arrayEnum
    }

    internal enum CodingKeys: String, CodingKey { 
        case justSymbol = "just_symbol"
        case arrayEnum = "array_enum"
    }

}
