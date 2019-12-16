//
// Capitalization.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


internal struct Capitalization: Codable {

    internal var smallCamel: String?
    internal var capitalCamel: String?
    internal var smallSnake: String?
    internal var capitalSnake: String?
    internal var sCAETHFlowPoints: String?
    /** Name of the pet  */
    internal var ATT_NAME: String?

    internal init(smallCamel: String?, capitalCamel: String?, smallSnake: String?, capitalSnake: String?, sCAETHFlowPoints: String?, ATT_NAME: String?) {
        self.smallCamel = smallCamel
        self.capitalCamel = capitalCamel
        self.smallSnake = smallSnake
        self.capitalSnake = capitalSnake
        self.sCAETHFlowPoints = sCAETHFlowPoints
        self.ATT_NAME = ATT_NAME
    }

    internal enum CodingKeys: String, CodingKey { 
        case smallCamel
        case capitalCamel = "CapitalCamel"
        case smallSnake = "small_Snake"
        case capitalSnake = "Capital_Snake"
        case sCAETHFlowPoints = "SCA_ETH_Flow_Points"
        case ATT_NAME
    }

}
