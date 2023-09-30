//
// Created by Carson Rau on 1/31/22.
//

// MARK: - Properties

extension Bool {
    /// Return 1 if true or 0 if false.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public var int: Int { self ? 1 : 0 }
    
    /// Return "true" if `true` or "false" if `false`.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public var string: String { self ? "true" : "false" }
}
