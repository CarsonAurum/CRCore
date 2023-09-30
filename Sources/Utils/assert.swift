//
// Created by Carson Rau on 3/6/22.
//

// MARK: - Sync

/// Assert by closure
///
/// - Parameter f: A closure to evaluate for assertion.
/// - Postcondition: Execution not continued if the asserted closure is evaluated false.
@available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
public func assert(_ f: @escaping () -> Bool) {
    assert(f())
}

/// Assert by throwing-closure
///
/// - Parameter f: A throwing closure to evaluate for assertion.
/// - Postcondition: Execution not continued if the asserted closure is evaluated false, or an error is thrown.
@available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
public func assert(_ f: @escaping () throws -> Bool) {
    do {
        let res = try f()
        assert(res)
    } catch {
        assert(false)
    }
}

// MARK: - Async

/// Assert by async-closure
///
/// - Parameter f: An async closure to evaluate for assertion.
/// - Postcondition: Execution not continued if the asserted closure is evaluated false, after waiting.
@available(iOS 13.0.0, macOS 10.15.0, watchOS 6.0, tvOS 13.0, xrOS 1.0, *)
public func assert(_ f: @escaping () async -> Bool) async {
    let res = await f()
    assert(res)
}

/// Assert by async-throwing-closure
///
/// - Parameter f: An async throwing closure to evaluate for assertion.
/// - Postcondition: Execution not continued if the asserted closure is evaluated false, or an error is thrown, after waiting.
@available(iOS 13.0.0, macOS 10.15.0, watchOS 6.0, tvOS 13.0, xrOS 1.0, *)
public func assert(_ f: @escaping () async throws -> Bool) async {
    do {
        let res = try await f()
        assert(res)
    } catch {
        assert(false)
    }
}
