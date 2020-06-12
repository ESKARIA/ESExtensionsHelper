//
//  ESDouble+Extension.swift
//  ESExtensionsHelper
//
//  Created by Emil Karimov on 12/06/2020.
//  Copyright © 2020 Emil Karimov.
//

import Foundation

public extension Double {

    func integerPart() -> String {
        let result = floor(self).description.dropLast(2).description
        return result
    }

    func fractionalPart(_ withDecimalQty: Int = 2) -> String {
        let valDecimal = self.truncatingRemainder(dividingBy: 1)
        let formatted = String(format: "%.\(withDecimalQty)f", valDecimal)
        return formatted.dropFirst(2).description
    }
    
    func roundWithPlaces(_ places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return Darwin.round(self * divisor) / divisor
    }
}

