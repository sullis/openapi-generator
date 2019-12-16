//
// Animal.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


internal struct Animal: Codable {

    internal var className: String
    internal var color: String? = "red"

    internal init(className: String, color: String?) {
        self.className = className
        self.color = color
    }

}
