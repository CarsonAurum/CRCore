//
//  Created by Carson Rau on 9/29/23.
//

import Foundation

// MARK: - Instance Funcs
extension Timer {
    
    /// Schedule this timer on a run loop.
    ///
    /// - Parameters:
    ///   - loop: The run loop to execute this timer. If none is provided, `.current` is used.
    ///   - modes: Any optional run loop modes to apply. If none are given, `.default` is used.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    public func start(loop: RunLoop = .current, modes: RunLoop.Mode...) {
        let modes = modes.isEmpty ? [.default] : modes
        modes.forEach { loop.add(self, forMode: $0) }
    }
}

// MARK: - Static Funcs
extension Timer {
    
    /// Create and schedule a timer that executes the given closure once the specified interval has passed.
    ///
    /// - Parameters:
    ///   - interval: The waiting interval before execution of the closure.
    ///   - block: The closure to execute.
    /// - Returns: The timer instance, after creation and scheduling.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @discardableResult
    @inlinable
    public static func after(_ interval: TimeInterval, _ block: @escaping () -> Void) -> Timer {
        let timer = Self.new(after: interval, block)
        timer.start()
        return timer
    }
    
    /// Create and schedule a timer that executes the given closure repeatedly in the specified interval.
    ///
    /// - Parameters:
    ///   - interval: The delay interval between each execution of the clusre.
    ///   - block: The closure to execute.
    /// - Returns: The timer instance, after creation and scheduling.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @discardableResult
    @inlinable
    public static func every(_ interval: TimeInterval, _ block: @escaping () -> Void) -> Timer {
        let timer = Self.new(every: interval, block)
        timer.start()
        return timer
    }
    
    /// Create and schedule a timer that executes the given closure repeatedly in the specified interval.
    /// 
    /// - Note: The closure for this function receives the timer as a parameter. This enables timer cancellation. Please read the
    ///  <doc:Timers> article for more information.
    ///
    /// - Parameters:
    ///   - interval: The delay interval between each execution of the closure.
    ///   - block: The closure to execute.
    /// - Returns: The timer instance, after creation and scheduling.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @discardableResult
    @inlinable
    @nonobjc
    public static func every(_ interval: TimeInterval, _ block: @escaping (Timer) -> Void) -> Timer {
        let timer = Self.new(every: interval, block)
        timer.start()
        return timer
    }
    
    /// Create a timer that executes the given closure once the specified interval has passed.
    ///
    /// - Note: This timer must be scheduled via ``start(loop:modes:)`` to execute.
    ///
    /// - Parameters:
    ///   - interval: The waiting interval before execution of the closure.
    ///   - block: The closure to execute.
    /// - Returns: The timer instance, after creation.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public static func new(after interval: TimeInterval, _ block: @escaping () -> Void) -> Timer {
        CFRunLoopTimerCreateWithHandler(
            kCFAllocatorDefault,
            CFAbsoluteTimeGetCurrent() + interval,
            0,
            0,
            0
        ) { _ in block() }
    }
    
    /// Create a timer that executes the given closure repeatedly in the specified interval.
    ///
    /// - Note: This timer must be scheduled via ``start(loop:modes:)`` to execute.
    ///
    /// - Parameters:
    ///   - interval: The delay interval between each execution of the clusre.
    ///   - block: The closure to execute.
    /// - Returns: The timer instance, after creation.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public static func new(every interval: TimeInterval, _ block: @escaping () -> Void) -> Timer {
        CFRunLoopTimerCreateWithHandler(
            kCFAllocatorDefault,
            CFAbsoluteTimeGetCurrent() + interval,
            interval,
            0,
            0
        ) { _ in block() }
    }
    
    /// Create a timer that executes the given closure repeatedly in the specified interval.
    ///
    /// - Note: This timer must be scheduled via ``start(loop:modes:)`` to execute.
    /// - Note: The closure for this function receives the timer as a parameter. This enables timer cancellation. Please read the
    ///  <doc:Timers> article for more information.
    ///
    /// - Parameters:
    ///   - interval: The delay interval between each execution of the closure.
    ///   - block: The closure to execute.
    /// - Returns: The timer instance, after creation.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    @nonobjc
    public static func new(every interval: TimeInterval, _ block: @escaping (Timer) -> Void) -> Timer {
        var timer: Timer!
        timer = CFRunLoopTimerCreateWithHandler(
            kCFAllocatorDefault,
            CFAbsoluteTimeGetCurrent() + interval,
            interval,
            0,
            0
        ) { _ in block(timer) }
        return timer
    }
}
