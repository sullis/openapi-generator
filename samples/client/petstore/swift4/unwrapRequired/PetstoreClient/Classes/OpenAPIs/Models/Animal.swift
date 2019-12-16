//
// Animal.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Animal: Codable {

    public var className: String?
    public var color: String? = "red"

    public init(className: String?, color: String?) {
        self.className = className
        self.color = color
    }

}
