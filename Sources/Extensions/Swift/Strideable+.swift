//
// Created by Carson Rau on 3/2/22.
//

extension Strideable {
    /// Mutate this strideable value by the given stride.
    ///
    /// - Parameter distance: The distance to advance this value by.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public mutating func advance(by distance: Stride) {
        self = advanced(by: distance)
    }
    /// Mutate this strideable value by one.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public mutating func advance() {
        advance(by: 1)
    }
    /// Access the value strided by -1.
    /// - Returns: The strided value.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public func predecessor() -> Self {
        advanced(by: -1)
    }
    /// Access the value strided by +1.
    /// - Returns: The strided value.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public func successor() -> Self {
        advanced(by: 1)
    }
}
