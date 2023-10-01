//
// Created by Carson Rau on 1/31/22.
//

extension Optional {
    
    /// Create a new optional value wrapping the given value if the condition is true, otherwise `nil`.
    ///
    /// - Parameters:
    ///   - wrapped: The wrapped value to store in the new optional if the condition is true.
    ///   - condition: The condition to use when determining if the closure should be evaluated.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public init(_ wrapped: @autoclosure () -> Wrapped, if condition: Bool) {
        self = condition ? wrapped() : nil
    }
    
    /// Create a new optional value wrapping the given optional value if the condition is true, otherwise `nil`.
    ///
    /// - Parameters:
    ///   - wrapped: The optional wrapped value to store in the new optional if the condition is true.
    ///   - condition: The condition to use when determining if the closure should be evaluated.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public init(_ wrapped: @autoclosure () -> Wrapped?, if condition: Bool) {
        self = condition ? wrapped() : nil
    }
    
    /// Create a new optional value wrapping the given value if the condition is true, otherwise `nil`.
    ///
    /// - Parameters:
    ///   - wrapped: The wrapped value to store in the new optional if the condition is true.
    ///   - condition: The condition to use when determining if the closure should be evaluated.
    /// - Throws: Any errors from the `wrapped` closure will be rethrown.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public init(_ wrapped: @autoclosure () throws -> Wrapped, if condition: Bool) rethrows {
        self = condition ? try wrapped() : nil
    }
    
    /// Create a new optional value wrapping the given optional value if the condition is true, otherwise `nil`.
    ///
    /// - Parameters:
    ///   - wrapped: The optional wrapped value to store in the new optional if the condition is true.
    ///   - condition: The condition to use when determining if the closure should be evaluated.
    /// - Throws: Any errors from the `wrapped` closure will be rethrown.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public init(_ wrapped: @autoclosure () throws -> Wrapped?, if condition: Bool) rethrows {
        self = condition ? try wrapped() : nil
    }
    
    /// Create a new optional value wrapping the given value if the condition is true, otherwise `nil`.
    ///
    /// - Parameters:
    ///   - wrapped: The wrapped value to store in the new optional if the condition is true.
    ///   - condition: The condition to use when determining if the closure should be evaluated.
    @available(iOS 13.0.0, macOS 10.15.0, watchOS 6.0, tvOS 13.0, xrOS 1.0, *)
    @inlinable
    public init(_ wrapped: @autoclosure () async -> Wrapped, if condition: Bool) async {
        self = condition ? await wrapped() : nil
    }
    
    /// Create a new optional value wrapping the given optional value if the condition is true, otherwise `nil`.
    ///
    /// - Parameters:
    ///   - wrapped: The optional wrapped value to store in the new optional if the condition is true.
    ///   - condition: The condition to use when determining if the closure should be evaluated.
    @available(iOS 13.0.0, macOS 10.15.0, watchOS 6.0, tvOS 13.0, xrOS 1.0, *)
    @inlinable
    public init(_ wrapped: @autoclosure () async -> Wrapped?, if condition: Bool) async {
        self = condition ? await wrapped() : nil
    }
    
    /// Create a new optional value wrapping the given value if the condition is true, otherwise `nil`.
    ///
    /// - Parameters:
    ///   - wrapped: The wrapped value to store in the new optional if the condition is true.
    ///   - condition: The condition to use when determining if the closure should be evaluated.
    /// - Throws: Any errors from the `wrapped` closure will be rethrown.
    @available(iOS 13.0.0, macOS 10.15.0, watchOS 6.0, tvOS 13.0, xrOS 1.0, *)
    @inlinable
    public init(_ wrapped: @autoclosure () async throws -> Wrapped, if condition: Bool) async rethrows {
        self = condition ? try await wrapped() : nil
    }
    
    /// Create a new optional value wrapping the given optional value if the condition is true, otherwise `nil`.
    ///
    /// - Parameters:
    ///   - wrapped: The optional wrapped value to store in the new optional if the condition is true.
    ///   - condition: The condition to use when determining if the closure should be evaluated.
    /// - Throws: Any errors from the `wrapped` closure will be rethrown.
    @available(iOS 13.0.0, macOS 10.15.0, watchOS 6.0, tvOS 13.0, xrOS 1.0, *)
    @inlinable
    public init(_ wrapped: @autoclosure () async throws -> Wrapped?, if condition: Bool) async rethrows {
        self = condition ? try await wrapped() : nil
    }
}
