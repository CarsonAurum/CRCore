//
//  Created by Carson Rau on 3/21/22.
//

extension Comparable {
    
    /// Clamp the `self` within the given range.
    ///
    /// - Parameter range: The range to which `self` should be clamped.
    /// - Returns: `min` of range if `min >= self`, `max` of range if `max <= self`, `self` otherwise.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    public func clamped(to range: ClosedRange<Self>) -> Self {
        max(range.lowerBound, min(self, range.upperBound))
    }
    
    /// Determine if `self` falls in a given range.
    ///
    /// - Parameter range: The range to check `self` against.
    /// - Returns: `true` if `self` is in the given range, `false` otherwise.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    public func isBetween(_ range: ClosedRange<Self>) -> Bool {
        range ~= self
    }
}
