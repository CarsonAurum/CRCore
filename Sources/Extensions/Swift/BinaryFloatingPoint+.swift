//
// Created by Carson Rau on 1/27/22.
//

import Foundation

extension BinaryFloatingPoint {
    
    /// Clamp `self` between the given numbers.
    /// - Parameters:
    ///    - lower: The lower bound.
    ///    - upper: The upper bound.
    /// - Returns: `self` if in range, `lower` if `self` is less than lower, and `upper` if `self` is greater
    ///   than `upper`.
    /// - SeeAlso: Integer values share a similar ``Swift/BinaryInteger/clamp(lower:upper:)`` extension.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    public func clamp(lower: Self, upper: Self) -> Self {
        if self < lower {
            return lower
        } else if self > upper {
            return upper
        } else {
            return self
        }
    }
    
    /// Returns a rounded value with the specified number of decimal places using the given rounded rule.
    ///
    /// If `numberOfDecimalPlaces` is negative, `0` will be used.
    /// - Parameters:
    ///   - numberOfDecimalPlaces: The expected number of decimal places.
    ///   - rule: The rounding rule to use.
    /// - Returns: The rounded value.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    public func rounded(to places: Int, rule: FloatingPointRoundingRule) -> Self {
        let factor = Self(pow(10.0, Double(max(0, places))))
        return (self * factor) .rounded(rule) / factor
    }
}
