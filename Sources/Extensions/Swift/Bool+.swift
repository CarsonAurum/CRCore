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

// MARK: - Funcs

extension Bool {
    
    // MARK: OR
    
    /// Perform the given closure if `self` is false, otherwise `nil`.
    ///
    /// - Parameter value: The closure to evaluate if `self` is `false`. The value will be returns.
    /// - Returns: The value from the closure if `false`, `nil` otherwise.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public func or<A>(_ value: @autoclosure () -> A) -> A? {
        !self ? value() : nil
    }
    
    /// Perform the given (optional-returning) closure if `self` is false, otherwise `nil`.
    ///
    /// - Parameter value: The (optional-returning) closure to evaluate if `self` is `false`. The value will be returns.
    /// - Returns: The value from the closure if `false`, `nil` otherwise.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public func or<A>(_ value: @autoclosure () -> A?) -> A? {
        !self ? value() : nil
    }
    
    /// Perform the given throwing-closure if `self` is false, otherwise `nil`.
    ///
    /// - Parameter value: The throwing closure to evaluate if `self` is `false`. The value will be returns.
    /// - Returns: The value from the closure if `false`, `nil` otherwise.
    /// - Throws: Any errors from the closure.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public func or<A>(_ value: @autoclosure () throws -> A) rethrows -> A? {
        !self ? try value() : nil
    }
    
    /// Perform the given (optional-returning) throwing-closure if `self` is false, otherwise `nil`.
    ///
    /// - Parameter value: The (optional-returning) throwing closure to evaluate if `self` is `false`. The value will be returns.
    /// - Returns: The value from the closure if `false`, `nil` otherwise.
    /// - Throws: Any errors from the closure.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public func or<A>(_ value: @autoclosure () throws -> A?) rethrows -> A? {
        !self ? try value() : nil
    }
    
    /// Perform the given async-closure if `self` is false, otherwise `nil`.
    ///
    /// - Parameter value: The async-closure to evaluate if `self` is `false`. The value will be returns.
    /// - Returns: The value from the closure if `false`, `nil` otherwise.
    @available(iOS 13.0.0, macOS 10.15.0, watchOS 6.0, tvOS 13.0, xrOS 1.0, *)
    @inlinable
    public func or<A>(_ value: @autoclosure () async -> A) async -> A? {
        !self ? await value() : nil
    }
    
    /// Perform the given (optional-returning) async-closure if `self` is false, otherwise `nil`.
    ///
    /// - Parameter value: The (optional-returning) async-closure to evaluate if `self` is `false`. The value will be returns.
    /// - Returns: The value from the closure if `false`, `nil` otherwise.
    @available(iOS 13.0.0, macOS 10.15.0, watchOS 6.0, tvOS 13.0, xrOS 1.0, *)
    @inlinable
    public func or<A>(_ value: @autoclosure () async -> A?) async -> A? {
        !self ? await value() : nil
    }
    
    /// Perform the given async-throwing-closure if `self` is false, otherwise `nil`.
    ///
    /// - Parameter value: The async-throwing closure to evaluate if `self` is `false`. The value will be returns.
    /// - Returns: The value from the closure if `false`, `nil` otherwise.
    /// - Throws: Any errors from the closure.
    @available(iOS 13.0.0, macOS 10.15.0, watchOS 6.0, tvOS 13.0, xrOS 1.0, *)
    @inlinable
    public func or<A>(_ value: @autoclosure () async throws -> A) async rethrows -> A? {
        !self ? try await value() : nil
    }
    
    /// Perform the given (optional-returning) async-throwing-closure if `self` is false, otherwise `nil`.
    ///
    /// - Parameter value: The (optional-returning) async-throwing closure to evaluate if `self` is `false`. The value will be returns.
    /// - Returns: The value from the closure if `false`, `nil` otherwise.
    /// - Throws: Any errors from the closure.
    @available(iOS 13.0.0, macOS 10.15.0, watchOS 6.0, tvOS 13.0, xrOS 1.0, *)
    @inlinable
    public func or<A>(_ value: @autoclosure () async throws -> A?) async rethrows -> A? {
        !self ? try await value() : nil
    }
    
    // MARK: THEN
    
    /// Perform the given closure if `self` is true, otherwise `nil`.
    ///
    /// - Parameter value: The closure to evaluate if `self` is `true`. The value will be returned.
    /// - Returns: The value from the closure if `true`, `nil` otherwise.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public func then<A>(_ value: @autoclosure () -> A) -> A? {
        self ? value() : nil
    }
    
    /// Perform the given (optional-returning) closure if `self` is true, otherwise `nil`.
    ///
    /// - Parameter value: The (optional-returning) closure to evaluate if `self` is `true`. The value will be returned.
    /// - Returns: The value from the closure if `true`, `nil` otherwise.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public func then<A>(_ value: @autoclosure () -> A?) -> A? {
        self ? value() : nil
    }

    /// Perform the given throwing-closure if `self` is true, otherwise `nil`.
    ///
    /// - Parameter value: The closure to evaluate if `self` is `true`. The value will be returned.
    /// - Returns: The value from the closure if `true`, `nil` otherwise.
    /// - Throws: Any errors from the closure.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public func then<A>(_ value: @autoclosure () throws -> A) rethrows -> A? {
        self ? try value() : nil
    }
    
    /// Perform the given (optional-returning) throwing-closure if `self` is true, otherwise `nil`.
    ///
    /// - Parameter value: The (optional-returning) closure to evaluate if `self` is `true`. The value will be returned.
    /// - Returns: The value from the closure if `true`, `nil` otherwise.
    /// - Throws: Any errors from the closure.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public func then<A>(_ value: @autoclosure () throws -> A?) rethrows -> A? {
        self ? try value() : nil
    }
    
    /// Perform the given async-closure if `self` is true, otherwise `nil`.
    ///
    /// - Parameter value: The async-closure to evaluate if `self` is `true`. The value will be returned.
    /// - Returns: The value from the closure if `true`, `nil` otherwise.
    @available(iOS 13.0.0, macOS 10.15.0, watchOS 6.0, tvOS 13.0, xrOS 1.0, *)
    @inlinable
    public func then<A>(_ value: @autoclosure () async -> A) async -> A? {
        self ? await value() : nil
    }
    
    /// Perform the given (optional-returning) async-closure if `self` is true, otherwise `nil`.
    ///
    /// - Parameter value: The (optional-returning) async-closure to evaluate if `self` is `true`. The value will be returned.
    /// - Returns: The value from the closure if `true`, `nil` otherwise.
    @available(iOS 13.0.0, macOS 10.15.0, watchOS 6.0, tvOS 13.0, xrOS 1.0, *)
    @inlinable
    public func then<A>(_ value: @autoclosure () async -> A?) async -> A? {
        self ? await value() : nil
    }
    
    /// Perform the given async-throwing-closure if `self` is true, otherwise `nil`.
    ///
    /// - Parameter value: The closure to evaluate if `self` is `true`. The value will be returned.
    /// - Returns: The value from the closure if `true`, `nil` otherwise.
    /// - Throws: Any errors from the closure.
    @available(iOS 13.0.0, macOS 10.15.0, watchOS 6.0, tvOS 13.0, xrOS 1.0, *)
    @inlinable
    public func then<A>(_ value: @autoclosure () async throws -> A) async rethrows -> A? {
        self ? try await value() : nil
    }
    
    /// Perform the given (optional-returning) async-throwing-closure if `self` is true, otherwise `nil`.
    ///
    /// - Parameter value: The (optional-returning) closure to evaluate if `self` is `true`. The value will be returned.
    /// - Returns: The value from the closure if `true`, `nil` otherwise.
    /// - Throws: Any errors from the closure.
    @available(iOS 13.0.0, macOS 10.15.0, watchOS 6.0, tvOS 13.0, xrOS 1.0, *)
    @inlinable
    public func then<A>(_ value: @autoclosure () async throws -> A?) async rethrows -> A? {
        self ? try await value() : nil
    }
}
