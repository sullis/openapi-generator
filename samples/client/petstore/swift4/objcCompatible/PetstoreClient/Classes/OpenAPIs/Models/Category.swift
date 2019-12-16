//
// Category.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Category: Codable {

    public var _id: Int64?
    public var name: String = "default-name"

    public init(_id: Int64?, name: String) {
        self._id = _id
        self.name = name
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
    }

}
