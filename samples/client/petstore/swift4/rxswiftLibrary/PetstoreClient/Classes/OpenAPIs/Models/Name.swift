//
// Name.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Model for testing model name same as property name */
public struct Name: Codable {

    public var name: Int
    public var snakeCase: Int?
    public var property: String?
    public var _123number: Int?

    public init(name: Int, snakeCase: Int?, property: String?, _123number: Int?) {
        self.name = name
        self.snakeCase = snakeCase
        self.property = property
        self._123number = _123number
    }

    public enum CodingKeys: String, CodingKey { 
        case name
        case snakeCase = "snake_case"
        case property
        case _123number = "123Number"
    }

}
